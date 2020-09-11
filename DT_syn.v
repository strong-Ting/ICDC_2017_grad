
module DT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[11]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n4) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n3), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n3), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n4), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n4), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di, fw_finish );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd, fw_finish;
  wire   N19, N34, N35, N36, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N144, N145, N146, N147, N148,
         N149, N150, N151, N152, N153, N154, N155, N156, N157, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N217, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228,
         N229, N230, N278, N279, N280, N281, N282, N283, N284, N285, N286,
         N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N303, N304, N321, N322, N323, N324,
         N325, N326, N327, N328, N329, N330, N331, N332, N438, N439, N440,
         N441, N442, N443, N444, N445, N446, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, \sub_187/carry[13] ,
         \sub_187/carry[12] , \sub_187/carry[11] , \sub_187/carry[10] ,
         \sub_187/carry[9] , \sub_187/carry[8] , \sub_187/carry[7] ,
         \sub_187/carry[6] , \sub_187/carry[5] , \sub_187/carry[4] ,
         \sub_187/carry[3] , \add_184/carry[2] , \add_184/carry[3] ,
         \add_184/carry[4] , \add_184/carry[5] , \add_184/carry[6] ,
         \add_184/carry[7] , \add_184/carry[8] , \add_184/carry[9] ,
         \add_184/carry[10] , \add_184/carry[11] , \add_184/carry[12] ,
         \add_177/carry[13] , \add_177/carry[12] , \add_177/carry[11] ,
         \add_177/carry[10] , \add_177/carry[9] , \add_177/carry[8] ,
         \add_177/carry[7] , \add_177/carry[6] , \add_177/carry[5] ,
         \add_177/carry[4] , \add_177/carry[3] , \sub_174/carry[2] ,
         \sub_174/carry[3] , \sub_174/carry[4] , \sub_174/carry[5] ,
         \sub_174/carry[6] , \sub_174/carry[7] , \sub_174/carry[8] ,
         \sub_174/carry[9] , \sub_174/carry[10] , \sub_174/carry[11] ,
         \sub_174/carry[12] , \sub_174/carry[13] , n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, \add_203/n3 , \add_203/n2 , \add_203/n1 , \add_203/carry[2] ,
         \add_203/carry[5] , \add_203/carry[7] , n557, n558;
  wire   [3:0] next_State;
  wire   [7:0] res_di_addOne;
  wire   [7:0] minTemp;

  DFFSX1 \res_addr_reg[13]  ( .D(n291), .CK(clk), .SN(n330), .Q(n544) );
  DFFSX1 \res_addr_reg[12]  ( .D(n278), .CK(clk), .SN(n330), .Q(n545) );
  DFFSX1 \res_addr_reg[11]  ( .D(n279), .CK(clk), .SN(n330), .Q(n546) );
  DFFSX1 \res_addr_reg[10]  ( .D(n280), .CK(clk), .SN(n330), .Q(n547) );
  DFFSX1 \res_addr_reg[9]  ( .D(n281), .CK(clk), .SN(n330), .Q(n548) );
  DFFSX1 \res_addr_reg[8]  ( .D(n282), .CK(clk), .SN(n330), .Q(n549) );
  DFFSX1 \res_addr_reg[3]  ( .D(n287), .CK(clk), .SN(n330), .Q(n554) );
  DFFSX1 \res_addr_reg[4]  ( .D(n286), .CK(clk), .SN(n330), .Q(n553) );
  DFFSX1 \res_addr_reg[5]  ( .D(n285), .CK(clk), .SN(n330), .Q(n552) );
  DFFSX1 \res_addr_reg[6]  ( .D(n284), .CK(clk), .SN(n329), .Q(n551) );
  DFFSX1 \res_addr_reg[7]  ( .D(n283), .CK(clk), .SN(n329), .Q(n550), .QN(n298) );
  DFFSX1 \res_addr_reg[0]  ( .D(n292), .CK(clk), .SN(n558), .Q(N217), .QN(n294) );
  DFFSX1 \res_addr_reg[1]  ( .D(n289), .CK(clk), .SN(n330), .Q(n556), .QN(n299) );
  DFFSX1 \res_addr_reg[2]  ( .D(n288), .CK(clk), .SN(n330), .Q(n555) );
  DFFRX1 \current_State_reg[3]  ( .D(next_State[3]), .CK(clk), .RN(n330), .Q(
        n542) );
  DFFRX1 \current_State_reg[2]  ( .D(next_State[2]), .CK(clk), .RN(n558), .Q(
        n539) );
  DFFRX1 \current_State_reg[1]  ( .D(next_State[1]), .CK(clk), .RN(n558), .Q(
        n541), .QN(n517) );
  DFFSX1 \counter_reg[2]  ( .D(n275), .CK(clk), .SN(n330), .Q(N36), .QN(n229)
         );
  DFFRX1 \minTemp_reg[0]  ( .D(n274), .CK(clk), .RN(n558), .Q(minTemp[0]), 
        .QN(n265) );
  DFFRX1 \minTemp_reg[3]  ( .D(n271), .CK(clk), .RN(n558), .Q(minTemp[3]), 
        .QN(n262) );
  DFFRX1 \minTemp_reg[7]  ( .D(n267), .CK(clk), .RN(n329), .Q(minTemp[7]), 
        .QN(n258) );
  DFFRX1 \minTemp_reg[6]  ( .D(n268), .CK(clk), .RN(n329), .Q(minTemp[6]), 
        .QN(n259) );
  DFFRX1 \minTemp_reg[5]  ( .D(n269), .CK(clk), .RN(n558), .Q(minTemp[5]), 
        .QN(n260) );
  DFFRX1 \minTemp_reg[4]  ( .D(n270), .CK(clk), .RN(n558), .Q(minTemp[4]), 
        .QN(n261) );
  DFFRX1 \minTemp_reg[2]  ( .D(n272), .CK(clk), .RN(n558), .Q(minTemp[2]), 
        .QN(n263) );
  DFFRX1 \minTemp_reg[1]  ( .D(n273), .CK(clk), .RN(n329), .Q(minTemp[1]), 
        .QN(n264) );
  OAI21X1 U268 ( .A0(n265), .A1(n302), .B0(n441), .Y(n274) );
  OAI222X4 U269 ( .A0(n454), .A1(n442), .B0(n455), .B1(n443), .C0(n259), .C1(
        n302), .Y(n268) );
  NAND2BX4 U270 ( .AN(n460), .B(n440), .Y(n442) );
  NOR2X1 U271 ( .A(n359), .B(n410), .Y(n342) );
  INVX3 U272 ( .A(n494), .Y(n423) );
  INVX6 U273 ( .A(n308), .Y(n341) );
  AOI22X2 U274 ( .A0(N326), .A1(n295), .B0(N182), .B1(n309), .Y(n386) );
  NAND4X2 U275 ( .A(n336), .B(n337), .C(n338), .D(n339), .Y(n292) );
  CLKBUFX3 U276 ( .A(n340), .Y(n314) );
  CLKBUFX3 U277 ( .A(n342), .Y(n309) );
  CLKBUFX3 U278 ( .A(n343), .Y(n311) );
  NAND2X2 U279 ( .A(N131), .B(n434), .Y(n494) );
  OAI2BB1X2 U280 ( .A0N(n458), .A1N(n459), .B0(n440), .Y(n443) );
  NAND2X1 U281 ( .A(N130), .B(next_State[0]), .Y(n356) );
  BUFX4 U282 ( .A(n349), .Y(n310) );
  AND2X2 U283 ( .A(N157), .B(n301), .Y(n300) );
  NAND4BX1 U284 ( .AN(n384), .B(n385), .C(n386), .D(n387), .Y(n283) );
  OR2X4 U285 ( .A(n415), .B(n310), .Y(n412) );
  CLKBUFX3 U286 ( .A(N217), .Y(res_addr[0]) );
  CLKBUFX3 U287 ( .A(n296), .Y(n301) );
  NOR2X4 U288 ( .A(n414), .B(n412), .Y(n295) );
  OAI21X1 U289 ( .A0(n409), .A1(n410), .B0(n411), .Y(n296) );
  NOR2X4 U290 ( .A(n412), .B(n359), .Y(n297) );
  NOR3XL U291 ( .A(N36), .B(N35), .C(N34), .Y(n354) );
  MX4XL U292 ( .A(sti_di[12]), .B(sti_di[13]), .C(sti_di[14]), .D(sti_di[15]), 
        .S0(N34), .S1(N35), .Y(n331) );
  MX4XL U293 ( .A(sti_di[4]), .B(sti_di[5]), .C(sti_di[6]), .D(sti_di[7]), 
        .S0(N34), .S1(N35), .Y(n333) );
  NAND3X2 U294 ( .A(n438), .B(n494), .C(n312), .Y(n491) );
  CLKBUFX2 U295 ( .A(n437), .Y(n312) );
  NAND2X1 U296 ( .A(N131), .B(next_State[2]), .Y(n438) );
  INVX3 U297 ( .A(n438), .Y(n493) );
  NAND2X4 U298 ( .A(n425), .B(next_State[3]), .Y(n415) );
  NAND2X6 U299 ( .A(n535), .B(n536), .Y(n513) );
  NOR4X6 U300 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n536) );
  AOI22XL U301 ( .A0(N438), .A1(n423), .B0(N439), .B1(n493), .Y(n492) );
  NOR2X2 U302 ( .A(n300), .B(n314), .Y(n348) );
  NAND4X2 U303 ( .A(n345), .B(n346), .C(n347), .D(n348), .Y(n291) );
  NOR4X6 U304 ( .A(res_di[3]), .B(res_di[2]), .C(res_di[1]), .D(res_di[0]), 
        .Y(n535) );
  NAND2BX4 U305 ( .AN(n416), .B(n306), .Y(n410) );
  OAI211X4 U306 ( .A0(N19), .A1(n417), .B0(n411), .C0(n418), .Y(n306) );
  AOI32X4 U307 ( .A0(n409), .A1(n414), .A2(n359), .B0(n415), .B1(n416), .Y(
        n424) );
  CLKINVX1 U308 ( .A(n344), .Y(n349) );
  AND3X2 U309 ( .A(n388), .B(n419), .C(n413), .Y(n418) );
  AOI2BB1X1 U310 ( .A0N(n508), .A1N(n509), .B0(n510), .Y(n507) );
  OA22X1 U311 ( .A0(n258), .A1(res_di_addOne[7]), .B0(n478), .B1(n479), .Y(
        n461) );
  OAI221X4 U312 ( .A0(n461), .A1(n460), .B0(n462), .B1(n459), .C0(n458), .Y(
        n302) );
  OR2XL U313 ( .A(n521), .B(n420), .Y(n503) );
  NOR2XL U314 ( .A(n448), .B(n442), .Y(n303) );
  NOR2XL U315 ( .A(n449), .B(n443), .Y(n304) );
  NOR2XL U316 ( .A(n262), .B(n302), .Y(n305) );
  OR3X2 U317 ( .A(n304), .B(n303), .C(n305), .Y(n271) );
  NAND4BX2 U318 ( .AN(n510), .B(n514), .C(n515), .D(n313), .Y(next_State[1])
         );
  NAND4X1 U319 ( .A(n353), .B(n312), .C(n438), .D(n356), .Y(n357) );
  OA21X4 U320 ( .A0(n409), .A1(n412), .B0(n413), .Y(n308) );
  OAI21X2 U321 ( .A0(n513), .A1(n512), .B0(n525), .Y(n524) );
  NOR2X1 U322 ( .A(n434), .B(next_State[1]), .Y(N130) );
  OA22XL U323 ( .A0(n359), .A1(n353), .B0(n414), .B1(n356), .Y(n433) );
  MXI2XL U324 ( .A(n356), .B(n353), .S0(N35), .Y(n435) );
  NAND2XL U325 ( .A(n538), .B(n420), .Y(n512) );
  MX2XL U326 ( .A(n353), .B(n356), .S0(n257), .Y(n436) );
  NOR3XL U327 ( .A(n542), .B(n539), .C(n420), .Y(n516) );
  NAND3XL U328 ( .A(n422), .B(n420), .C(n541), .Y(n525) );
  NAND2XL U329 ( .A(N131), .B(next_State[3]), .Y(n437) );
  NAND4X2 U331 ( .A(n530), .B(n531), .C(n532), .D(n533), .Y(n522) );
  OAI2BB1X4 U332 ( .A0N(n520), .A1N(n294), .B0(n503), .Y(n510) );
  MXI2X2 U333 ( .A(n522), .B(n523), .S0(n298), .Y(n520) );
  XNOR2XL U334 ( .A(N34), .B(n357), .Y(n428) );
  INVX1 U335 ( .A(res_di_addOne[6]), .Y(n454) );
  INVX1 U336 ( .A(res_di_addOne[3]), .Y(n448) );
  AO21XL U337 ( .A0(n486), .A1(n262), .B0(res_di_addOne[3]), .Y(n488) );
  BUFX4 U338 ( .A(n556), .Y(res_addr[1]) );
  CLKBUFX3 U339 ( .A(n550), .Y(res_addr[7]) );
  NOR2XL U340 ( .A(n414), .B(n410), .Y(n343) );
  NOR2X2 U341 ( .A(n423), .B(n439), .Y(n353) );
  XNOR2X1 U342 ( .A(res_addr[13]), .B(n307), .Y(N290) );
  NAND2X1 U343 ( .A(\add_184/carry[12] ), .B(res_addr[12]), .Y(n307) );
  NAND3X2 U344 ( .A(n415), .B(n420), .C(n421), .Y(n413) );
  AOI22X1 U345 ( .A0(N287), .A1(n297), .B0(N301), .B1(n341), .Y(n399) );
  NAND4X1 U346 ( .A(n380), .B(n381), .C(n382), .D(n383), .Y(n284) );
  NAND4X1 U347 ( .A(n376), .B(n377), .C(n378), .D(n379), .Y(n285) );
  NAND4X1 U348 ( .A(n372), .B(n373), .C(n374), .D(n375), .Y(n286) );
  NAND4X1 U349 ( .A(n368), .B(n369), .C(n370), .D(n371), .Y(n287) );
  NAND4X1 U350 ( .A(n401), .B(n402), .C(n403), .D(n404), .Y(n279) );
  NAND4X1 U351 ( .A(n405), .B(n406), .C(n407), .D(n408), .Y(n278) );
  NOR3XL U352 ( .A(n537), .B(n420), .C(n517), .Y(n340) );
  CLKBUFX3 U353 ( .A(n502), .Y(n313) );
  NAND2X1 U354 ( .A(n516), .B(n517), .Y(n502) );
  MX4X1 U355 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N19), .S1(N36), .Y(
        N438) );
  BUFX4 U356 ( .A(n555), .Y(res_addr[2]) );
  MX4X1 U357 ( .A(sti_di[0]), .B(sti_di[1]), .C(sti_di[2]), .D(sti_di[3]), 
        .S0(N34), .S1(N35), .Y(n334) );
  MX4X1 U358 ( .A(sti_di[8]), .B(sti_di[9]), .C(sti_di[10]), .D(sti_di[11]), 
        .S0(N34), .S1(N35), .Y(n332) );
  BUFX4 U359 ( .A(n545), .Y(res_addr[12]) );
  BUFX4 U360 ( .A(n553), .Y(res_addr[4]) );
  BUFX4 U361 ( .A(n554), .Y(res_addr[3]) );
  BUFX4 U362 ( .A(n548), .Y(res_addr[9]) );
  BUFX4 U363 ( .A(n549), .Y(res_addr[8]) );
  BUFX4 U364 ( .A(n551), .Y(res_addr[6]) );
  BUFX4 U365 ( .A(n552), .Y(res_addr[5]) );
  BUFX4 U366 ( .A(n546), .Y(res_addr[11]) );
  BUFX4 U367 ( .A(n547), .Y(res_addr[10]) );
  CLKBUFX3 U368 ( .A(n544), .Y(res_addr[13]) );
  CLKBUFX3 U369 ( .A(n558), .Y(n330) );
  CLKBUFX3 U370 ( .A(n558), .Y(n329) );
  OAI21X2 U371 ( .A0(n513), .A1(n458), .B0(n521), .Y(n531) );
  OAI21X1 U372 ( .A0(n485), .A1(n259), .B0(res_di_addOne[6]), .Y(n484) );
  MX2X1 U373 ( .A(n442), .B(n443), .S0(res_di[0]), .Y(n441) );
  OAI211X4 U374 ( .A0(n504), .A1(n505), .B0(n506), .C0(n507), .Y(next_State[0]) );
  INVX3 U375 ( .A(n424), .Y(n417) );
  NAND2X4 U376 ( .A(n425), .B(next_State[2]), .Y(n416) );
  AOI31X4 U377 ( .A0(n422), .A1(n420), .A2(n416), .B0(n423), .Y(n411) );
  NOR2BX4 U378 ( .AN(next_State[0]), .B(next_State[1]), .Y(n425) );
  OAI211X2 U379 ( .A0(N19), .A1(n417), .B0(n411), .C0(n418), .Y(n344) );
  OAI221X4 U380 ( .A0(n461), .A1(n460), .B0(n462), .B1(n459), .C0(n458), .Y(
        n440) );
  XOR2X1 U381 ( .A(res_addr[12]), .B(\add_184/carry[12] ), .Y(N289) );
  AND2X1 U382 ( .A(\add_184/carry[11] ), .B(res_addr[11]), .Y(
        \add_184/carry[12] ) );
  XOR2X1 U383 ( .A(res_addr[11]), .B(\add_184/carry[11] ), .Y(N288) );
  AND2X1 U384 ( .A(\add_184/carry[10] ), .B(res_addr[10]), .Y(
        \add_184/carry[11] ) );
  XOR2X1 U385 ( .A(res_addr[10]), .B(\add_184/carry[10] ), .Y(N287) );
  AND2X1 U386 ( .A(\add_184/carry[9] ), .B(res_addr[9]), .Y(
        \add_184/carry[10] ) );
  XOR2X1 U387 ( .A(res_addr[9]), .B(\add_184/carry[9] ), .Y(N286) );
  AND2X1 U388 ( .A(\add_184/carry[8] ), .B(res_addr[8]), .Y(\add_184/carry[9] ) );
  XOR2X1 U389 ( .A(res_addr[8]), .B(\add_184/carry[8] ), .Y(N285) );
  OR2X1 U390 ( .A(res_addr[7]), .B(\add_184/carry[7] ), .Y(\add_184/carry[8] )
         );
  XNOR2X1 U391 ( .A(\add_184/carry[7] ), .B(res_addr[7]), .Y(N284) );
  AND2X1 U392 ( .A(\add_184/carry[6] ), .B(res_addr[6]), .Y(\add_184/carry[7] ) );
  XOR2X1 U393 ( .A(res_addr[6]), .B(\add_184/carry[6] ), .Y(N283) );
  AND2X1 U394 ( .A(\add_184/carry[5] ), .B(res_addr[5]), .Y(\add_184/carry[6] ) );
  XOR2X1 U395 ( .A(res_addr[5]), .B(\add_184/carry[5] ), .Y(N282) );
  AND2X1 U396 ( .A(\add_184/carry[4] ), .B(res_addr[4]), .Y(\add_184/carry[5] ) );
  XOR2X1 U397 ( .A(res_addr[4]), .B(\add_184/carry[4] ), .Y(N281) );
  AND2X1 U398 ( .A(\add_184/carry[3] ), .B(res_addr[3]), .Y(\add_184/carry[4] ) );
  XOR2X1 U399 ( .A(res_addr[3]), .B(\add_184/carry[3] ), .Y(N280) );
  AND2X1 U400 ( .A(\add_184/carry[2] ), .B(res_addr[2]), .Y(\add_184/carry[3] ) );
  XOR2X1 U401 ( .A(res_addr[2]), .B(\add_184/carry[2] ), .Y(N279) );
  AND2X1 U402 ( .A(res_addr[0]), .B(res_addr[1]), .Y(\add_184/carry[2] ) );
  XOR2X1 U403 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N278) );
  XNOR2X1 U404 ( .A(res_addr[13]), .B(\sub_174/carry[13] ), .Y(N188) );
  OR2X1 U405 ( .A(res_addr[12]), .B(\sub_174/carry[12] ), .Y(
        \sub_174/carry[13] ) );
  XNOR2X1 U406 ( .A(\sub_174/carry[12] ), .B(res_addr[12]), .Y(N187) );
  OR2X1 U407 ( .A(res_addr[11]), .B(\sub_174/carry[11] ), .Y(
        \sub_174/carry[12] ) );
  XNOR2X1 U408 ( .A(\sub_174/carry[11] ), .B(res_addr[11]), .Y(N186) );
  OR2X1 U409 ( .A(res_addr[10]), .B(\sub_174/carry[10] ), .Y(
        \sub_174/carry[11] ) );
  XNOR2X1 U410 ( .A(\sub_174/carry[10] ), .B(res_addr[10]), .Y(N185) );
  OR2X1 U411 ( .A(res_addr[9]), .B(\sub_174/carry[9] ), .Y(\sub_174/carry[10] ) );
  XNOR2X1 U412 ( .A(\sub_174/carry[9] ), .B(res_addr[9]), .Y(N184) );
  OR2X1 U413 ( .A(res_addr[8]), .B(\sub_174/carry[8] ), .Y(\sub_174/carry[9] )
         );
  XNOR2X1 U414 ( .A(\sub_174/carry[8] ), .B(res_addr[8]), .Y(N183) );
  AND2X1 U415 ( .A(\sub_174/carry[7] ), .B(res_addr[7]), .Y(\sub_174/carry[8] ) );
  XOR2X1 U416 ( .A(res_addr[7]), .B(\sub_174/carry[7] ), .Y(N182) );
  OR2X1 U417 ( .A(res_addr[6]), .B(\sub_174/carry[6] ), .Y(\sub_174/carry[7] )
         );
  XNOR2X1 U418 ( .A(\sub_174/carry[6] ), .B(res_addr[6]), .Y(N181) );
  OR2X1 U419 ( .A(res_addr[5]), .B(\sub_174/carry[5] ), .Y(\sub_174/carry[6] )
         );
  XNOR2X1 U420 ( .A(\sub_174/carry[5] ), .B(res_addr[5]), .Y(N180) );
  OR2X1 U421 ( .A(res_addr[4]), .B(\sub_174/carry[4] ), .Y(\sub_174/carry[5] )
         );
  XNOR2X1 U422 ( .A(\sub_174/carry[4] ), .B(res_addr[4]), .Y(N179) );
  OR2X1 U423 ( .A(res_addr[3]), .B(\sub_174/carry[3] ), .Y(\sub_174/carry[4] )
         );
  XNOR2X1 U424 ( .A(\sub_174/carry[3] ), .B(res_addr[3]), .Y(N178) );
  OR2X1 U425 ( .A(res_addr[2]), .B(\sub_174/carry[2] ), .Y(\sub_174/carry[3] )
         );
  XNOR2X1 U426 ( .A(\sub_174/carry[2] ), .B(res_addr[2]), .Y(N177) );
  OR2X1 U427 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\sub_174/carry[2] ) );
  XNOR2X1 U428 ( .A(res_addr[0]), .B(res_addr[1]), .Y(N176) );
  XNOR2X1 U429 ( .A(res_addr[13]), .B(\sub_187/carry[13] ), .Y(N332) );
  OR2X1 U430 ( .A(res_addr[12]), .B(\sub_187/carry[12] ), .Y(
        \sub_187/carry[13] ) );
  XNOR2X1 U431 ( .A(\sub_187/carry[12] ), .B(res_addr[12]), .Y(N331) );
  OR2X1 U432 ( .A(res_addr[11]), .B(\sub_187/carry[11] ), .Y(
        \sub_187/carry[12] ) );
  XNOR2X1 U433 ( .A(\sub_187/carry[11] ), .B(res_addr[11]), .Y(N330) );
  OR2X1 U434 ( .A(res_addr[10]), .B(\sub_187/carry[10] ), .Y(
        \sub_187/carry[11] ) );
  XNOR2X1 U435 ( .A(\sub_187/carry[10] ), .B(res_addr[10]), .Y(N329) );
  OR2X1 U436 ( .A(res_addr[9]), .B(\sub_187/carry[9] ), .Y(\sub_187/carry[10] ) );
  XNOR2X1 U437 ( .A(\sub_187/carry[9] ), .B(res_addr[9]), .Y(N328) );
  OR2X1 U438 ( .A(res_addr[8]), .B(\sub_187/carry[8] ), .Y(\sub_187/carry[9] )
         );
  XNOR2X1 U439 ( .A(\sub_187/carry[8] ), .B(res_addr[8]), .Y(N327) );
  OR2X1 U440 ( .A(res_addr[7]), .B(\sub_187/carry[7] ), .Y(\sub_187/carry[8] )
         );
  XNOR2X1 U441 ( .A(\sub_187/carry[7] ), .B(res_addr[7]), .Y(N326) );
  AND2X1 U442 ( .A(\sub_187/carry[6] ), .B(res_addr[6]), .Y(\sub_187/carry[7] ) );
  XOR2X1 U443 ( .A(res_addr[6]), .B(\sub_187/carry[6] ), .Y(N325) );
  AND2X1 U444 ( .A(\sub_187/carry[5] ), .B(res_addr[5]), .Y(\sub_187/carry[6] ) );
  XOR2X1 U445 ( .A(res_addr[5]), .B(\sub_187/carry[5] ), .Y(N324) );
  AND2X1 U446 ( .A(\sub_187/carry[4] ), .B(res_addr[4]), .Y(\sub_187/carry[5] ) );
  XOR2X1 U447 ( .A(res_addr[4]), .B(\sub_187/carry[4] ), .Y(N323) );
  AND2X1 U448 ( .A(\sub_187/carry[3] ), .B(res_addr[3]), .Y(\sub_187/carry[4] ) );
  XOR2X1 U449 ( .A(res_addr[3]), .B(\sub_187/carry[3] ), .Y(N322) );
  AND2X1 U450 ( .A(res_addr[1]), .B(res_addr[2]), .Y(\sub_187/carry[3] ) );
  XOR2X1 U451 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N321) );
  XOR2X1 U452 ( .A(res_addr[13]), .B(\add_177/carry[13] ), .Y(N230) );
  AND2X1 U453 ( .A(\add_177/carry[12] ), .B(res_addr[12]), .Y(
        \add_177/carry[13] ) );
  XOR2X1 U454 ( .A(res_addr[12]), .B(\add_177/carry[12] ), .Y(N229) );
  AND2X1 U455 ( .A(\add_177/carry[11] ), .B(res_addr[11]), .Y(
        \add_177/carry[12] ) );
  XOR2X1 U456 ( .A(res_addr[11]), .B(\add_177/carry[11] ), .Y(N228) );
  AND2X1 U457 ( .A(\add_177/carry[10] ), .B(res_addr[10]), .Y(
        \add_177/carry[11] ) );
  XOR2X1 U458 ( .A(res_addr[10]), .B(\add_177/carry[10] ), .Y(N227) );
  AND2X1 U459 ( .A(\add_177/carry[9] ), .B(res_addr[9]), .Y(
        \add_177/carry[10] ) );
  XOR2X1 U460 ( .A(res_addr[9]), .B(\add_177/carry[9] ), .Y(N226) );
  AND2X1 U461 ( .A(\add_177/carry[8] ), .B(res_addr[8]), .Y(\add_177/carry[9] ) );
  XOR2X1 U462 ( .A(res_addr[8]), .B(\add_177/carry[8] ), .Y(N225) );
  AND2X1 U463 ( .A(\add_177/carry[7] ), .B(res_addr[7]), .Y(\add_177/carry[8] ) );
  XOR2X1 U464 ( .A(res_addr[7]), .B(\add_177/carry[7] ), .Y(N224) );
  OR2X1 U465 ( .A(res_addr[6]), .B(\add_177/carry[6] ), .Y(\add_177/carry[7] )
         );
  XNOR2X1 U466 ( .A(\add_177/carry[6] ), .B(res_addr[6]), .Y(N223) );
  OR2X1 U467 ( .A(res_addr[5]), .B(\add_177/carry[5] ), .Y(\add_177/carry[6] )
         );
  XNOR2X1 U468 ( .A(\add_177/carry[5] ), .B(res_addr[5]), .Y(N222) );
  OR2X1 U469 ( .A(res_addr[4]), .B(\add_177/carry[4] ), .Y(\add_177/carry[5] )
         );
  XNOR2X1 U470 ( .A(\add_177/carry[4] ), .B(res_addr[4]), .Y(N221) );
  OR2X1 U471 ( .A(res_addr[3]), .B(\add_177/carry[3] ), .Y(\add_177/carry[4] )
         );
  XNOR2X1 U472 ( .A(\add_177/carry[3] ), .B(res_addr[3]), .Y(N220) );
  OR2X1 U473 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\add_177/carry[3] ) );
  XNOR2X1 U474 ( .A(res_addr[1]), .B(res_addr[2]), .Y(N219) );
  CLKINVX1 U475 ( .A(n335), .Y(n543) );
  AOI21X1 U476 ( .A0(N144), .A1(n301), .B0(n314), .Y(n339) );
  AOI22X1 U477 ( .A0(n294), .A1(n297), .B0(N291), .B1(n341), .Y(n338) );
  AOI22X1 U478 ( .A0(res_addr[0]), .A1(n295), .B0(n294), .B1(n309), .Y(n337)
         );
  AOI2BB2X1 U479 ( .B0(res_addr[0]), .B1(n311), .A0N(n306), .A1N(n294), .Y(
        n336) );
  AOI22X1 U480 ( .A0(N290), .A1(n297), .B0(N304), .B1(n341), .Y(n347) );
  AOI22X1 U481 ( .A0(N332), .A1(n295), .B0(N188), .B1(n309), .Y(n346) );
  AOI22X1 U482 ( .A0(N230), .A1(n311), .B0(n310), .B1(res_addr[13]), .Y(n345)
         );
  NAND2X1 U483 ( .A(n350), .B(n335), .Y(n290) );
  MXI2X1 U484 ( .A(n351), .B(n352), .S0(N19), .Y(n350) );
  OAI221XL U485 ( .A0(n353), .A1(n354), .B0(n355), .B1(n356), .C0(n357), .Y(
        n352) );
  OAI22XL U486 ( .A0(n358), .A1(n356), .B0(n353), .B1(n359), .Y(n351) );
  NAND4X1 U487 ( .A(n360), .B(n361), .C(n362), .D(n363), .Y(n289) );
  AOI21X1 U488 ( .A0(N145), .A1(n301), .B0(n314), .Y(n363) );
  AOI22X1 U489 ( .A0(N278), .A1(n297), .B0(N292), .B1(n341), .Y(n362) );
  AOI22X1 U490 ( .A0(n299), .A1(n295), .B0(N176), .B1(n309), .Y(n361) );
  AOI22X1 U491 ( .A0(n299), .A1(n311), .B0(n310), .B1(res_addr[1]), .Y(n360)
         );
  NAND4X1 U492 ( .A(n364), .B(n365), .C(n366), .D(n367), .Y(n288) );
  AOI21X1 U493 ( .A0(N146), .A1(n301), .B0(n314), .Y(n367) );
  AOI22X1 U494 ( .A0(N279), .A1(n297), .B0(N293), .B1(n341), .Y(n366) );
  AOI22X1 U495 ( .A0(N321), .A1(n295), .B0(N177), .B1(n309), .Y(n365) );
  AOI22X1 U496 ( .A0(N219), .A1(n311), .B0(n310), .B1(res_addr[2]), .Y(n364)
         );
  AOI21X1 U497 ( .A0(N147), .A1(n301), .B0(n314), .Y(n371) );
  AOI22X1 U498 ( .A0(N280), .A1(n297), .B0(N294), .B1(n341), .Y(n370) );
  AOI22X1 U499 ( .A0(N322), .A1(n295), .B0(N178), .B1(n309), .Y(n369) );
  AOI22X1 U500 ( .A0(N220), .A1(n311), .B0(n310), .B1(res_addr[3]), .Y(n368)
         );
  AOI21X1 U501 ( .A0(N148), .A1(n301), .B0(n314), .Y(n375) );
  AOI22X1 U502 ( .A0(N281), .A1(n297), .B0(N295), .B1(n341), .Y(n374) );
  AOI22X1 U503 ( .A0(N323), .A1(n295), .B0(N179), .B1(n309), .Y(n373) );
  AOI22X1 U504 ( .A0(N221), .A1(n311), .B0(n310), .B1(res_addr[4]), .Y(n372)
         );
  AOI21X1 U505 ( .A0(N149), .A1(n301), .B0(n314), .Y(n379) );
  AOI22X1 U506 ( .A0(N282), .A1(n297), .B0(N296), .B1(n341), .Y(n378) );
  AOI22X1 U507 ( .A0(N324), .A1(n295), .B0(N180), .B1(n309), .Y(n377) );
  AOI22X1 U508 ( .A0(N222), .A1(n311), .B0(n310), .B1(res_addr[5]), .Y(n376)
         );
  AOI21X1 U509 ( .A0(N150), .A1(n301), .B0(n314), .Y(n383) );
  AOI22X1 U510 ( .A0(N283), .A1(n297), .B0(N297), .B1(n341), .Y(n382) );
  AOI22X1 U511 ( .A0(N325), .A1(n295), .B0(N181), .B1(n309), .Y(n381) );
  AOI22X1 U512 ( .A0(N223), .A1(n311), .B0(n310), .B1(res_addr[6]), .Y(n380)
         );
  AOI22X1 U513 ( .A0(N284), .A1(n297), .B0(N298), .B1(n341), .Y(n387) );
  AOI2BB2X1 U514 ( .B0(N224), .B1(n311), .A0N(n306), .A1N(n298), .Y(n385) );
  OAI2BB1X1 U515 ( .A0N(N151), .A1N(n296), .B0(n388), .Y(n384) );
  NAND4X1 U516 ( .A(n389), .B(n390), .C(n391), .D(n392), .Y(n282) );
  AOI21X1 U517 ( .A0(N152), .A1(n301), .B0(n314), .Y(n392) );
  AOI22X1 U518 ( .A0(N285), .A1(n297), .B0(N299), .B1(n341), .Y(n391) );
  AOI22X1 U519 ( .A0(N327), .A1(n295), .B0(N183), .B1(n309), .Y(n390) );
  AOI22X1 U520 ( .A0(N225), .A1(n311), .B0(n310), .B1(res_addr[8]), .Y(n389)
         );
  NAND4X1 U521 ( .A(n393), .B(n394), .C(n395), .D(n396), .Y(n281) );
  AOI21X1 U522 ( .A0(N153), .A1(n301), .B0(n314), .Y(n396) );
  AOI22X1 U523 ( .A0(N286), .A1(n297), .B0(N300), .B1(n341), .Y(n395) );
  AOI22X1 U524 ( .A0(N328), .A1(n295), .B0(N184), .B1(n309), .Y(n394) );
  AOI22X1 U525 ( .A0(N226), .A1(n311), .B0(n310), .B1(res_addr[9]), .Y(n393)
         );
  NAND4X1 U526 ( .A(n397), .B(n398), .C(n399), .D(n400), .Y(n280) );
  AOI21X1 U527 ( .A0(N154), .A1(n301), .B0(n314), .Y(n400) );
  AOI22X1 U528 ( .A0(N329), .A1(n295), .B0(N185), .B1(n309), .Y(n398) );
  AOI22X1 U529 ( .A0(N227), .A1(n311), .B0(n310), .B1(res_addr[10]), .Y(n397)
         );
  AOI21X1 U530 ( .A0(N155), .A1(n301), .B0(n314), .Y(n404) );
  AOI22X1 U531 ( .A0(N288), .A1(n297), .B0(N302), .B1(n341), .Y(n403) );
  AOI22X1 U532 ( .A0(N330), .A1(n295), .B0(N186), .B1(n309), .Y(n402) );
  AOI22X1 U533 ( .A0(N228), .A1(n311), .B0(n310), .B1(res_addr[11]), .Y(n401)
         );
  AOI21X1 U534 ( .A0(N156), .A1(n301), .B0(n314), .Y(n408) );
  AOI22X1 U535 ( .A0(N289), .A1(n297), .B0(N303), .B1(n341), .Y(n407) );
  AOI22X1 U536 ( .A0(N331), .A1(n295), .B0(N187), .B1(n309), .Y(n406) );
  AOI22X1 U537 ( .A0(N229), .A1(n311), .B0(n310), .B1(res_addr[12]), .Y(n405)
         );
  OA22X1 U538 ( .A0(n426), .A1(N36), .B0(n427), .B1(N34), .Y(n409) );
  XNOR2X1 U539 ( .A(n256), .B(n229), .Y(n427) );
  NAND2X1 U540 ( .A(n428), .B(n335), .Y(n277) );
  OAI211X1 U541 ( .A0(n426), .A1(n356), .B0(n335), .C0(n429), .Y(n276) );
  MXI2X1 U542 ( .A(n430), .B(n431), .S0(N35), .Y(n429) );
  NOR2X1 U543 ( .A(n353), .B(N34), .Y(n430) );
  NAND3X1 U544 ( .A(n432), .B(n335), .C(n433), .Y(n275) );
  NAND3X1 U545 ( .A(N35), .B(N34), .C(n229), .Y(n414) );
  CLKINVX1 U546 ( .A(n354), .Y(n359) );
  NAND2X1 U547 ( .A(n434), .B(n425), .Y(n335) );
  OAI21XL U548 ( .A0(n431), .A1(n435), .B0(N36), .Y(n432) );
  NAND2X1 U549 ( .A(n436), .B(n357), .Y(n431) );
  OAI222XL U550 ( .A0(n444), .A1(n442), .B0(n445), .B1(n443), .C0(n264), .C1(
        n302), .Y(n273) );
  CLKINVX1 U551 ( .A(res_di[1]), .Y(n445) );
  CLKINVX1 U552 ( .A(res_di_addOne[1]), .Y(n444) );
  OAI222XL U553 ( .A0(n446), .A1(n442), .B0(n447), .B1(n443), .C0(n263), .C1(
        n302), .Y(n272) );
  CLKINVX1 U554 ( .A(res_di[2]), .Y(n447) );
  OAI222XL U555 ( .A0(n450), .A1(n442), .B0(n451), .B1(n443), .C0(n261), .C1(
        n302), .Y(n270) );
  OAI222XL U556 ( .A0(n452), .A1(n442), .B0(n453), .B1(n443), .C0(n260), .C1(
        n302), .Y(n269) );
  OAI222XL U557 ( .A0(n456), .A1(n442), .B0(n457), .B1(n443), .C0(n258), .C1(
        n302), .Y(n267) );
  AOI221XL U558 ( .A0(minTemp[7]), .A1(n457), .B0(n463), .B1(n464), .C0(n465), 
        .Y(n462) );
  NOR3X1 U559 ( .A(N36), .B(n426), .C(N19), .Y(n465) );
  OAI32X1 U560 ( .A0(n466), .A1(n467), .A2(n468), .B0(n469), .B1(n470), .Y(
        n464) );
  NOR2X1 U561 ( .A(minTemp[6]), .B(n471), .Y(n470) );
  AOI21X1 U562 ( .A0(n471), .A1(minTemp[6]), .B0(n455), .Y(n469) );
  OAI32X1 U563 ( .A0(n467), .A1(res_di[4]), .A2(n261), .B0(res_di[5]), .B1(
        n260), .Y(n471) );
  AOI211X1 U564 ( .A0(n472), .A1(minTemp[3]), .B0(n473), .C0(n474), .Y(n468)
         );
  AOI222XL U565 ( .A0(n475), .A1(n476), .B0(res_di[3]), .B1(n262), .C0(
        res_di[2]), .C1(n263), .Y(n474) );
  CLKINVX1 U566 ( .A(n477), .Y(n476) );
  AOI211X1 U567 ( .A0(n264), .A1(res_di[1]), .B0(n265), .C0(res_di[0]), .Y(
        n477) );
  OR2X1 U568 ( .A(n264), .B(res_di[1]), .Y(n475) );
  OA21XL U569 ( .A0(minTemp[3]), .A1(n472), .B0(n449), .Y(n473) );
  CLKINVX1 U570 ( .A(res_di[3]), .Y(n449) );
  NOR2X1 U571 ( .A(res_di[2]), .B(n263), .Y(n472) );
  NOR2X1 U572 ( .A(n453), .B(minTemp[5]), .Y(n467) );
  CLKINVX1 U573 ( .A(res_di[5]), .Y(n453) );
  OAI22XL U574 ( .A0(minTemp[4]), .A1(n451), .B0(minTemp[6]), .B1(n455), .Y(
        n466) );
  CLKINVX1 U575 ( .A(res_di[6]), .Y(n455) );
  CLKINVX1 U576 ( .A(res_di[4]), .Y(n451) );
  NAND2X1 U577 ( .A(res_di[7]), .B(n258), .Y(n463) );
  CLKINVX1 U578 ( .A(res_di[7]), .Y(n457) );
  NOR2X1 U579 ( .A(minTemp[7]), .B(n456), .Y(n479) );
  AOI32X1 U580 ( .A0(n480), .A1(n481), .A2(n482), .B0(n483), .B1(n484), .Y(
        n478) );
  NAND2X1 U581 ( .A(n485), .B(n259), .Y(n483) );
  AOI32X1 U582 ( .A0(n481), .A1(n450), .A2(minTemp[4]), .B0(n452), .B1(
        minTemp[5]), .Y(n485) );
  CLKINVX1 U583 ( .A(res_di_addOne[5]), .Y(n452) );
  CLKINVX1 U584 ( .A(res_di_addOne[4]), .Y(n450) );
  AOI2BB2X1 U585 ( .B0(res_di_addOne[4]), .B1(n261), .A0N(n454), .A1N(
        minTemp[6]), .Y(n482) );
  NAND2X1 U586 ( .A(res_di_addOne[5]), .B(n260), .Y(n481) );
  OAI211X1 U587 ( .A0(n262), .A1(n486), .B0(n487), .C0(n488), .Y(n480) );
  OAI222XL U588 ( .A0(minTemp[2]), .A1(n446), .B0(minTemp[3]), .B1(n448), .C0(
        n489), .C1(n490), .Y(n487) );
  NOR2X1 U589 ( .A(res_di_addOne[1]), .B(n264), .Y(n490) );
  AOI211X1 U590 ( .A0(res_di_addOne[1]), .A1(n264), .B0(res_di_addOne[0]), 
        .C0(n265), .Y(n489) );
  NAND2X1 U591 ( .A(n446), .B(minTemp[2]), .Y(n486) );
  CLKINVX1 U592 ( .A(res_di_addOne[2]), .Y(n446) );
  CLKINVX1 U593 ( .A(res_di_addOne[7]), .Y(n456) );
  OAI221XL U594 ( .A0(n491), .A1(n228), .B0(n265), .B1(n312), .C0(n492), .Y(
        n266) );
  OAI221XL U595 ( .A0(n491), .A1(n227), .B0(n264), .B1(n312), .C0(n495), .Y(
        n251) );
  NAND2X1 U596 ( .A(N440), .B(n493), .Y(n495) );
  OAI221XL U597 ( .A0(n491), .A1(n226), .B0(n263), .B1(n312), .C0(n496), .Y(
        n250) );
  NAND2X1 U598 ( .A(N441), .B(n493), .Y(n496) );
  OAI221XL U599 ( .A0(n491), .A1(n225), .B0(n262), .B1(n312), .C0(n497), .Y(
        n249) );
  NAND2X1 U600 ( .A(N442), .B(n493), .Y(n497) );
  OAI221XL U601 ( .A0(n491), .A1(n224), .B0(n261), .B1(n312), .C0(n498), .Y(
        n248) );
  NAND2X1 U602 ( .A(N443), .B(n493), .Y(n498) );
  OAI221XL U603 ( .A0(n491), .A1(n223), .B0(n260), .B1(n312), .C0(n499), .Y(
        n247) );
  NAND2X1 U604 ( .A(N444), .B(n493), .Y(n499) );
  OAI221XL U605 ( .A0(n491), .A1(n222), .B0(n259), .B1(n312), .C0(n500), .Y(
        n246) );
  NAND2X1 U606 ( .A(N445), .B(n493), .Y(n500) );
  OAI221XL U607 ( .A0(n491), .A1(n221), .B0(n258), .B1(n312), .C0(n501), .Y(
        n245) );
  NAND2X1 U608 ( .A(N446), .B(n493), .Y(n501) );
  NAND2X1 U609 ( .A(n232), .B(n419), .Y(n244) );
  CLKMX2X2 U610 ( .A(N120), .B(sti_addr[0]), .S0(n313), .Y(n243) );
  CLKMX2X2 U611 ( .A(N121), .B(sti_addr[1]), .S0(n313), .Y(n242) );
  CLKMX2X2 U612 ( .A(N122), .B(sti_addr[2]), .S0(n313), .Y(n241) );
  CLKMX2X2 U613 ( .A(N123), .B(sti_addr[3]), .S0(n313), .Y(n240) );
  CLKMX2X2 U614 ( .A(N124), .B(sti_addr[4]), .S0(n313), .Y(n239) );
  CLKMX2X2 U615 ( .A(N125), .B(sti_addr[5]), .S0(n313), .Y(n238) );
  CLKMX2X2 U616 ( .A(N126), .B(sti_addr[6]), .S0(n313), .Y(n237) );
  CLKMX2X2 U617 ( .A(N127), .B(sti_addr[7]), .S0(n313), .Y(n236) );
  CLKMX2X2 U618 ( .A(N128), .B(sti_addr[8]), .S0(n313), .Y(n235) );
  CLKMX2X2 U619 ( .A(N129), .B(sti_addr[9]), .S0(n313), .Y(n234) );
  NAND2X1 U620 ( .A(n230), .B(n503), .Y(n233) );
  CLKINVX1 U621 ( .A(n511), .Y(n508) );
  OAI2BB1X1 U622 ( .A0N(n512), .A1N(n458), .B0(n513), .Y(n506) );
  CLKINVX1 U623 ( .A(n439), .Y(n505) );
  OA21XL U624 ( .A0(n358), .A1(n255), .B0(n541), .Y(n504) );
  OAI211X1 U625 ( .A0(n358), .A1(n518), .B0(n541), .C0(n439), .Y(n515) );
  NOR3X1 U626 ( .A(n540), .B(n539), .C(n542), .Y(n439) );
  OAI31XL U627 ( .A0(n294), .A1(n519), .A2(n298), .B0(N19), .Y(n518) );
  CLKINVX1 U628 ( .A(n355), .Y(n358) );
  NOR3X1 U629 ( .A(n256), .B(n257), .C(n229), .Y(n355) );
  NAND2X1 U630 ( .A(n509), .B(n511), .Y(n514) );
  NAND2X1 U631 ( .A(n460), .B(n459), .Y(n511) );
  NOR3X1 U632 ( .A(n426), .B(n229), .C(N19), .Y(n509) );
  NAND2X1 U633 ( .A(n256), .B(N34), .Y(n426) );
  NAND2BX1 U634 ( .AN(n519), .B(n524), .Y(n523) );
  NAND4X1 U635 ( .A(n526), .B(n527), .C(n528), .D(n529), .Y(n519) );
  AND3X1 U636 ( .A(res_addr[12]), .B(res_addr[10]), .C(res_addr[11]), .Y(n529)
         );
  AND3X1 U637 ( .A(res_addr[2]), .B(res_addr[13]), .C(res_addr[1]), .Y(n528)
         );
  AND3X1 U638 ( .A(res_addr[5]), .B(res_addr[3]), .C(res_addr[4]), .Y(n527) );
  AND3X1 U639 ( .A(res_addr[9]), .B(res_addr[6]), .C(res_addr[8]), .Y(n526) );
  NOR4X1 U640 ( .A(n534), .B(res_addr[2]), .C(res_addr[4]), .D(res_addr[3]), 
        .Y(n533) );
  OR4X1 U641 ( .A(res_addr[5]), .B(res_addr[6]), .C(res_addr[8]), .D(
        res_addr[9]), .Y(n534) );
  NOR3X1 U642 ( .A(res_addr[12]), .B(res_addr[1]), .C(res_addr[13]), .Y(n532)
         );
  NOR2X1 U643 ( .A(res_addr[11]), .B(res_addr[10]), .Y(n530) );
  NOR2X1 U644 ( .A(next_State[2]), .B(next_State[3]), .Y(n434) );
  NAND4X1 U645 ( .A(n458), .B(n521), .C(n419), .D(n460), .Y(next_State[3]) );
  NAND3X1 U646 ( .A(n421), .B(n517), .C(n540), .Y(n460) );
  CLKINVX1 U647 ( .A(n314), .Y(n419) );
  NAND2X1 U648 ( .A(n541), .B(n421), .Y(n521) );
  NAND3X1 U649 ( .A(n517), .B(n420), .C(n421), .Y(n458) );
  NOR2BX1 U650 ( .AN(n542), .B(n539), .Y(n421) );
  NAND4X1 U651 ( .A(n388), .B(n459), .C(n512), .D(n525), .Y(next_State[2]) );
  NAND2X1 U652 ( .A(n538), .B(n540), .Y(n459) );
  NOR2X1 U653 ( .A(n537), .B(n541), .Y(n538) );
  CLKINVX1 U654 ( .A(n422), .Y(n537) );
  NOR2BX1 U655 ( .AN(n539), .B(n542), .Y(n422) );
  NAND2X1 U656 ( .A(n516), .B(n541), .Y(n388) );
  DT_DW01_inc_0 add_225_S2 ( .A(minTemp), .SUM({N446, N445, N444, N443, N442, 
        N441, N440, N439}) );
  DT_DW01_inc_2 add_145_S2 ( .A(sti_addr), .SUM({N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120}) );
  DT_DW01_dec_0 r349 ( .A(res_addr), .SUM({N304, N303, N302, N301, N300, N299, 
        N298, N297, N296, N295, N294, N293, N292, N291}) );
  DT_DW01_inc_3 r345 ( .A(res_addr), .SUM({N157, N156, N155, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146, N145, N144}) );
  XOR2X1 \add_203/U8  ( .A(\add_203/carry[7] ), .B(res_di[7]), .Y(
        res_di_addOne[7]) );
  INVXL \add_203/U7  ( .A(res_di[0]), .Y(res_di_addOne[0]) );
  XOR2XL \add_203/U6  ( .A(res_di[3]), .B(\add_203/n3 ), .Y(res_di_addOne[3])
         );
  XOR2XL \add_203/U5  ( .A(res_di[2]), .B(\add_203/carry[2] ), .Y(
        res_di_addOne[2]) );
  AND2X2 \add_203/U4  ( .A(res_di[2]), .B(\add_203/carry[2] ), .Y(\add_203/n3 ) );
  AND2X2 \add_203/U3  ( .A(res_di[5]), .B(\add_203/carry[5] ), .Y(\add_203/n2 ) );
  AND2X2 \add_203/U2  ( .A(res_di[3]), .B(\add_203/n3 ), .Y(\add_203/n1 ) );
  XOR2X1 \add_203/U1  ( .A(res_di[5]), .B(\add_203/carry[5] ), .Y(
        res_di_addOne[5]) );
  ADDHXL \add_203/U1_1_6  ( .A(res_di[6]), .B(\add_203/n2 ), .CO(
        \add_203/carry[7] ), .S(res_di_addOne[6]) );
  ADDHX1 \add_203/U1_1_1  ( .A(res_di[1]), .B(res_di[0]), .CO(
        \add_203/carry[2] ), .S(res_di_addOne[1]) );
  ADDHX2 \add_203/U1_1_4  ( .A(res_di[4]), .B(\add_203/n1 ), .CO(
        \add_203/carry[5] ), .S(res_di_addOne[4]) );
  DFFSX2 \counter_reg[0]  ( .D(n277), .CK(clk), .SN(n558), .Q(N34), .QN(n257)
         );
  DFFRX2 \sti_addr_reg[0]  ( .D(n243), .CK(clk), .RN(n330), .Q(sti_addr[0]) );
  DFFSX2 \counter_reg[1]  ( .D(n276), .CK(clk), .SN(n330), .Q(N35), .QN(n256)
         );
  DFFRX2 \sti_addr_reg[9]  ( .D(n234), .CK(clk), .RN(n558), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n239), .CK(clk), .RN(n558), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n240), .CK(clk), .RN(n329), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n241), .CK(clk), .RN(n330), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n242), .CK(clk), .RN(n329), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n238), .CK(clk), .RN(n558), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n237), .CK(clk), .RN(n330), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n236), .CK(clk), .RN(n558), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n235), .CK(clk), .RN(n558), .Q(sti_addr[8]) );
  DFFRX2 \current_State_reg[0]  ( .D(next_State[0]), .CK(clk), .RN(n329), .Q(
        n540), .QN(n420) );
  DFFSX2 \counter_reg[3]  ( .D(n290), .CK(clk), .SN(n558), .Q(N19), .QN(n255)
         );
  DFFRX2 res_wr_reg ( .D(N131), .CK(clk), .RN(n558), .Q(res_wr) );
  DFFRX2 res_rd_reg ( .D(N130), .CK(clk), .RN(n558), .Q(res_rd) );
  DFFRX2 sti_rd_reg ( .D(n543), .CK(clk), .RN(n558), .Q(sti_rd) );
  DFFRX2 done_reg ( .D(n233), .CK(clk), .RN(n558), .Q(done), .QN(n230) );
  DFFRX2 fw_finish_reg ( .D(n244), .CK(clk), .RN(n329), .Q(fw_finish), .QN(
        n232) );
  DFFRX2 \res_do_reg[7]  ( .D(n245), .CK(clk), .RN(n329), .Q(res_do[7]), .QN(
        n221) );
  DFFRX2 \res_do_reg[6]  ( .D(n246), .CK(clk), .RN(n329), .Q(res_do[6]), .QN(
        n222) );
  DFFRX2 \res_do_reg[5]  ( .D(n247), .CK(clk), .RN(n329), .Q(res_do[5]), .QN(
        n223) );
  DFFRX2 \res_do_reg[4]  ( .D(n248), .CK(clk), .RN(n329), .Q(res_do[4]), .QN(
        n224) );
  DFFRX2 \res_do_reg[3]  ( .D(n249), .CK(clk), .RN(n329), .Q(res_do[3]), .QN(
        n225) );
  DFFRX2 \res_do_reg[2]  ( .D(n250), .CK(clk), .RN(n329), .Q(res_do[2]), .QN(
        n226) );
  DFFRX2 \res_do_reg[1]  ( .D(n251), .CK(clk), .RN(n329), .Q(res_do[1]), .QN(
        n227) );
  DFFRX2 \res_do_reg[0]  ( .D(n266), .CK(clk), .RN(n329), .Q(res_do[0]), .QN(
        n228) );
  INVX3 U330 ( .A(reset), .Y(n557) );
  INVX4 U657 ( .A(n557), .Y(n558) );
  NOR2BX2 U658 ( .AN(next_State[1]), .B(next_State[0]), .Y(N131) );
endmodule

