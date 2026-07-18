/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP2
// Date      : Fri Jul 17 20:45:02 2026
/////////////////////////////////////////////////////////////


module credit_reg ( clk, rst, credit_load, credit_clear, coin_value, credit );
  input [7:0] coin_value;
  output [7:0] credit;
  input clk, rst, credit_load, credit_clear;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n2, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49;

  DFFX1_RVT \credit_reg[7]  ( .D(n3), .CLK(clk), .Q(credit[7]) );
  DFFX1_RVT \credit_reg[6]  ( .D(n4), .CLK(clk), .Q(credit[6]), .QN(n49) );
  DFFX1_RVT \credit_reg[5]  ( .D(n5), .CLK(clk), .Q(credit[5]) );
  DFFX1_RVT \credit_reg[4]  ( .D(n6), .CLK(clk), .Q(credit[4]) );
  DFFX1_RVT \credit_reg[3]  ( .D(n7), .CLK(clk), .Q(credit[3]) );
  DFFX1_RVT \credit_reg[2]  ( .D(n8), .CLK(clk), .Q(credit[2]) );
  DFFX1_RVT \credit_reg[1]  ( .D(n9), .CLK(clk), .Q(credit[1]) );
  DFFX1_RVT \credit_reg[0]  ( .D(n10), .CLK(clk), .Q(credit[0]), .QN(n48) );
  AND2X1_RVT U3 ( .A1(n2), .A2(n11), .Y(n45) );
  AND2X1_RVT U4 ( .A1(credit_load), .A2(n44), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n43), .A2(n49), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(coin_value[3]), .A2(credit_load), .Y(n12) );
  INVX0_RVT U7 ( .A(n12), .Y(n13) );
  NOR2X0_RVT U8 ( .A1(rst), .A2(credit_clear), .Y(n47) );
  OA221X1_RVT U9 ( .A1(credit[0]), .A2(n13), .A3(n48), .A4(n12), .A5(n47), .Y(
        n10) );
  NAND3X0_RVT U10 ( .A1(coin_value[3]), .A2(credit[0]), .A3(coin_value[1]), 
        .Y(n14) );
  AND2X1_RVT U11 ( .A1(n14), .A2(credit_load), .Y(n16) );
  AND2X1_RVT U12 ( .A1(coin_value[3]), .A2(credit[0]), .Y(n19) );
  OR2X1_RVT U13 ( .A1(coin_value[1]), .A2(n19), .Y(n15) );
  AND2X1_RVT U14 ( .A1(n16), .A2(n15), .Y(n17) );
  HADDX1_RVT U15 ( .A0(credit[1]), .B0(n17), .SO(n18) );
  AND2X1_RVT U16 ( .A1(n47), .A2(n18), .Y(n9) );
  AO222X1_RVT U17 ( .A1(n19), .A2(coin_value[1]), .A3(n19), .A4(credit[1]), 
        .A5(coin_value[1]), .A6(credit[1]), .Y(n24) );
  INVX0_RVT U18 ( .A(coin_value[6]), .Y(n21) );
  INVX0_RVT U19 ( .A(n24), .Y(n20) );
  OA221X1_RVT U20 ( .A1(coin_value[6]), .A2(n24), .A3(n21), .A4(n20), .A5(
        credit_load), .Y(n22) );
  HADDX1_RVT U21 ( .A0(credit[2]), .B0(n22), .SO(n23) );
  AND2X1_RVT U22 ( .A1(n47), .A2(n23), .Y(n8) );
  AO222X1_RVT U23 ( .A1(coin_value[6]), .A2(credit[2]), .A3(coin_value[6]), 
        .A4(n24), .A5(credit[2]), .A6(n24), .Y(n29) );
  INVX0_RVT U24 ( .A(coin_value[3]), .Y(n26) );
  INVX0_RVT U25 ( .A(n29), .Y(n25) );
  OA221X1_RVT U26 ( .A1(coin_value[3]), .A2(n29), .A3(n26), .A4(n25), .A5(
        credit_load), .Y(n27) );
  HADDX1_RVT U27 ( .A0(credit[3]), .B0(n27), .SO(n28) );
  AND2X1_RVT U28 ( .A1(n47), .A2(n28), .Y(n7) );
  AO222X1_RVT U29 ( .A1(coin_value[3]), .A2(credit[3]), .A3(coin_value[3]), 
        .A4(n29), .A5(credit[3]), .A6(n29), .Y(n34) );
  INVX0_RVT U30 ( .A(n34), .Y(n31) );
  INVX0_RVT U31 ( .A(coin_value[4]), .Y(n30) );
  OA221X1_RVT U32 ( .A1(n31), .A2(n30), .A3(n34), .A4(coin_value[4]), .A5(
        credit_load), .Y(n32) );
  HADDX1_RVT U33 ( .A0(credit[4]), .B0(n32), .SO(n33) );
  AND2X1_RVT U34 ( .A1(n47), .A2(n33), .Y(n6) );
  AO222X1_RVT U35 ( .A1(coin_value[4]), .A2(credit[4]), .A3(coin_value[4]), 
        .A4(n34), .A5(credit[4]), .A6(n34), .Y(n39) );
  INVX0_RVT U36 ( .A(n39), .Y(n36) );
  INVX0_RVT U37 ( .A(coin_value[5]), .Y(n35) );
  OA221X1_RVT U38 ( .A1(n36), .A2(n35), .A3(n39), .A4(coin_value[5]), .A5(
        credit_load), .Y(n37) );
  HADDX1_RVT U39 ( .A0(credit[5]), .B0(n37), .SO(n38) );
  AND2X1_RVT U40 ( .A1(n47), .A2(n38), .Y(n5) );
  AO222X1_RVT U41 ( .A1(coin_value[5]), .A2(credit[5]), .A3(coin_value[5]), 
        .A4(n39), .A5(credit[5]), .A6(n39), .Y(n40) );
  OR2X1_RVT U42 ( .A1(coin_value[6]), .A2(n40), .Y(n44) );
  NAND2X0_RVT U43 ( .A1(coin_value[6]), .A2(n40), .Y(n43) );
  NAND3X0_RVT U44 ( .A1(credit_load), .A2(n44), .A3(n43), .Y(n41) );
  INVX0_RVT U45 ( .A(n41), .Y(n42) );
  OA221X1_RVT U46 ( .A1(credit[6]), .A2(n42), .A3(n49), .A4(n41), .A5(n47), 
        .Y(n4) );
  HADDX1_RVT U47 ( .A0(credit[7]), .B0(n45), .SO(n46) );
  AND2X1_RVT U48 ( .A1(n47), .A2(n46), .Y(n3) );
endmodule


module vending_memory ( clk, rst, mem_read, mem_write, addr, price, stock, 
        read_valid );
  input [1:0] addr;
  output [7:0] price;
  output [7:0] stock;
  input clk, rst, mem_read, mem_write;
  output read_valid;
  wire   \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] ,
         \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] , \mem[1][0] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] , N62,
         n29, n30, n31, n32, n33, n37, n38, n39, n40, n41, n42, n43, n47, n48,
         n49, n50, n51, n55, n56, n57, n58, n59, n63, n64, n65, n66, n67, n71,
         n72, n73, n74, n75, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n34, n35, n36, n44, n45, n46, n52, n53, n54, n60, n61, n62,
         n68, n69, n70, n76;
  assign stock[5] = 1'b0;

  DFFX1_RVT read_valid_reg ( .D(N62), .CLK(clk), .Q(read_valid) );
  DFFX1_RVT \mem_reg[3][0]  ( .D(n75), .CLK(clk), .Q(\mem[3][0] ) );
  DFFX1_RVT \mem_reg[3][1]  ( .D(n74), .CLK(clk), .Q(\mem[3][1] ) );
  DFFX1_RVT \mem_reg[3][2]  ( .D(n73), .CLK(clk), .Q(\mem[3][2] ) );
  DFFX1_RVT \mem_reg[3][3]  ( .D(n72), .CLK(clk), .Q(\mem[3][3] ) );
  DFFX1_RVT \mem_reg[3][4]  ( .D(n71), .CLK(clk), .Q(\mem[3][4] ) );
  DFFX1_RVT \mem_reg[2][0]  ( .D(n67), .CLK(clk), .Q(\mem[2][0] ) );
  DFFX1_RVT \mem_reg[2][1]  ( .D(n66), .CLK(clk), .Q(\mem[2][1] ) );
  DFFX1_RVT \mem_reg[2][2]  ( .D(n65), .CLK(clk), .Q(\mem[2][2] ) );
  DFFX1_RVT \mem_reg[2][3]  ( .D(n64), .CLK(clk), .Q(\mem[2][3] ) );
  DFFX1_RVT \mem_reg[2][4]  ( .D(n63), .CLK(clk), .Q(\mem[2][4] ) );
  DFFX1_RVT \mem_reg[1][0]  ( .D(n59), .CLK(clk), .Q(\mem[1][0] ) );
  DFFX1_RVT \mem_reg[1][2]  ( .D(n57), .CLK(clk), .Q(\mem[1][2] ) );
  DFFX1_RVT \mem_reg[1][1]  ( .D(n58), .CLK(clk), .Q(\mem[1][1] ) );
  DFFX1_RVT \mem_reg[1][3]  ( .D(n56), .CLK(clk), .Q(\mem[1][3] ) );
  DFFX1_RVT \mem_reg[1][4]  ( .D(n55), .CLK(clk), .Q(\mem[1][4] ) );
  DFFX1_RVT \mem_reg[0][0]  ( .D(n51), .CLK(clk), .Q(\mem[0][0] ) );
  DFFX1_RVT \mem_reg[0][2]  ( .D(n49), .CLK(clk), .Q(\mem[0][2] ) );
  DFFX1_RVT \mem_reg[0][1]  ( .D(n50), .CLK(clk), .Q(\mem[0][1] ) );
  DFFX1_RVT \mem_reg[0][3]  ( .D(n48), .CLK(clk), .Q(\mem[0][3] ) );
  DFFX1_RVT \mem_reg[0][4]  ( .D(n47), .CLK(clk), .Q(\mem[0][4] ) );
  DFFX1_RVT \price_reg[6]  ( .D(n43), .CLK(clk), .Q(price[6]) );
  DFFX1_RVT \price_reg[5]  ( .D(n42), .CLK(clk), .Q(price[5]) );
  DFFX1_RVT \price_reg[4]  ( .D(n41), .CLK(clk), .Q(price[4]) );
  DFFX1_RVT \price_reg[3]  ( .D(n40), .CLK(clk), .Q(price[3]) );
  DFFX1_RVT \price_reg[2]  ( .D(n39), .CLK(clk), .Q(price[2]) );
  DFFX1_RVT \price_reg[1]  ( .D(n38), .CLK(clk), .Q(price[1]) );
  DFFX1_RVT \price_reg[0]  ( .D(n37), .CLK(clk), .Q(price[0]) );
  DFFX1_RVT \stock_reg[4]  ( .D(n33), .CLK(clk), .Q(stock[4]) );
  DFFX1_RVT \stock_reg[3]  ( .D(n32), .CLK(clk), .Q(stock[3]) );
  DFFX1_RVT \stock_reg[2]  ( .D(n31), .CLK(clk), .Q(stock[2]) );
  DFFX1_RVT \stock_reg[1]  ( .D(n30), .CLK(clk), .Q(stock[1]) );
  DFFX1_RVT \stock_reg[0]  ( .D(n29), .CLK(clk), .Q(stock[0]) );
  INVX0_RVT U8 ( .A(addr[0]), .Y(n54) );
  INVX0_RVT U9 ( .A(rst), .Y(n23) );
  AND2X1_RVT U10 ( .A1(mem_read), .A2(n23), .Y(N62) );
  NAND2X0_RVT U11 ( .A1(addr[1]), .A2(addr[0]), .Y(n44) );
  MUX41X1_RVT U12 ( .A1(1'b0), .A3(1'b0), .A2(1'b0), .A4(1'b0), .S0(addr[1]), 
        .S1(addr[0]), .Y(n60) );
  MUX41X1_RVT U13 ( .A1(\mem[0][4] ), .A3(\mem[2][4] ), .A2(\mem[1][4] ), .A4(
        \mem[3][4] ), .S0(addr[1]), .S1(addr[0]), .Y(n61) );
  MUX41X1_RVT U14 ( .A1(\mem[0][3] ), .A3(\mem[2][3] ), .A2(\mem[1][3] ), .A4(
        \mem[3][3] ), .S0(addr[1]), .S1(addr[0]), .Y(n62) );
  MUX41X1_RVT U15 ( .A1(\mem[0][2] ), .A3(\mem[2][2] ), .A2(\mem[1][2] ), .A4(
        \mem[3][2] ), .S0(addr[1]), .S1(addr[0]), .Y(n68) );
  MUX41X1_RVT U16 ( .A1(\mem[0][0] ), .A3(\mem[2][0] ), .A2(\mem[1][0] ), .A4(
        \mem[3][0] ), .S0(addr[1]), .S1(addr[0]), .Y(n70) );
  MUX41X1_RVT U17 ( .A1(\mem[0][1] ), .A3(\mem[2][1] ), .A2(\mem[1][1] ), .A4(
        \mem[3][1] ), .S0(addr[1]), .S1(addr[0]), .Y(n69) );
  OR2X1_RVT U18 ( .A1(n70), .A2(n69), .Y(n6) );
  OR2X1_RVT U19 ( .A1(n68), .A2(n6), .Y(n8) );
  OR2X1_RVT U20 ( .A1(n62), .A2(n8), .Y(n10) );
  OR2X1_RVT U21 ( .A1(n61), .A2(n10), .Y(n11) );
  OR2X1_RVT U22 ( .A1(n60), .A2(n11), .Y(n1) );
  NAND2X0_RVT U23 ( .A1(n1), .A2(mem_write), .Y(n20) );
  OA21X1_RVT U24 ( .A1(n44), .A2(n20), .A3(n23), .Y(n13) );
  INVX0_RVT U25 ( .A(n70), .Y(n2) );
  INVX0_RVT U26 ( .A(n13), .Y(n4) );
  AND2X1_RVT U27 ( .A1(n23), .A2(n4), .Y(n12) );
  AO22X1_RVT U28 ( .A1(\mem[3][0] ), .A2(n13), .A3(n2), .A4(n12), .Y(n75) );
  INVX0_RVT U29 ( .A(n6), .Y(n3) );
  AO21X1_RVT U30 ( .A1(n70), .A2(n69), .A3(n3), .Y(n24) );
  AO221X1_RVT U31 ( .A1(n24), .A2(n4), .A3(n13), .A4(\mem[3][1] ), .A5(rst), 
        .Y(n74) );
  INVX0_RVT U32 ( .A(n8), .Y(n5) );
  AO21X1_RVT U33 ( .A1(n68), .A2(n6), .A3(n5), .Y(n26) );
  AO22X1_RVT U34 ( .A1(\mem[3][2] ), .A2(n13), .A3(n12), .A4(n26), .Y(n73) );
  INVX0_RVT U35 ( .A(n10), .Y(n7) );
  AO21X1_RVT U36 ( .A1(n62), .A2(n8), .A3(n7), .Y(n27) );
  AO22X1_RVT U37 ( .A1(\mem[3][3] ), .A2(n13), .A3(n12), .A4(n27), .Y(n72) );
  INVX0_RVT U38 ( .A(n11), .Y(n9) );
  AO21X1_RVT U39 ( .A1(n61), .A2(n10), .A3(n9), .Y(n28) );
  AO22X1_RVT U40 ( .A1(\mem[3][4] ), .A2(n13), .A3(n12), .A4(n28), .Y(n71) );
  NAND2X0_RVT U41 ( .A1(addr[1]), .A2(n54), .Y(n46) );
  OA21X1_RVT U42 ( .A1(n46), .A2(n20), .A3(n23), .Y(n16) );
  INVX0_RVT U43 ( .A(n16), .Y(n14) );
  NAND2X0_RVT U44 ( .A1(n70), .A2(n23), .Y(n22) );
  AO22X1_RVT U45 ( .A1(n16), .A2(\mem[2][0] ), .A3(n14), .A4(n22), .Y(n67) );
  AO221X1_RVT U46 ( .A1(n24), .A2(n14), .A3(n16), .A4(\mem[2][1] ), .A5(rst), 
        .Y(n66) );
  AND2X1_RVT U47 ( .A1(n23), .A2(n14), .Y(n15) );
  AO22X1_RVT U48 ( .A1(\mem[2][2] ), .A2(n16), .A3(n15), .A4(n26), .Y(n65) );
  AO22X1_RVT U49 ( .A1(\mem[2][3] ), .A2(n16), .A3(n15), .A4(n27), .Y(n64) );
  AO22X1_RVT U50 ( .A1(\mem[2][4] ), .A2(n16), .A3(n15), .A4(n28), .Y(n63) );
  INVX0_RVT U51 ( .A(addr[1]), .Y(n36) );
  NAND2X0_RVT U52 ( .A1(addr[0]), .A2(n36), .Y(n52) );
  OA21X1_RVT U53 ( .A1(n52), .A2(n20), .A3(n23), .Y(n19) );
  INVX0_RVT U54 ( .A(n19), .Y(n17) );
  AO22X1_RVT U55 ( .A1(n19), .A2(\mem[1][0] ), .A3(n17), .A4(n22), .Y(n59) );
  AND2X1_RVT U56 ( .A1(n23), .A2(n17), .Y(n18) );
  AO22X1_RVT U57 ( .A1(\mem[1][1] ), .A2(n19), .A3(n18), .A4(n24), .Y(n58) );
  AO221X1_RVT U58 ( .A1(n26), .A2(n17), .A3(n19), .A4(\mem[1][2] ), .A5(rst), 
        .Y(n57) );
  AO22X1_RVT U59 ( .A1(\mem[1][3] ), .A2(n19), .A3(n18), .A4(n27), .Y(n56) );
  AO22X1_RVT U60 ( .A1(\mem[1][4] ), .A2(n19), .A3(n18), .A4(n28), .Y(n55) );
  NAND2X0_RVT U61 ( .A1(n36), .A2(n54), .Y(n21) );
  OA21X1_RVT U62 ( .A1(n21), .A2(n20), .A3(n23), .Y(n35) );
  INVX0_RVT U63 ( .A(n35), .Y(n25) );
  AO22X1_RVT U64 ( .A1(n35), .A2(\mem[0][0] ), .A3(n25), .A4(n22), .Y(n51) );
  AND2X1_RVT U65 ( .A1(n23), .A2(n25), .Y(n34) );
  AO22X1_RVT U66 ( .A1(\mem[0][1] ), .A2(n35), .A3(n34), .A4(n24), .Y(n50) );
  AO221X1_RVT U67 ( .A1(n26), .A2(n25), .A3(n35), .A4(\mem[0][2] ), .A5(rst), 
        .Y(n49) );
  AO22X1_RVT U68 ( .A1(\mem[0][3] ), .A2(n35), .A3(n34), .A4(n27), .Y(n48) );
  AO22X1_RVT U69 ( .A1(\mem[0][4] ), .A2(n35), .A3(n34), .A4(n28), .Y(n47) );
  NOR2X0_RVT U70 ( .A1(rst), .A2(mem_read), .Y(n76) );
  AO22X1_RVT U71 ( .A1(addr[1]), .A2(N62), .A3(n76), .A4(price[6]), .Y(n43) );
  AO22X1_RVT U72 ( .A1(addr[0]), .A2(N62), .A3(n76), .A4(price[5]), .Y(n42) );
  AO22X1_RVT U73 ( .A1(price[4]), .A2(n76), .A3(N62), .A4(n36), .Y(n41) );
  AO22X1_RVT U74 ( .A1(price[3]), .A2(n76), .A3(N62), .A4(n54), .Y(n40) );
  INVX0_RVT U75 ( .A(n44), .Y(n45) );
  AO22X1_RVT U76 ( .A1(n45), .A2(N62), .A3(n76), .A4(price[2]), .Y(n39) );
  NAND2X0_RVT U77 ( .A1(n52), .A2(n46), .Y(n53) );
  AO22X1_RVT U78 ( .A1(N62), .A2(n53), .A3(n76), .A4(price[1]), .Y(n38) );
  AO22X1_RVT U79 ( .A1(price[0]), .A2(n76), .A3(N62), .A4(n54), .Y(n37) );
  AO22X1_RVT U80 ( .A1(stock[4]), .A2(n76), .A3(N62), .A4(n61), .Y(n33) );
  AO22X1_RVT U81 ( .A1(stock[3]), .A2(n76), .A3(N62), .A4(n62), .Y(n32) );
  AO22X1_RVT U82 ( .A1(stock[2]), .A2(n76), .A3(N62), .A4(n68), .Y(n31) );
  AO22X1_RVT U83 ( .A1(stock[1]), .A2(n76), .A3(N62), .A4(n69), .Y(n30) );
  AO22X1_RVT U84 ( .A1(stock[0]), .A2(n76), .A3(N62), .A4(n70), .Y(n29) );
endmodule


module comparator ( credit, price, stock, can_sell );
  input [7:0] credit;
  input [7:0] price;
  input [7:0] stock;
  output can_sell;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;

  NAND2X0_RVT U2 ( .A1(n15), .A2(n14), .Y(n17) );
  INVX0_RVT U3 ( .A(price[1]), .Y(n3) );
  INVX0_RVT U4 ( .A(credit[0]), .Y(n1) );
  NAND2X0_RVT U5 ( .A1(price[0]), .A2(n1), .Y(n2) );
  AO222X1_RVT U6 ( .A1(credit[1]), .A2(n3), .A3(credit[1]), .A4(n2), .A5(n3), 
        .A6(n2), .Y(n5) );
  INVX0_RVT U7 ( .A(price[2]), .Y(n4) );
  AO222X1_RVT U8 ( .A1(credit[2]), .A2(n5), .A3(credit[2]), .A4(n4), .A5(n5), 
        .A6(n4), .Y(n7) );
  INVX0_RVT U9 ( .A(price[3]), .Y(n6) );
  AO222X1_RVT U10 ( .A1(credit[3]), .A2(n7), .A3(credit[3]), .A4(n6), .A5(n7), 
        .A6(n6), .Y(n9) );
  INVX0_RVT U11 ( .A(price[4]), .Y(n8) );
  AO222X1_RVT U12 ( .A1(credit[4]), .A2(n9), .A3(credit[4]), .A4(n8), .A5(n9), 
        .A6(n8), .Y(n11) );
  INVX0_RVT U13 ( .A(price[5]), .Y(n10) );
  AO222X1_RVT U14 ( .A1(credit[5]), .A2(n11), .A3(credit[5]), .A4(n10), .A5(
        n11), .A6(n10), .Y(n13) );
  INVX0_RVT U15 ( .A(price[6]), .Y(n12) );
  AO222X1_RVT U16 ( .A1(credit[6]), .A2(n13), .A3(credit[6]), .A4(n12), .A5(
        n13), .A6(n12), .Y(n18) );
  INVX0_RVT U17 ( .A(stock[5]), .Y(n15) );
  INVX0_RVT U18 ( .A(stock[4]), .Y(n14) );
  OR4X1_RVT U19 ( .A1(stock[3]), .A2(stock[2]), .A3(stock[1]), .A4(stock[0]), 
        .Y(n16) );
  OA22X1_RVT U20 ( .A1(credit[7]), .A2(n18), .A3(n17), .A4(n16), .Y(can_sell)
         );
endmodule


module subtractor ( credit, price, change );
  input [7:0] credit;
  input [7:0] price;
  output [7:0] change;
  wire   \intadd_0/B[5] , \intadd_0/B[4] , \intadd_0/B[3] , \intadd_0/B[2] ,
         \intadd_0/B[1] , \intadd_0/B[0] , \intadd_0/CI , \intadd_0/SUM[5] ,
         \intadd_0/SUM[4] , \intadd_0/SUM[3] , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n1;

  FADDX1_RVT \intadd_0/U7  ( .A(\intadd_0/B[0] ), .B(price[1]), .CI(
        \intadd_0/CI ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[0] ) );
  FADDX1_RVT \intadd_0/U6  ( .A(\intadd_0/B[1] ), .B(price[2]), .CI(
        \intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[1] ) );
  FADDX1_RVT \intadd_0/U5  ( .A(\intadd_0/B[2] ), .B(price[3]), .CI(
        \intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[2] ) );
  FADDX1_RVT \intadd_0/U4  ( .A(\intadd_0/B[3] ), .B(price[4]), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[3] ) );
  FADDX1_RVT \intadd_0/U3  ( .A(\intadd_0/B[4] ), .B(price[5]), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[4] ) );
  FADDX1_RVT \intadd_0/U2  ( .A(\intadd_0/B[5] ), .B(price[6]), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[5] ) );
  INVX0_RVT U1 ( .A(\intadd_0/SUM[3] ), .Y(change[4]) );
  INVX0_RVT U2 ( .A(\intadd_0/SUM[4] ), .Y(change[5]) );
  INVX0_RVT U3 ( .A(\intadd_0/SUM[0] ), .Y(change[1]) );
  INVX0_RVT U4 ( .A(\intadd_0/SUM[1] ), .Y(change[2]) );
  XOR2X1_RVT U5 ( .A1(\intadd_0/n1 ), .A2(credit[7]), .Y(change[7]) );
  INVX0_RVT U6 ( .A(\intadd_0/SUM[5] ), .Y(change[6]) );
  INVX0_RVT U7 ( .A(\intadd_0/SUM[2] ), .Y(change[3]) );
  INVX0_RVT U8 ( .A(price[0]), .Y(n1) );
  NOR2X0_RVT U9 ( .A1(n1), .A2(credit[0]), .Y(\intadd_0/CI ) );
  INVX0_RVT U10 ( .A(credit[1]), .Y(\intadd_0/B[0] ) );
  INVX0_RVT U11 ( .A(credit[4]), .Y(\intadd_0/B[3] ) );
  INVX0_RVT U12 ( .A(credit[5]), .Y(\intadd_0/B[4] ) );
  INVX0_RVT U13 ( .A(credit[2]), .Y(\intadd_0/B[1] ) );
  INVX0_RVT U14 ( .A(credit[3]), .Y(\intadd_0/B[2] ) );
  INVX0_RVT U15 ( .A(credit[6]), .Y(\intadd_0/B[5] ) );
  AO21X1_RVT U16 ( .A1(credit[0]), .A2(n1), .A3(\intadd_0/CI ), .Y(change[0])
         );
endmodule


module control_unit ( clk, rst, coin_in, confirm, cancel, can_sell, read_valid, 
        credit_load, credit_clear, mem_read, mem_write, dispense, error, 
        change_load, refund_load, state_out );
  input [1:0] coin_in;
  output [2:0] state_out;
  input clk, rst, confirm, cancel, can_sell, read_valid;
  output credit_load, credit_clear, mem_read, mem_write, dispense, error,
         change_load, refund_load;
  wire   cancel, mem_write, n19, n20, n21, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n22, n23, n24, n25;
  assign refund_load = cancel;
  assign dispense = mem_write;

  DFFX1_RVT \current_state_reg[0]  ( .D(n21), .CLK(clk), .Q(state_out[0]), 
        .QN(n25) );
  DFFX1_RVT \current_state_reg[2]  ( .D(n19), .CLK(clk), .Q(state_out[2]), 
        .QN(n23) );
  DFFX1_RVT \current_state_reg[1]  ( .D(n20), .CLK(clk), .Q(state_out[1]), 
        .QN(n24) );
  INVX1_RVT U3 ( .A(cancel), .Y(n10) );
  NAND3X0_RVT U4 ( .A1(state_out[1]), .A2(n10), .A3(n23), .Y(n2) );
  OR3X1_RVT U5 ( .A1(state_out[0]), .A2(read_valid), .A3(n2), .Y(n5) );
  INVX0_RVT U6 ( .A(n5), .Y(mem_read) );
  AND2X1_RVT U7 ( .A1(n10), .A2(n23), .Y(n17) );
  AND2X1_RVT U8 ( .A1(n24), .A2(n17), .Y(n4) );
  OR2X1_RVT U9 ( .A1(coin_in[1]), .A2(coin_in[0]), .Y(n3) );
  AND2X1_RVT U10 ( .A1(n4), .A2(n3), .Y(credit_load) );
  AND4X1_RVT U11 ( .A1(state_out[2]), .A2(n10), .A3(n24), .A4(n25), .Y(
        change_load) );
  AO221X1_RVT U12 ( .A1(state_out[2]), .A2(state_out[1]), .A3(state_out[2]), 
        .A4(n25), .A5(cancel), .Y(credit_clear) );
  AND4X1_RVT U13 ( .A1(state_out[2]), .A2(state_out[0]), .A3(n10), .A4(n24), 
        .Y(error) );
  INVX0_RVT U14 ( .A(rst), .Y(n22) );
  NAND3X0_RVT U15 ( .A1(n17), .A2(state_out[0]), .A3(n24), .Y(n9) );
  AO221X1_RVT U16 ( .A1(n5), .A2(confirm), .A3(n5), .A4(n9), .A5(rst), .Y(n12)
         );
  OR3X1_RVT U17 ( .A1(state_out[1]), .A2(coin_in[0]), .A3(coin_in[1]), .Y(n6)
         );
  AND4X1_RVT U18 ( .A1(n17), .A2(n12), .A3(n25), .A4(n6), .Y(n8) );
  NOR3X0_RVT U19 ( .A1(rst), .A2(confirm), .A3(n9), .Y(n7) );
  AO221X1_RVT U20 ( .A1(n22), .A2(error), .A3(n22), .A4(n8), .A5(n7), .Y(n21)
         );
  INVX0_RVT U21 ( .A(n12), .Y(n15) );
  INVX0_RVT U22 ( .A(n9), .Y(n13) );
  AND4X1_RVT U23 ( .A1(n10), .A2(n23), .A3(n25), .A4(state_out[1]), .Y(n11) );
  AO22X1_RVT U24 ( .A1(n13), .A2(n12), .A3(n11), .A4(can_sell), .Y(n14) );
  AO22X1_RVT U25 ( .A1(state_out[1]), .A2(n15), .A3(n22), .A4(n14), .Y(n20) );
  AND3X1_RVT U26 ( .A1(n17), .A2(state_out[1]), .A3(state_out[0]), .Y(
        mem_write) );
  INVX0_RVT U27 ( .A(can_sell), .Y(n16) );
  AND4X1_RVT U28 ( .A1(state_out[1]), .A2(n17), .A3(read_valid), .A4(n16), .Y(
        n18) );
  AO222X1_RVT U29 ( .A1(n22), .A2(error), .A3(n22), .A4(mem_write), .A5(n22), 
        .A6(n18), .Y(n19) );
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
  wire   refund_load, change_load, credit_load, credit_clear, mem_read,
         mem_write, read_valid, can_sell, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n23, n24, n25, n26, n27, n28, n29, net1235,
         net1236, net1237, net1238, net1239, net1240, net1241;
  wire   [6:0] coin_value;
  wire   [1:0] selected_item;
  wire   [7:0] change;
  wire   [7:0] price;
  wire   [7:0] stock;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  credit_reg u_credit_reg ( .clk(clk), .rst(rst), .credit_load(credit_load), 
        .credit_clear(credit_clear), .coin_value({net1239, coin_value[6], 
        coin_in[1], n18, coin_value[3], net1240, coin_value[1], net1241}), 
        .credit(display) );
  vending_memory u_memory ( .clk(clk), .rst(rst), .mem_read(mem_read), 
        .mem_write(mem_write), .addr({selected_item[1], n20}), .price({
        SYNOPSYS_UNCONNECTED__0, price[6:0]}), .stock({SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, stock[5:0]}), .read_valid(read_valid) );
  comparator u_comparator ( .credit(display), .price({net1236, price[6:0]}), 
        .stock({net1237, net1238, stock[5:0]}), .can_sell(can_sell) );
  subtractor u_subtractor ( .credit(display), .price({net1235, price[6:0]}), 
        .change(change) );
  control_unit u_control_unit ( .clk(clk), .rst(rst), .coin_in(coin_in), 
        .confirm(confirm), .cancel(cancel), .can_sell(can_sell), .read_valid(
        read_valid), .credit_load(credit_load), .credit_clear(credit_clear), 
        .mem_read(mem_read), .mem_write(mem_write), .dispense(dispense), 
        .error(error), .change_load(change_load), .refund_load(refund_load), 
        .state_out(state_out) );
  DFFX1_RVT \selected_item_reg[0]  ( .D(n16), .CLK(clk), .Q(selected_item[0]), 
        .QN(n19) );
  DFFX1_RVT \change_out_reg[7]  ( .D(n15), .CLK(clk), .Q(change_out[7]) );
  DFFX1_RVT \change_out_reg[6]  ( .D(n14), .CLK(clk), .Q(change_out[6]) );
  DFFX1_RVT \change_out_reg[5]  ( .D(n13), .CLK(clk), .Q(change_out[5]) );
  DFFX1_RVT \change_out_reg[4]  ( .D(n12), .CLK(clk), .Q(change_out[4]) );
  DFFX1_RVT \change_out_reg[3]  ( .D(n11), .CLK(clk), .Q(change_out[3]) );
  DFFX1_RVT \change_out_reg[2]  ( .D(n10), .CLK(clk), .Q(change_out[2]) );
  DFFX1_RVT \change_out_reg[1]  ( .D(n9), .CLK(clk), .Q(change_out[1]) );
  DFFX1_RVT \change_out_reg[0]  ( .D(n8), .CLK(clk), .Q(change_out[0]) );
  DFFX2_RVT \selected_item_reg[1]  ( .D(n17), .CLK(clk), .Q(selected_item[1])
         );
  INVX4_RVT U25 ( .A(n19), .Y(n20) );
  INVX0_RVT U28 ( .A(coin_in[1]), .Y(n23) );
  NOR2X0_RVT U29 ( .A1(n23), .A2(coin_in[0]), .Y(coin_value[1]) );
  AND2X1_RVT U30 ( .A1(coin_in[0]), .A2(n23), .Y(coin_value[3]) );
  OR2X1_RVT U31 ( .A1(coin_value[1]), .A2(coin_value[3]), .Y(n18) );
  AND2X1_RVT U32 ( .A1(coin_in[0]), .A2(coin_in[1]), .Y(coin_value[6]) );
  INVX0_RVT U34 ( .A(confirm), .Y(n24) );
  INVX0_RVT U35 ( .A(rst), .Y(n26) );
  OA221X1_RVT U36 ( .A1(confirm), .A2(selected_item[1]), .A3(n24), .A4(
        sel_item[1]), .A5(n26), .Y(n17) );
  OA221X1_RVT U37 ( .A1(confirm), .A2(selected_item[0]), .A3(n24), .A4(
        sel_item[0]), .A5(n26), .Y(n16) );
  NOR3X0_RVT U38 ( .A1(change_load), .A2(rst), .A3(refund_load), .Y(n29) );
  INVX0_RVT U39 ( .A(refund_load), .Y(n25) );
  AND3X1_RVT U40 ( .A1(change_load), .A2(n26), .A3(n25), .Y(n27) );
  AND2X1_RVT U41 ( .A1(refund_load), .A2(n26), .Y(n28) );
  AO222X1_RVT U42 ( .A1(n29), .A2(change_out[7]), .A3(n27), .A4(change[7]), 
        .A5(n28), .A6(display[7]), .Y(n15) );
  AO222X1_RVT U43 ( .A1(n29), .A2(change_out[6]), .A3(n28), .A4(display[6]), 
        .A5(change[6]), .A6(n27), .Y(n14) );
  AO222X1_RVT U44 ( .A1(n29), .A2(change_out[5]), .A3(n28), .A4(display[5]), 
        .A5(change[5]), .A6(n27), .Y(n13) );
  AO222X1_RVT U45 ( .A1(n29), .A2(change_out[4]), .A3(n28), .A4(display[4]), 
        .A5(change[4]), .A6(n27), .Y(n12) );
  AO222X1_RVT U46 ( .A1(n29), .A2(change_out[3]), .A3(n28), .A4(display[3]), 
        .A5(change[3]), .A6(n27), .Y(n11) );
  AO222X1_RVT U47 ( .A1(n29), .A2(change_out[2]), .A3(n28), .A4(display[2]), 
        .A5(change[2]), .A6(n27), .Y(n10) );
  AO222X1_RVT U48 ( .A1(n29), .A2(change_out[1]), .A3(n28), .A4(display[1]), 
        .A5(change[1]), .A6(n27), .Y(n9) );
  AO222X1_RVT U49 ( .A1(n29), .A2(change_out[0]), .A3(n28), .A4(display[0]), 
        .A5(change[0]), .A6(n27), .Y(n8) );
endmodule

