# ============================================================
# Constraints SDC - Vending Machine
# Top-level: vending_top
# Clock inicial: 20 ns = 50 MHz
# ============================================================

# Clock principal
create_clock -name clk -period 8.000 [get_ports clk]

# Incerteza do clock
set_clock_uncertainty -setup 0.500 [get_clocks clk]
set_clock_uncertainty -hold 0.000 [get_clocks clk]

# Entradas sem incluir o clock
set INPUT_PORTS [get_ports {rst confirm cancel coin_in[*] sel_item[*]}]

# Saidas do top-level
set OUTPUT_PORTS [all_outputs]

# Atrasos de entrada
set_input_delay 3.000 -clock clk $INPUT_PORTS

# Atrasos de saida
set_output_delay 3.000 -clock clk $OUTPUT_PORTS

# Modelo da celula que dirige as entradas
set_driving_cell -lib_cell NBUFFX2_RVT $INPUT_PORTS

# Carga nas saidas
set_load 0.050 $OUTPUT_PORTS
