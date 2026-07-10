/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : X-2025.06-SP2
// Date      : Fri Jul 10 02:19:39 2026
/////////////////////////////////////////////////////////////


module credit_reg ( clk, rst, credit_load, credit_clear, coin_value, credit );
  input [7:0] coin_value;
  output [7:0] credit;
  input clk, rst, credit_load, credit_clear;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26;

  \**SEQGEN**  \credit_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  \**SEQGEN**  \credit_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N14), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N13) );
  ADD_UNS_OP add_18 ( .A(credit), .B(coin_value), .Z({N12, N11, N10, N9, N8, 
        N7, N6, N5}) );
  SELECT_OP C40 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N0), .CONTROL2(N23), .CONTROL3(N26), .CONTROL4(N3), .Z(N13)
         );
  GTECH_BUF B_0 ( .A(rst), .Z(N0) );
  SELECT_OP C41 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA3({N12, 
        N11, N10, N9, N8, N7, N6, N5}), .CONTROL1(N0), .CONTROL2(N23), 
        .CONTROL3(N26), .Z({N21, N20, N19, N18, N17, N16, N15, N14}) );
  GTECH_OR2 C47 ( .A(credit_clear), .B(rst), .Z(N1) );
  GTECH_OR2 C48 ( .A(credit_load), .B(N1), .Z(N2) );
  GTECH_NOT I_0 ( .A(N2), .Z(N3) );
  GTECH_BUF B_1 ( .A(N26), .Z(N4) );
  GTECH_NOT I_1 ( .A(rst), .Z(N22) );
  GTECH_AND2 C52 ( .A(credit_clear), .B(N22), .Z(N23) );
  GTECH_NOT I_2 ( .A(credit_clear), .Z(N24) );
  GTECH_AND2 C54 ( .A(N22), .B(N24), .Z(N25) );
  GTECH_AND2 C55 ( .A(credit_load), .B(N25), .Z(N26) );
  GTECH_AND2 C56 ( .A(N4), .B(N25) );
endmodule


module vending_memory ( clk, rst, mem_read, mem_write, addr, price, stock, 
        read_valid );
  input [1:0] addr;
  output [7:0] price;
  output [7:0] stock;
  input clk, rst, mem_read, mem_write;
  output read_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, \mem[0][15] , \mem[0][14] ,
         \mem[0][13] , \mem[0][12] , \mem[0][11] , \mem[0][10] , \mem[0][9] ,
         \mem[0][8] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][15] ,
         \mem[1][14] , \mem[1][13] , \mem[1][12] , \mem[1][11] , \mem[1][10] ,
         \mem[1][9] , \mem[1][8] , \mem[1][7] , \mem[1][6] , \mem[1][5] ,
         \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] , \mem[1][0] ,
         \mem[2][15] , \mem[2][14] , \mem[2][13] , \mem[2][12] , \mem[2][11] ,
         \mem[2][10] , \mem[2][9] , \mem[2][8] , \mem[2][7] , \mem[2][6] ,
         \mem[2][5] , \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] ,
         \mem[2][0] , \mem[3][15] , \mem[3][14] , \mem[3][13] , \mem[3][12] ,
         \mem[3][11] , \mem[3][10] , \mem[3][9] , \mem[3][8] , \mem[3][7] ,
         \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] ,
         \mem[3][1] , \mem[3][0] , \_cse_3[15] , \_cse_3[14] , \_cse_3[13] ,
         \_cse_3[12] , \_cse_3[11] , \_cse_3[10] , \_cse_3[9] , \_cse_3[8] ,
         \_cse_3[7] , \_cse_3[6] , \_cse_3[5] , \_cse_3[4] , \_cse_3[3] ,
         \_cse_3[2] , \_cse_3[1] , \_cse_3[0] , N9, N10, N11, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N58, N59, N60, N61, N62;

  GT_UNS_OP gt_36 ( .A({\_cse_3[7] , \_cse_3[6] , \_cse_3[5] , \_cse_3[4] , 
        \_cse_3[3] , \_cse_3[2] , \_cse_3[1] , \_cse_3[0] }), .B(1'b0), .Z(N11) );
  \**SEQGEN**  read_valid_reg ( .clear(1'b0), .preset(1'b0), .next_state(N62), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(read_valid), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \mem_reg[0][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][15] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][14] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][13] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][12] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][11] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[0][10] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][9] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][8] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[0][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[0][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N44) );
  \**SEQGEN**  \mem_reg[1][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][15] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][14] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][13] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][12] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][11] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[1][10] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][9] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][8] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[1][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[1][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N41) );
  \**SEQGEN**  \mem_reg[2][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][15] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][14] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][13] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][12] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][11] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[2][10] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][9] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][8] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[2][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[2][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[3][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][15] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][14] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][13] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][12] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][11] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem[3][10] ), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][9] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][8] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(rst) );
  \**SEQGEN**  \mem_reg[3][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \mem_reg[3][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \price_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N53), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N52), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N51), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N50), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N49), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N48), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N47), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \price_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N46), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N61), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N60), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N59), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N58), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N57), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N56), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N55), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  \**SEQGEN**  \stock_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N54), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N45) );
  SUB_UNS_OP sub_37 ( .A({\_cse_3[7] , \_cse_3[6] , \_cse_3[5] , \_cse_3[4] , 
        \_cse_3[3] , \_cse_3[2] , \_cse_3[1] , \_cse_3[0] }), .B(1'b1), .Z({
        N25, N24, N23, N22, N21, N20, N19, N18}) );
  GTECH_AND2 C280 ( .A(addr[0]), .B(addr[1]), .Z(N17) );
  GTECH_AND2 C281 ( .A(N0), .B(addr[1]), .Z(N16) );
  GTECH_NOT I_0 ( .A(addr[0]), .Z(N0) );
  GTECH_AND2 C282 ( .A(addr[0]), .B(N1), .Z(N15) );
  GTECH_NOT I_1 ( .A(addr[1]), .Z(N1) );
  GTECH_AND2 C283 ( .A(N2), .B(N3), .Z(N14) );
  GTECH_NOT I_2 ( .A(addr[0]), .Z(N2) );
  GTECH_NOT I_3 ( .A(addr[1]), .Z(N3) );
  SELECT_OP C284 ( .DATA1({N14, N15, N16, N17}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N4), .CONTROL2(N13), .Z({N29, N28, N27, N26}) );
  GTECH_BUF B_0 ( .A(N12), .Z(N4) );
  SELECT_OP C285 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({N29, N28, N27, 
        N26}), .CONTROL1(N5), .CONTROL2(N6), .Z({N44, N41, N39, N30}) );
  GTECH_BUF B_1 ( .A(rst), .Z(N5) );
  GTECH_BUF B_2 ( .A(N9), .Z(N6) );
  SELECT_OP C286 ( .DATA1({1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b0}), .DATA2({N20, N19, N18, N25, N24, N23, N22, N21, 
        N20, N19, N18}), .CONTROL1(N5), .CONTROL2(N6), .Z({N43, N42, N40, N38, 
        N37, N36, N35, N34, N33, N32, N31}) );
  SELECT_OP C287 ( .DATA1(1'b1), .DATA2(mem_read), .CONTROL1(N5), .CONTROL2(N6), .Z(N45) );
  SELECT_OP C288 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({\_cse_3[15] , \_cse_3[14] , \_cse_3[13] , \_cse_3[12] , 
        \_cse_3[11] , \_cse_3[10] , \_cse_3[9] , \_cse_3[8] }), .CONTROL1(N5), 
        .CONTROL2(N6), .Z({N53, N52, N51, N50, N49, N48, N47, N46}) );
  SELECT_OP C289 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({\_cse_3[7] , \_cse_3[6] , \_cse_3[5] , \_cse_3[4] , 
        \_cse_3[3] , \_cse_3[2] , \_cse_3[1] , \_cse_3[0] }), .CONTROL1(N5), 
        .CONTROL2(N6), .Z({N61, N60, N59, N58, N57, N56, N55, N54}) );
  SELECT_OP C290 ( .DATA1(1'b0), .DATA2(mem_read), .CONTROL1(N5), .CONTROL2(N6), .Z(N62) );
  MUX_OP C291 ( .D0({\mem[0][0] , \mem[0][1] , \mem[0][2] , \mem[0][3] , 
        \mem[0][4] , \mem[0][5] , \mem[0][6] , \mem[0][7] , \mem[0][8] , 
        \mem[0][9] , \mem[0][10] , \mem[0][11] , \mem[0][12] , \mem[0][13] , 
        \mem[0][14] , \mem[0][15] }), .D1({\mem[1][0] , \mem[1][1] , 
        \mem[1][2] , \mem[1][3] , \mem[1][4] , \mem[1][5] , \mem[1][6] , 
        \mem[1][7] , \mem[1][8] , \mem[1][9] , \mem[1][10] , \mem[1][11] , 
        \mem[1][12] , \mem[1][13] , \mem[1][14] , \mem[1][15] }), .D2({
        \mem[2][0] , \mem[2][1] , \mem[2][2] , \mem[2][3] , \mem[2][4] , 
        \mem[2][5] , \mem[2][6] , \mem[2][7] , \mem[2][8] , \mem[2][9] , 
        \mem[2][10] , \mem[2][11] , \mem[2][12] , \mem[2][13] , \mem[2][14] , 
        \mem[2][15] }), .D3({\mem[3][0] , \mem[3][1] , \mem[3][2] , 
        \mem[3][3] , \mem[3][4] , \mem[3][5] , \mem[3][6] , \mem[3][7] , 
        \mem[3][8] , \mem[3][9] , \mem[3][10] , \mem[3][11] , \mem[3][12] , 
        \mem[3][13] , \mem[3][14] , \mem[3][15] }), .S0(N7), .S1(N8), .Z({
        \_cse_3[0] , \_cse_3[1] , \_cse_3[2] , \_cse_3[3] , \_cse_3[4] , 
        \_cse_3[5] , \_cse_3[6] , \_cse_3[7] , \_cse_3[8] , \_cse_3[9] , 
        \_cse_3[10] , \_cse_3[11] , \_cse_3[12] , \_cse_3[13] , \_cse_3[14] , 
        \_cse_3[15] }) );
  GTECH_BUF B_3 ( .A(addr[0]), .Z(N7) );
  GTECH_BUF B_4 ( .A(addr[1]), .Z(N8) );
  GTECH_NOT I_4 ( .A(rst), .Z(N9) );
  GTECH_BUF B_5 ( .A(N9), .Z(N10) );
  GTECH_AND2 C299 ( .A(mem_write), .B(N11), .Z(N12) );
  GTECH_NOT I_5 ( .A(N12), .Z(N13) );
  GTECH_AND2 C302 ( .A(N10), .B(N12) );
endmodule


module comparator ( credit, price, stock, can_sell );
  input [7:0] credit;
  input [7:0] price;
  input [7:0] stock;
  output can_sell;
  wire   N0, N1;

  GEQ_UNS_OP gte_9 ( .A(credit), .B(price), .Z(N0) );
  GT_UNS_OP gt_9 ( .A(stock), .B(1'b0), .Z(N1) );
  GTECH_AND2 C8 ( .A(N0), .B(N1), .Z(can_sell) );
endmodule


module subtractor ( credit, price, change );
  input [7:0] credit;
  input [7:0] price;
  output [7:0] change;


  SUB_UNS_OP sub_8 ( .A(credit), .B(price), .Z(change) );
endmodule


module control_unit ( clk, rst, coin_in, confirm, cancel, can_sell, read_valid, 
        credit_load, credit_clear, mem_read, mem_write, dispense, error, 
        change_load, refund_load, state_out );
  input [1:0] coin_in;
  output [2:0] state_out;
  input clk, rst, confirm, cancel, can_sell, read_valid;
  output credit_load, credit_clear, mem_read, mem_write, dispense, error,
         change_load, refund_load;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         dispense, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26,
         N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69;
  wire   [2:0] next_state;
  assign mem_write = dispense;

  \**SEQGEN**  \current_state_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N18), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state_out[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N68) );
  \**SEQGEN**  \current_state_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N17), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state_out[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N68) );
  \**SEQGEN**  \current_state_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N16), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        state_out[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N68) );
  GTECH_AND2 C20 ( .A(N20), .B(N21), .Z(N23) );
  GTECH_AND2 C21 ( .A(N23), .B(N22), .Z(N24) );
  GTECH_OR2 C23 ( .A(state_out[2]), .B(state_out[1]), .Z(N25) );
  GTECH_OR2 C24 ( .A(N25), .B(N22), .Z(N26) );
  GTECH_OR2 C27 ( .A(state_out[2]), .B(N21), .Z(N28) );
  GTECH_OR2 C28 ( .A(N28), .B(state_out[0]), .Z(N29) );
  GTECH_OR2 C32 ( .A(state_out[2]), .B(N21), .Z(N31) );
  GTECH_OR2 C33 ( .A(N31), .B(N22), .Z(N32) );
  GTECH_OR2 C36 ( .A(N20), .B(state_out[1]), .Z(N34) );
  GTECH_OR2 C37 ( .A(N34), .B(state_out[0]), .Z(N35) );
  GTECH_OR2 C41 ( .A(N20), .B(state_out[1]), .Z(N37) );
  GTECH_OR2 C42 ( .A(N37), .B(N22), .Z(N38) );
  GTECH_AND2 C44 ( .A(state_out[2]), .B(state_out[1]), .Z(N40) );
  GTECH_OR2 C146 ( .A(coin_in[0]), .B(coin_in[1]), .Z(N69) );
  SELECT_OP C154 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(next_state), .CONTROL1(
        N0), .CONTROL2(N1), .Z({N18, N17, N16}) );
  GTECH_BUF B_0 ( .A(rst), .Z(N0) );
  GTECH_BUF B_1 ( .A(N15), .Z(N1) );
  SELECT_OP C155 ( .DATA1({1'b0, 1'b0, 1'b1}), .DATA2(state_out), .CONTROL1(N2), .CONTROL2(N44), .Z({N43, N42, N41}) );
  GTECH_BUF B_2 ( .A(N69), .Z(N2) );
  SELECT_OP C156 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .CONTROL1(N3), 
        .CONTROL2(N4), .CONTROL3(N5), .Z(N49) );
  GTECH_BUF B_3 ( .A(N46), .Z(N3) );
  GTECH_BUF B_4 ( .A(read_valid), .Z(N4) );
  GTECH_BUF B_5 ( .A(1'b0), .Z(N5) );
  SELECT_OP C157 ( .DATA1({1'b0, 1'b1}), .DATA2({1'b1, 1'b0}), .CONTROL1(N61), 
        .CONTROL2(N48), .Z({N51, N50}) );
  SELECT_OP C158 ( .DATA1({N43, N42, N41}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .DATA3({N51, N50, 1'b1}), .DATA4({1'b1, 1'b0, 1'b0}), .DATA5({1'b0, 
        1'b0, 1'b0}), .DATA6({1'b1, 1'b0, 1'b1}), .DATA7({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N6), .CONTROL2(N7), .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(
        N10), .CONTROL6(N11), .CONTROL7(N12), .Z({N54, N53, N52}) );
  GTECH_BUF B_6 ( .A(N24), .Z(N6) );
  GTECH_BUF B_7 ( .A(N27), .Z(N7) );
  GTECH_BUF B_8 ( .A(N30), .Z(N8) );
  GTECH_BUF B_9 ( .A(N33), .Z(N9) );
  GTECH_BUF B_10 ( .A(N36), .Z(N10) );
  GTECH_BUF B_11 ( .A(N39), .Z(N11) );
  GTECH_BUF B_12 ( .A(N40), .Z(N12) );
  SELECT_OP C159 ( .DATA1(N69), .DATA2(N69), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N55) );
  SELECT_OP C160 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N49), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N56) );
  SELECT_OP C161 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N57) );
  SELECT_OP C162 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N58) );
  SELECT_OP C163 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b1), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N59) );
  SELECT_OP C164 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .CONTROL3(N8), .CONTROL4(N9), .CONTROL5(N10), .CONTROL6(N11), 
        .CONTROL7(N12), .Z(N60) );
  SELECT_OP C165 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N54, N53, N52}), 
        .CONTROL1(N13), .CONTROL2(N14), .Z(next_state) );
  GTECH_BUF B_13 ( .A(refund_load), .Z(N13) );
  GTECH_BUF B_14 ( .A(N19), .Z(N14) );
  SELECT_OP C166 ( .DATA1(1'b1), .DATA2(N59), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(credit_clear) );
  SELECT_OP C167 ( .DATA1(1'b0), .DATA2(N60), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(error) );
  SELECT_OP C168 ( .DATA1(1'b0), .DATA2(N55), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(credit_load) );
  SELECT_OP C169 ( .DATA1(1'b0), .DATA2(N56), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(mem_read) );
  SELECT_OP C170 ( .DATA1(1'b0), .DATA2(N57), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(dispense) );
  SELECT_OP C171 ( .DATA1(1'b0), .DATA2(N58), .CONTROL1(N13), .CONTROL2(N14), 
        .Z(change_load) );
  GTECH_NOT I_0 ( .A(rst), .Z(N15) );
  GTECH_NOT I_1 ( .A(cancel), .Z(N19) );
  GTECH_BUF B_15 ( .A(cancel), .Z(refund_load) );
  GTECH_NOT I_2 ( .A(state_out[2]), .Z(N20) );
  GTECH_NOT I_3 ( .A(state_out[1]), .Z(N21) );
  GTECH_NOT I_4 ( .A(state_out[0]), .Z(N22) );
  GTECH_NOT I_5 ( .A(N26), .Z(N27) );
  GTECH_NOT I_6 ( .A(N29), .Z(N30) );
  GTECH_NOT I_7 ( .A(N32), .Z(N33) );
  GTECH_NOT I_8 ( .A(N35), .Z(N36) );
  GTECH_NOT I_9 ( .A(N38), .Z(N39) );
  GTECH_NOT I_10 ( .A(N69), .Z(N44) );
  GTECH_NOT I_11 ( .A(confirm), .Z(N45) );
  GTECH_NOT I_12 ( .A(read_valid), .Z(N46) );
  GTECH_OR2 C209 ( .A(can_sell), .B(N46), .Z(N47) );
  GTECH_NOT I_13 ( .A(N47), .Z(N48) );
  GTECH_AND2 C212 ( .A(can_sell), .B(read_valid), .Z(N61) );
  GTECH_AND2 C213 ( .A(N19), .B(N15), .Z(N62) );
  GTECH_AND2 C214 ( .A(N27), .B(N62), .Z(N63) );
  GTECH_AND2 C215 ( .A(N45), .B(N63), .Z(N64) );
  GTECH_AND2 C216 ( .A(N30), .B(N62), .Z(N65) );
  GTECH_AND2 C217 ( .A(N46), .B(N65), .Z(N66) );
  GTECH_OR2 C218 ( .A(N64), .B(N66), .Z(N67) );
  GTECH_NOT I_14 ( .A(N67), .Z(N68) );
endmodule


module vending_top ( coin_in, sel_item, confirm, cancel, clk, rst, dispense, 
        change_out, error, display, state_out );
  input [1:0] coin_in;
  input [1:0] sel_item;
  output [7:0] change_out;
  output [7:0] display;
  output [2:0] state_out;
  input confirm, cancel, clk, rst;
  output dispense, error;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, refund_load, change_load,
         N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38,
         N39, N40, N41, N42, credit_load, credit_clear, mem_read, mem_write,
         read_valid, can_sell;
  wire   [6:0] coin_value;
  wire   [1:0] selected_item;
  wire   [7:0] change;
  wire   [7:0] price;
  wire   [7:0] stock;

  GTECH_AND2 C6 ( .A(N6), .B(N7), .Z(N8) );
  GTECH_OR2 C8 ( .A(coin_in[1]), .B(N9), .Z(N10) );
  GTECH_OR2 C11 ( .A(N12), .B(coin_in[0]), .Z(N13) );
  GTECH_AND2 C13 ( .A(coin_in[1]), .B(coin_in[0]), .Z(N15) );
  \**SEQGEN**  \selected_item_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N22), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        selected_item[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N20) );
  \**SEQGEN**  \selected_item_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N21), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        selected_item[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N20) );
  \**SEQGEN**  \change_out_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N37), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N36), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N35), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N34), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N33), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N32), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N31), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  \**SEQGEN**  \change_out_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N30), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        change_out[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N29) );
  credit_reg u_credit_reg ( .clk(clk), .rst(rst), .credit_load(credit_load), 
        .credit_clear(credit_clear), .coin_value({1'b0, coin_value}), .credit(
        display) );
  vending_memory u_memory ( .clk(clk), .rst(rst), .mem_read(mem_read), 
        .mem_write(mem_write), .addr(selected_item), .price(price), .stock(
        stock), .read_valid(read_valid) );
  comparator u_comparator ( .credit(display), .price(price), .stock(stock), 
        .can_sell(can_sell) );
  subtractor u_subtractor ( .credit(display), .price(price), .change(change)
         );
  control_unit u_control_unit ( .clk(clk), .rst(rst), .coin_in(coin_in), 
        .confirm(confirm), .cancel(cancel), .can_sell(can_sell), .read_valid(
        read_valid), .credit_load(credit_load), .credit_clear(credit_clear), 
        .mem_read(mem_read), .mem_write(mem_write), .dispense(dispense), 
        .error(error), .change_load(change_load), .refund_load(refund_load), 
        .state_out(state_out) );
  SELECT_OP C80 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({
        1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), .DATA3({1'b0, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b1, 1'b0}), .DATA4({1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0}), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), 
        .Z(coin_value) );
  GTECH_BUF B_0 ( .A(N8), .Z(N0) );
  GTECH_BUF B_1 ( .A(N11), .Z(N1) );
  GTECH_BUF B_2 ( .A(N14), .Z(N2) );
  GTECH_BUF B_3 ( .A(N15), .Z(N3) );
  SELECT_OP C81 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N4), 
        .CONTROL2(N24), .CONTROL3(N19), .Z(N20) );
  GTECH_BUF B_4 ( .A(N16), .Z(N4) );
  SELECT_OP C82 ( .DATA1({1'b0, 1'b0}), .DATA2(sel_item), .CONTROL1(N4), 
        .CONTROL2(N24), .Z({N22, N21}) );
  SELECT_OP C83 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b0), 
        .CONTROL1(N5), .CONTROL2(N39), .CONTROL3(N42), .CONTROL4(N28), .Z(N29)
         );
  GTECH_BUF B_5 ( .A(N25), .Z(N5) );
  SELECT_OP C84 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2(display), .DATA3(change), .CONTROL1(N5), .CONTROL2(N39), 
        .CONTROL3(N42), .Z({N37, N36, N35, N34, N33, N32, N31, N30}) );
  GTECH_NOT I_0 ( .A(coin_in[1]), .Z(N6) );
  GTECH_NOT I_1 ( .A(coin_in[0]), .Z(N7) );
  GTECH_NOT I_2 ( .A(coin_in[0]), .Z(N9) );
  GTECH_NOT I_3 ( .A(N10), .Z(N11) );
  GTECH_NOT I_4 ( .A(coin_in[1]), .Z(N12) );
  GTECH_NOT I_5 ( .A(N13), .Z(N14) );
  GTECH_BUF B_6 ( .A(rst), .Z(N16) );
  GTECH_BUF B_7 ( .A(confirm), .Z(N17) );
  GTECH_OR2 C99 ( .A(N17), .B(N16), .Z(N18) );
  GTECH_NOT I_6 ( .A(N18), .Z(N19) );
  GTECH_NOT I_7 ( .A(N16), .Z(N23) );
  GTECH_AND2 C102 ( .A(N17), .B(N23), .Z(N24) );
  GTECH_BUF B_8 ( .A(rst), .Z(N25) );
  GTECH_OR2 C106 ( .A(refund_load), .B(N25), .Z(N26) );
  GTECH_OR2 C107 ( .A(change_load), .B(N26), .Z(N27) );
  GTECH_NOT I_8 ( .A(N27), .Z(N28) );
  GTECH_NOT I_9 ( .A(N25), .Z(N38) );
  GTECH_AND2 C110 ( .A(refund_load), .B(N38), .Z(N39) );
  GTECH_NOT I_10 ( .A(refund_load), .Z(N40) );
  GTECH_AND2 C112 ( .A(N38), .B(N40), .Z(N41) );
  GTECH_AND2 C113 ( .A(change_load), .B(N41), .Z(N42) );
endmodule

