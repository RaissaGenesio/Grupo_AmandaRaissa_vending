# ============================================================
# Formality - Verificacao de equivalencia RTL vs Netlist
# Projeto: Vending Machine
# Top-level: vending_top
# ============================================================

set ROOT_DIR ..
set RTL_DIR "$ROOT_DIR/rtl"
set SYNTH_DIR "$ROOT_DIR/synth"
set REPORT_DIR "./reports"

file mkdir $REPORT_DIR

# Biblioteca usada na sintese
set LIB_DB "/Tools/PDK/SAED32/EDK_Digital/lib/stdcell_rvt/db_nldm/saed32rvt_tt1p05v25c.db"

# 1. Ler biblioteca tecnologica
read_db $LIB_DB

# 2. Ativar auto setup ANTES de carregar o SVF
set synopsys_auto_setup true

# 3. Carregar guidance SVF gerado pelo Design Compiler
set_svf "$SYNTH_DIR/reports/default.svf"

# 4. Ler design de referencia/golden: RTL SystemVerilog
read_sverilog -r [list \
    "$RTL_DIR/vending_pkg.sv" \
    "$RTL_DIR/credit_reg.sv" \
    "$RTL_DIR/memory.sv" \
    "$RTL_DIR/comparator.sv" \
    "$RTL_DIR/subtractor.sv" \
    "$RTL_DIR/control_unit.sv" \
    "$RTL_DIR/vending_top.sv" \
]

set_top r:/WORK/vending_top

# 5. Ler design de implementacao/revised: netlist sintetizada
read_verilog -i "$SYNTH_DIR/netlist/vending_top_mapped.v"

set_top i:/WORK/vending_top

# 6. Matching
match

redirect -file "$REPORT_DIR/svf_accepted.rpt" {
    report_svf_operation -status accepted
}

redirect -file "$REPORT_DIR/svf_rejected.rpt" {
    report_svf_operation -status rejected
}

redirect -file "$REPORT_DIR/matched_points.rpt" {
    report_matched_points
}

redirect -file "$REPORT_DIR/unmatched_points_pre_verify.rpt" {
    report_unmatched_points
}

# 7. Verification
verify

redirect -file "$REPORT_DIR/status_verbose.rpt" {
    report_status
}

redirect -file "$REPORT_DIR/passing_points.rpt" {
    report_passing_points
}

redirect -file "$REPORT_DIR/failing_points.rpt" {
    report_failing_points
}

redirect -file "$REPORT_DIR/unmatched_points_post_verify.rpt" {
    report_unmatched_points
}

exit
