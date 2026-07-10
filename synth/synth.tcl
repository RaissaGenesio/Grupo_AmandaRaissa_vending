# ============================================================
# Script de Sintese Logica - Vending Machine
# Top-level: vending_top
# Ferramenta: Synopsys Design Compiler
# ============================================================

# ------------------------------------------------------------
# 1. Diretorios principais
# ------------------------------------------------------------
set ROOT_DIR [file normalize ".."]
set RTL_DIR  "$ROOT_DIR/rtl"
set SYNTH_DIR "$ROOT_DIR/synth"
set REPORT_DIR "$SYNTH_DIR/reports"
set NETLIST_DIR "$SYNTH_DIR/netlist"
set WORK_DIR "$SYNTH_DIR/work"

file mkdir $REPORT_DIR
file mkdir $NETLIST_DIR
file mkdir $WORK_DIR

# ------------------------------------------------------------
# 2. Biblioteca alvo
# ------------------------------------------------------------
set LIB_DIR "/Tools/PDK/SAED32/EDK_Digital/lib/stdcell_rvt/db_nldm"
set TARGET_LIB "saed32rvt_tt1p05v25c.db"

set_app_var search_path [list \
  . \
  $ROOT_DIR \
  $RTL_DIR \
  $SYNTH_DIR \
  $LIB_DIR \
]

set_app_var target_library [list $TARGET_LIB]

set_app_var synthetic_library [list dw_foundation.sldb]

set_app_var link_library [concat "*" $target_library $synthetic_library]

# ------------------------------------------------------------
# 3. Configuracoes adicionais
# ------------------------------------------------------------
define_design_lib WORK -path $WORK_DIR

set hdlin_enable_rtldrc_info true
set hdlin_check_no_latch true
set compile_autoungroup false

# ------------------------------------------------------------
# 4. Leitura dos arquivos RTL
# ------------------------------------------------------------
analyze -format sverilog $RTL_DIR/vending_pkg.sv
analyze -format sverilog $RTL_DIR/credit_reg.sv
analyze -format sverilog $RTL_DIR/memory.sv
analyze -format sverilog $RTL_DIR/comparator.sv
analyze -format sverilog $RTL_DIR/subtractor.sv
analyze -format sverilog $RTL_DIR/control_unit.sv
analyze -format sverilog $RTL_DIR/vending_top.sv

# ------------------------------------------------------------
# 5. Elaboracao e linkagem
# ------------------------------------------------------------
elaborate vending_top
current_design vending_top
link

# ------------------------------------------------------------
# 6. Checagem inicial do design
# ------------------------------------------------------------
check_design > $REPORT_DIR/check_design_pre_synth.rpt

# Netlist generica antes do mapeamento
write -format verilog -hierarchy -output $NETLIST_DIR/vending_top_unmapped.v

# ------------------------------------------------------------
# 7. Leitura das constraints
# ------------------------------------------------------------
read_sdc $SYNTH_DIR/vending.sdc

# Conferencia das constraints antes da sintese
check_timing > $REPORT_DIR/check_timing_pre_synth.rpt
report_clock > $REPORT_DIR/clocks.rpt

# Tentar corrigir violacoes de hold durante a sintese
set_fix_hold [get_clocks clk]

# ------------------------------------------------------------
# 8. Sintese logica
# ------------------------------------------------------------
compile_ultra -no_autoungroup

# ------------------------------------------------------------
# 9. Relatorios pos-sintese
# ------------------------------------------------------------
check_design > $REPORT_DIR/check_design_post_synth.rpt

report_area -hierarchy > $REPORT_DIR/area.rpt
report_timing -max_paths 10 -delay_type max > $REPORT_DIR/timing.rpt
report_power > $REPORT_DIR/power.rpt

report_constraint -all_violators > $REPORT_DIR/constraints.rpt

report_timing -max_paths 10 -delay_type max > $REPORT_DIR/setup_timing.rpt
report_timing -max_paths 10 -delay_type min > $REPORT_DIR/hold_timing.rpt

# ------------------------------------------------------------
# 10. Exportacao da netlist sintetizada
# ------------------------------------------------------------
write -format verilog -hierarchy -output $NETLIST_DIR/vending_top_mapped.v
write -format ddc     -hierarchy -output $NETLIST_DIR/vending_top_mapped.ddc


puts "============================================================"
puts "SINTESE FINALIZADA"
puts "Reports salvos em: $REPORT_DIR"
puts "Netlists salvas em: $NETLIST_DIR"
puts "============================================================"
