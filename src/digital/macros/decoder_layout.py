# ---------------------------------------------------------------------
#  SG13G2 macro – custom polygons + import of sg13g2_inv_1 from library
# ---------------------------------------------------------------------
import pya

# === Parameters ===

input_word_size = 5

# m1_wire_size = 0.16 # minimal
m1_wire_size = 0.29
m1_wire_spacing = 0.18 # minimal
m2_wire_size = 0.20 # minimal
m2_wire_spacing = 0.21 # minimal
m3_wire_size = 0.20 # minimal
m3_wire_spacing = 0.21 # minimal

output_one_hot_size = pow(2, input_word_size)

# ==================

app = pya.Application.instance()
layout = app.main_window().current_view().active_cellview().layout()
# top = layout.top_cell()
top = layout.cell("TOP")
dbu = layout.dbu # 1 nm with the open PDK

L_ACTIV = layout.layer(pya.LayerInfo(1,  0))    # Activ:drawing
L_PSD = layout.layer(pya.LayerInfo(14, 0))      # pSD:drawing
L_CONT = layout.layer(pya.LayerInfo(6,  0))     # Cont:drawing
L_M1 = layout.layer(pya.LayerInfo(8,  0))       # Metal1:drawing
L_M1_PIN = layout.layer(pya.LayerInfo(8,  2))   # Metal1:pin
L_V1 = layout.layer(pya.LayerInfo(19,  0))       # Via1:drawing
L_M2 = layout.layer(pya.LayerInfo(10,  0))      # Metal1:drawing

def um2dbu(v_um: float) -> int:
    return int(v_um / dbu)

def add_box(p_top_cell, p_layer, p_x1_um, p_y1_um, p_x2_um, p_y2_um):
    box = pya.Box(um2dbu(p_x1_um), um2dbu(p_y1_um), um2dbu(p_x2_um), um2dbu(p_y2_um))
    p_top_cell.shapes(p_layer).insert(box)

def add_via(p_top_cell, p_b_layer, p_t_layer, p_via_layer, p_hcount, p_vcount, p_x, p_y):
    if (p_hcount > 2 or p_vcount > 2):
        raise RuntimeError("Max via stack is 2x2")
    
    via_size = (0.19, 0.19)
    via_spacing = 0.22
    via_margin = 0.05

    metal_width = 2*via_margin + p_hcount*via_size[0] + (p_hcount - 1)*via_spacing
    metal_height = 2*via_margin + p_vcount*via_size[1] + (p_vcount - 1)*via_spacing

    x1, y1 = p_x - 0.5*metal_width, p_y - 0.5*metal_height
    x2, y2 = p_x + 0.5*metal_width, p_y + 0.5*metal_height
    metal_box = pya.Box(um2dbu(x1), um2dbu(y1), um2dbu(x2), um2dbu(y2))
    p_top_cell.shapes(p_b_layer).insert(metal_box)
    p_top_cell.shapes(p_t_layer).insert(metal_box)
    
    if (p_hcount % 2 != 0):
        via_x1_orig = p_x - 0.5*via_size[0] - 0.5*(p_hcount-1)*(0.5*via_spacing + via_size[0])
    else:
        via_x1_orig = p_x - 0.5*p_hcount*(0.5*via_spacing + via_size[0])

    if (p_vcount % 2 != 0):
        via_y1_orig = p_y - 0.5*via_size[1] + 0.5*(p_vcount-1)*(0.5*via_spacing)
    else:
        via_y1_orig = p_y + (0.5*p_vcount)*(0.5*via_spacing) 
    
    via_x2_orig, via_y2_orig = via_x1_orig + via_size[0], via_y1_orig + via_size[1]

    hv_x1, hv_y1 = via_x1_orig, via_y1_orig
    hv_x2, hv_y2 = via_x2_orig, via_y2_orig
    for v in range(0, p_hcount):
        via_box = pya.Box(um2dbu(hv_x1), um2dbu(hv_y1), um2dbu(hv_x2), um2dbu(hv_y2))
        p_top_cell.shapes(p_via_layer).insert(via_box)
    
        vv_x1, vv_y1 = hv_x1, hv_y1 - (via_size[1] + via_spacing)
        vv_x2, vv_y2 = hv_x2, hv_y2 - (via_size[1] + via_spacing)
        for v in range(0, p_vcount-1): # Already placed one
            via_box = pya.Box(um2dbu(vv_x1), um2dbu(vv_y1), um2dbu(vv_x2), um2dbu(vv_y2))
            p_top_cell.shapes(p_via_layer).insert(via_box)
            vv_y1 -= (via_size[1] + via_spacing)
            vv_y2 -= (via_size[1] + via_spacing)

        hv_x1 += via_size[0] + via_spacing
        hv_x2 += via_size[0] + via_spacing

def insert_cell(p_top_cell, p_new_cell, p_x_um, p_y_um):
    trans = pya.Trans(pya.Vector(um2dbu(p_x_um), um2dbu(p_y_um)))
    p_top_cell.insert(pya.CellInstArray(p_new_cell.cell_index(), trans))

def insert_wire_with_via(p_b_metal, p_t_metal, p_via_layer, p_b_wire_size, p_t_wire_size, p_x1, p_y1, p_x2, p_y2):
    add_box(top, p_t_metal, p_x1, p_y1, p_x2, p_y2)
    cell_via_coords = (p_x1 + 0.5*p_t_wire_size, p_y1)
    wire_via_coords = (p_x2 - 0.5*p_t_wire_size, p_y2 + 0.5*p_b_wire_size)
    add_via(top, p_b_metal, p_t_metal, p_via_layer, 1, 1, cell_via_coords[0], cell_via_coords[1])
    add_via(top, p_b_metal, p_t_metal, p_via_layer, 1, 1, wire_via_coords[0], wire_via_coords[1])

stdcell_gds = "/opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/gds/sg13g2_stdcell.gds"
opt = pya.LoadLayoutOptions()
opt.keep_cells = True # merge instead of replacing
opt.dbu = dbu # force same database unit (usually 0.001 µm)
layout.read(stdcell_gds, opt) # cells are now part of this layout

inv_cell = layout.cell("sg13g2_inv_1")
if inv_cell is None:
    raise RuntimeError("Cell 'sg13g2_inv_1' not found in the library GDS.")

and2_cell = layout.cell("sg13g2_and2_1")
if and2_cell is None:
    raise RuntimeError("Cell 'sg13g2_and2_1' not found in the library GDS.")

and4_cell = layout.cell("sg13g2_and4_1")
if and4_cell is None:
    raise RuntimeError("Cell 'sg13g2_and4_1' not found in the library GDS.")

inv_cell_info = {
    "width": 1.44,
    "height": 4.22,
    "origin_vdd": (0.72, 3.78),
    "size_vdd": (1.44, 0.44),
    "origin_vss": (0.72, 0.0),
    "size_vss": (1.44, 0.44),
    "origin_inputs": (0.47, 1.76),
    "size_inputs": (0.69, 0.48),
    "origin_outputs": (1.16, 1.885),
    "size_outputs": (0.23, 2.58),
}

and2_cell_info = {
    "width": 2.4,
    "height": 4.22,
    "origin_inputs": [(0.4425, 0.6825), (0.975, 1.6525)],
    "size_inputs": [(0.675, 0.555), (0.39, 0.435)],
    "origin_outputs": (2.025, 2.625),
    "size_outputs": (0.5, 0.97),
}

and4_cell_info = {
    "width": 3.84,
    "height": 4.22,
    "origin_inputs": [(0.8875, 1.68), (1.41, 1.3425), (1.96, 1.335), (2.49, 1.785)],
    "size_inputs": [(0.365, 0.66), (0.31, 1.365), (0.33, 1.35), (0.35, 0.43)],
    "origin_outputs": (3.445, 2.595),
    "size_outputs": (0.48, 1.05),
}

x0, y0 = 0, 0

# Origins definitions
inv_cells_origin = (x0 + 0.24, y0)
wires_origin = (x0, -(inv_cell_info["origin_vss"][1] + 0.5*inv_cell_info["size_vss"][1] + m1_wire_spacing))

# Add input and inverted input m1 wires
x1, y1 = wires_origin 
x2, y2 = 208, y1 - m1_wire_size # TODO: cambiar el x max
for w in range(0, 2*input_word_size):
    add_box(top, L_M1, x1, y1, x2, y2)
    # Add next wire below
    y1 -= (m1_wire_size + m1_wire_spacing)
    y2 -= (m1_wire_size + m1_wire_spacing)

# Add inv cells above input wires, and m2 wires to connect them
x, y = inv_cells_origin
in_x1, in_y1 = x + inv_cell_info["origin_inputs"][0] - 0.5*m2_wire_size, y + inv_cell_info["origin_inputs"][1]
in_x2, in_y2 = in_x1 + m2_wire_size, wires_origin[1] - m1_wire_size
out_x1, out_y1 = x + inv_cell_info["origin_outputs"][0] - 0.5*m2_wire_size, y + inv_cell_info["origin_outputs"][1]
out_x2, out_y2 = out_x1 + m2_wire_size, wires_origin[1] - (input_word_size + 1)*m1_wire_size - input_word_size*m1_wire_spacing
for w in range(0, input_word_size):
    insert_cell(top, inv_cell, x, y)
    # Input wire with vias
    insert_wire_with_via(L_M1, L_M2, L_V1, m1_wire_size, m2_wire_size, in_x1, in_y1, in_x2, in_y2)
    # Output wire with vias
    insert_wire_with_via(L_M1, L_M2, L_V1, m1_wire_size, m2_wire_size, out_x1, out_y1, out_x2, out_y2)
    # Add next cell to the right
    x += inv_cell_info["width"]
    in_x1 += inv_cell_info["width"]
    in_x2 += inv_cell_info["width"]
    in_y2 -= (m1_wire_spacing + m1_wire_size)
    out_x1 += inv_cell_info["width"]
    out_x2 += inv_cell_info["width"]
    out_y2 -= (m1_wire_spacing + m1_wire_size)

inv_cells_end = (x, y)

x, y = inv_cells_end
for a in range(0, output_one_hot_size):
    input_word = format(a, f'0{input_word_size}b')
    # print(input_word)

    # Add and4 cell
    insert_cell(top, and4_cell, x, y)
    # Add inpout wires
    for i in range(0,len(and4_cell_info["origin_inputs"])):
        cx = x + and4_cell_info["origin_inputs"][i][0]
        cy = y + and4_cell_info["origin_inputs"][i][1]
        increment = 0.0 if (input_word[i] == '1') else (m1_wire_size + m1_wire_spacing)*input_word_size
        position = (m1_wire_size + m1_wire_spacing)*i + increment
        insert_wire_with_via(L_M1, L_M2, L_V1, m1_wire_size, m2_wire_size,
                             cx,
                             cy,
                             cx + m2_wire_size,
                             wires_origin[1] - m1_wire_size - position
                             )

    # Add output wire

    x += and4_cell_info["width"]
    
    # Add and2 cell
    insert_cell(top, and2_cell, x, y)
    # Add inpout wires

    # Add output wire

    x += and2_cell_info["width"]


# layout.write("decoder_top.gds")
print("Layout updated")
