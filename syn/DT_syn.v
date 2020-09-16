/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Sep 16 18:09:57 2020
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0_DW01_inc_1 ( A, SUM );
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


module DT_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  CMPR22X2 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(n1), .CO(carry[4]), .S(SUM[3]) );
  AND2X2 U1 ( .A(A[2]), .B(carry[2]), .Y(n1) );
  XOR2XL U2 ( .A(A[2]), .B(carry[2]), .Y(SUM[2]) );
  INVXL U3 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U4 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_2_DW01_inc_3 ( A, SUM );
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


module DT_DW01_dec_0_DW01_dec_1 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[10]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[11]), .Y(n3) );
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


module DT_DW01_inc_3_DW01_inc_4 ( A, SUM );
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
  wire   N37, N38, N39, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, N133, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N189, N190, N191, N192,
         N193, N194, N195, N196, N197, N198, N199, N200, N201, N230, N232,
         N233, N234, N235, N236, N237, N238, N239, N240, N241, N242, N243,
         N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N309, N310, N311, N312, N313, N314, N315, N316, N317,
         N318, N319, N320, N321, N322, N339, N340, N341, N342, N343, N344,
         N345, N346, N347, N348, N349, N350, N464, N465, N466, N467, N468,
         N469, N470, N471, N472, n210, n211, n212, n213, n214, n215, n216,
         n217, n219, n220, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n257, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, \add_184/carry[2] , \add_184/carry[3] ,
         \add_184/carry[4] , \add_184/carry[5] , \add_184/carry[6] ,
         \add_184/carry[7] , \add_184/carry[8] , \add_184/carry[9] ,
         \add_184/carry[10] , \add_184/carry[11] , \add_184/carry[12] ,
         \add_184/carry[13] , \sub_174/carry[2] , \sub_174/carry[3] ,
         \sub_174/carry[4] , \sub_174/carry[5] , \sub_174/carry[6] ,
         \sub_174/carry[7] , \sub_174/carry[8] , \sub_174/carry[9] ,
         \sub_174/carry[10] , \sub_174/carry[11] , \sub_174/carry[12] ,
         \sub_174/carry[13] , n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n589, n590;
  wire   [3:0] next_State;
  wire   [7:0] res_di_addOne;
  wire   [7:0] minTemp;
  wire   [14:0] \sub_187/carry ;
  wire   [13:1] \add_177/carry ;

  DFFRX2 \sti_addr_reg[9]  ( .D(n233), .CK(clk), .RN(n590), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n236), .CK(clk), .RN(n345), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n235), .CK(clk), .RN(n590), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n234), .CK(clk), .RN(n590), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n241), .CK(clk), .RN(n345), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n240), .CK(clk), .RN(n345), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[3]  ( .D(n239), .CK(clk), .RN(n345), .Q(sti_addr[3]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n237), .CK(clk), .RN(n345), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n242), .CK(clk), .RN(n345), .Q(sti_addr[0]) );
  DFFSX1 \res_addr_reg[12]  ( .D(n288), .CK(clk), .SN(n345), .Q(n577), .QN(
        n307) );
  DFFSX1 \res_addr_reg[11]  ( .D(n287), .CK(clk), .SN(n346), .Q(n578), .QN(
        n300) );
  DFFSX1 \res_addr_reg[10]  ( .D(n286), .CK(clk), .SN(n345), .Q(n579), .QN(
        n296) );
  DFFSX1 \res_addr_reg[9]  ( .D(n285), .CK(clk), .SN(n590), .Q(n580), .QN(n308) );
  DFFSX1 \res_addr_reg[8]  ( .D(n284), .CK(clk), .SN(n346), .Q(n581), .QN(n298) );
  DFFSX1 \res_addr_reg[3]  ( .D(n279), .CK(clk), .SN(n345), .Q(n586), .QN(n295) );
  DFFSX1 \res_addr_reg[4]  ( .D(n280), .CK(clk), .SN(n346), .Q(n585), .QN(n299) );
  DFFSX1 \res_addr_reg[5]  ( .D(n281), .CK(clk), .SN(n345), .Q(n584), .QN(n297) );
  DFFSX1 \res_addr_reg[6]  ( .D(n282), .CK(clk), .SN(n346), .Q(n583), .QN(n302) );
  DFFSX1 \res_addr_reg[7]  ( .D(n283), .CK(clk), .SN(n346), .Q(n582), .QN(n305) );
  DFFSX1 \res_addr_reg[1]  ( .D(n277), .CK(clk), .SN(n345), .Q(n588), .QN(n310) );
  DFFSX1 \res_addr_reg[2]  ( .D(n278), .CK(clk), .SN(n346), .Q(n587), .QN(n306) );
  DFFRX2 res_rd_reg ( .D(N143), .CK(clk), .RN(n345), .Q(res_rd) );
  DFFRX2 sti_rd_reg ( .D(n576), .CK(clk), .RN(n345), .Q(sti_rd) );
  DFFRX2 res_wr_reg ( .D(n311), .CK(clk), .RN(n590), .Q(res_wr) );
  DFFRX1 \current_State_reg[3]  ( .D(n252), .CK(clk), .RN(n590), .Q(n575), 
        .QN(n465) );
  DFFRX1 \current_State_reg[1]  ( .D(next_State[1]), .CK(clk), .RN(n345), .Q(
        n573), .QN(n552) );
  DFFRX1 \current_State_reg[0]  ( .D(next_State[0]), .CK(clk), .RN(n345), .Q(
        n574), .QN(n571) );
  DFFSX1 \counter_reg[0]  ( .D(n291), .CK(clk), .SN(n590), .Q(N37), .QN(n362)
         );
  DFFSX1 \counter_reg[2]  ( .D(n290), .CK(clk), .SN(n345), .Q(N39), .QN(n361)
         );
  DFFRX1 \minTemp_reg[7]  ( .D(n269), .CK(clk), .RN(n590), .Q(minTemp[7]), 
        .QN(n260) );
  DFFRX1 \minTemp_reg[6]  ( .D(n270), .CK(clk), .RN(n590), .Q(minTemp[6]), 
        .QN(n261) );
  DFFRX1 \minTemp_reg[5]  ( .D(n271), .CK(clk), .RN(n590), .Q(minTemp[5]), 
        .QN(n262) );
  DFFRX1 \minTemp_reg[4]  ( .D(n272), .CK(clk), .RN(n590), .Q(minTemp[4]), 
        .QN(n263) );
  DFFRX1 \minTemp_reg[2]  ( .D(n274), .CK(clk), .RN(n346), .Q(minTemp[2]), 
        .QN(n265) );
  DFFRX1 \minTemp_reg[1]  ( .D(n275), .CK(clk), .RN(n346), .Q(minTemp[1]), 
        .QN(n266) );
  DFFRX1 \minTemp_reg[0]  ( .D(n276), .CK(clk), .RN(n590), .Q(minTemp[0]), 
        .QN(n267) );
  DFFRX1 \minTemp_reg[3]  ( .D(n273), .CK(clk), .RN(n346), .Q(minTemp[3]), 
        .QN(n264) );
  DFFSX1 \res_addr_reg[0]  ( .D(n294), .CK(clk), .SN(n590), .Q(N230), .QN(n309) );
  NAND2X2 U257 ( .A(n460), .B(n327), .Y(n456) );
  NOR4X2 U258 ( .A(n465), .B(n460), .C(n574), .D(n572), .Y(n458) );
  AND2X4 U259 ( .A(n394), .B(n252), .Y(n460) );
  NOR2X6 U260 ( .A(n388), .B(n454), .Y(n317) );
  BUFX12 U261 ( .A(n473), .Y(n329) );
  OAI221X2 U262 ( .A0(n494), .A1(n493), .B0(n495), .B1(n492), .C0(n491), .Y(
        n473) );
  OR2X4 U263 ( .A(n516), .B(n261), .Y(n321) );
  BUFX8 U264 ( .A(n372), .Y(n326) );
  AOI32X1 U265 ( .A0(n512), .A1(n483), .A2(minTemp[4]), .B0(n485), .B1(
        minTemp[5]), .Y(n516) );
  NOR2BX2 U266 ( .AN(next_State[0]), .B(next_State[1]), .Y(n394) );
  CLKINVX1 U267 ( .A(res_di_addOne[5]), .Y(n485) );
  NAND2X6 U268 ( .A(n569), .B(n570), .Y(n547) );
  NOR4X4 U269 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n570) );
  AOI21X1 U270 ( .A0(N157), .A1(n313), .B0(n328), .Y(n368) );
  BUFX6 U271 ( .A(N144), .Y(n311) );
  NAND4X2 U272 ( .A(n365), .B(n366), .C(n367), .D(n368), .Y(n294) );
  AOI21X2 U273 ( .A0(N168), .A1(n313), .B0(n328), .Y(n411) );
  AOI21X2 U274 ( .A0(N170), .A1(n313), .B0(n328), .Y(n377) );
  NAND4X2 U275 ( .A(n412), .B(n413), .C(n414), .D(n415), .Y(n286) );
  AOI21X1 U276 ( .A0(N160), .A1(n312), .B0(n328), .Y(n444) );
  AOI21X2 U277 ( .A0(N165), .A1(n312), .B0(n328), .Y(n423) );
  AOI21X2 U278 ( .A0(N158), .A1(n312), .B0(n328), .Y(n452) );
  AOI21X2 U279 ( .A0(N163), .A1(n312), .B0(n328), .Y(n432) );
  NAND4X2 U280 ( .A(n441), .B(n442), .C(n443), .D(n444), .Y(n279) );
  NAND4X2 U281 ( .A(n437), .B(n438), .C(n439), .D(n440), .Y(n280) );
  NAND4X2 U282 ( .A(n433), .B(n434), .C(n435), .D(n436), .Y(n281) );
  NAND4X2 U283 ( .A(n424), .B(n425), .C(n426), .D(n427), .Y(n283) );
  NAND4X2 U284 ( .A(n445), .B(n446), .C(n447), .D(n448), .Y(n278) );
  NAND4X2 U285 ( .A(n416), .B(n417), .C(n418), .D(n419), .Y(n285) );
  NAND4X2 U286 ( .A(n404), .B(n405), .C(n406), .D(n407), .Y(n288) );
  CLKBUFX3 U287 ( .A(N230), .Y(res_addr[0]) );
  CLKBUFX3 U288 ( .A(n588), .Y(res_addr[1]) );
  NOR2X6 U289 ( .A(n389), .B(n456), .Y(n301) );
  INVX3 U290 ( .A(n467), .Y(n455) );
  NOR2X2 U291 ( .A(n314), .B(n403), .Y(n303) );
  OR3X6 U292 ( .A(res_di[3]), .B(res_di[1]), .C(res_di[2]), .Y(n304) );
  CLKBUFX3 U293 ( .A(n577), .Y(res_addr[12]) );
  CLKBUFX3 U294 ( .A(n580), .Y(res_addr[9]) );
  INVX3 U295 ( .A(n401), .Y(n525) );
  NAND3X2 U296 ( .A(n401), .B(n470), .C(n330), .Y(n522) );
  AOI2BB1X4 U297 ( .A0N(n539), .A1N(n540), .B0(n541), .Y(n538) );
  NAND2X6 U298 ( .A(n554), .B(n534), .Y(n541) );
  AND2X2 U299 ( .A(n394), .B(n251), .Y(n461) );
  NOR2X1 U300 ( .A(n547), .B(n491), .Y(n568) );
  NAND2X2 U301 ( .A(n316), .B(n296), .Y(n567) );
  NOR2X2 U302 ( .A(n453), .B(n454), .Y(n315) );
  OR2X2 U303 ( .A(n315), .B(n467), .Y(n312) );
  OR2X2 U304 ( .A(n456), .B(n388), .Y(n324) );
  NOR2BX1 U305 ( .AN(next_State[1]), .B(next_State[0]), .Y(N144) );
  AOI32X1 U306 ( .A0(n511), .A1(n512), .A2(n513), .B0(n514), .B1(n515), .Y(
        n509) );
  NAND2XL U307 ( .A(n516), .B(n261), .Y(n514) );
  NAND2XL U308 ( .A(n321), .B(res_di_addOne[6]), .Y(n515) );
  NAND2X4 U309 ( .A(res_di_addOne[5]), .B(n262), .Y(n512) );
  OR2X2 U310 ( .A(n315), .B(n467), .Y(n313) );
  OA21X4 U311 ( .A0(n568), .A1(n555), .B0(n309), .Y(n316) );
  INVX12 U312 ( .A(n324), .Y(n370) );
  NAND2X8 U313 ( .A(n461), .B(n327), .Y(n454) );
  NOR4X4 U314 ( .A(n564), .B(n565), .C(n566), .D(n567), .Y(n556) );
  NOR3X1 U315 ( .A(n465), .B(n572), .C(n552), .Y(n555) );
  AND2X2 U316 ( .A(n311), .B(n393), .Y(n314) );
  NAND2X1 U317 ( .A(n322), .B(n474), .Y(n276) );
  OR2X1 U318 ( .A(n267), .B(n329), .Y(n322) );
  NOR2X1 U319 ( .A(n389), .B(n454), .Y(n372) );
  NOR2X8 U320 ( .A(res_di[0]), .B(n304), .Y(n569) );
  BUFX12 U321 ( .A(n373), .Y(n327) );
  NAND2BX2 U322 ( .AN(n493), .B(n329), .Y(n475) );
  OAI2BB1X2 U323 ( .A0N(n491), .A1N(n492), .B0(n329), .Y(n476) );
  MXI2XL U324 ( .A(n382), .B(n383), .S0(n363), .Y(n381) );
  NOR2XL U325 ( .A(n481), .B(n475), .Y(n318) );
  NOR2XL U326 ( .A(n482), .B(n476), .Y(n319) );
  NOR2XL U327 ( .A(n264), .B(n329), .Y(n320) );
  OR3X2 U328 ( .A(n318), .B(n319), .C(n320), .Y(n273) );
  INVXL U329 ( .A(res_di[3]), .Y(n482) );
  INVX1 U330 ( .A(res_di_addOne[4]), .Y(n483) );
  NOR3X2 U331 ( .A(n428), .B(n458), .C(n328), .Y(n463) );
  XNOR2XL U332 ( .A(N37), .B(n385), .Y(n384) );
  NAND2XL U333 ( .A(N466), .B(n525), .Y(n526) );
  NAND2XL U334 ( .A(N467), .B(n525), .Y(n527) );
  NAND2XL U335 ( .A(N468), .B(n525), .Y(n528) );
  NAND2XL U336 ( .A(N469), .B(n525), .Y(n529) );
  NAND2XL U337 ( .A(N470), .B(n525), .Y(n530) );
  NAND2XL U338 ( .A(N471), .B(n525), .Y(n531) );
  NAND2XL U339 ( .A(N472), .B(n525), .Y(n532) );
  NAND4BX4 U340 ( .AN(n541), .B(n548), .C(n549), .D(n331), .Y(next_State[1])
         );
  OAI211XL U341 ( .A0(n522), .A1(n217), .B0(n523), .C0(n524), .Y(n268) );
  NAND2XL U342 ( .A(N464), .B(n314), .Y(n523) );
  AOI2BB2XL U343 ( .B0(N465), .B1(n525), .A0N(n267), .A1N(n330), .Y(n524) );
  NOR2XL U344 ( .A(n303), .B(N37), .Y(n383) );
  MX2XL U345 ( .A(n303), .B(n380), .S0(n362), .Y(n391) );
  OA22XL U346 ( .A0(n388), .A1(n303), .B0(n389), .B1(n380), .Y(n387) );
  MXI2XL U347 ( .A(n303), .B(n380), .S0(n363), .Y(n390) );
  CLKBUFX3 U348 ( .A(n587), .Y(res_addr[2]) );
  CLKBUFX3 U349 ( .A(n586), .Y(res_addr[3]) );
  CLKBUFX3 U350 ( .A(n585), .Y(res_addr[4]) );
  CLKBUFX3 U351 ( .A(n584), .Y(res_addr[5]) );
  CLKBUFX3 U352 ( .A(n583), .Y(res_addr[6]) );
  CLKBUFX3 U353 ( .A(n582), .Y(res_addr[7]) );
  CLKBUFX3 U354 ( .A(n581), .Y(res_addr[8]) );
  CLKBUFX3 U355 ( .A(n579), .Y(res_addr[10]) );
  CLKBUFX3 U356 ( .A(n578), .Y(res_addr[11]) );
  MX2XL U357 ( .A(n475), .B(n476), .S0(res_di[0]), .Y(n474) );
  AOI22X1 U358 ( .A0(N305), .A1(n370), .B0(N319), .B1(n371), .Y(n414) );
  CLKBUFX3 U359 ( .A(n400), .Y(n330) );
  NAND2X1 U360 ( .A(n311), .B(n252), .Y(n400) );
  NAND2X1 U361 ( .A(n311), .B(n393), .Y(n470) );
  OA21X4 U362 ( .A0(n453), .A1(n456), .B0(n457), .Y(n323) );
  INVX8 U363 ( .A(n323), .Y(n371) );
  CLKBUFX3 U364 ( .A(n369), .Y(n328) );
  CLKINVX1 U365 ( .A(n464), .Y(n369) );
  CLKBUFX3 U366 ( .A(n533), .Y(n331) );
  NAND2X1 U367 ( .A(n550), .B(n543), .Y(n533) );
  XOR2X1 U368 ( .A(res_addr[13]), .B(n325), .Y(N350) );
  NOR2X1 U369 ( .A(res_addr[12]), .B(\sub_187/carry [12]), .Y(n325) );
  CLKBUFX3 U370 ( .A(n590), .Y(n346) );
  CLKBUFX3 U371 ( .A(n590), .Y(n345) );
  MXI2X2 U372 ( .A(n556), .B(n557), .S0(n305), .Y(n554) );
  NAND4X4 U373 ( .A(n535), .B(n536), .C(n537), .D(n538), .Y(next_State[0]) );
  OAI31X4 U374 ( .A0(n468), .A1(n461), .A2(n469), .B0(n470), .Y(n467) );
  NAND2BXL U375 ( .AN(n547), .B(n545), .Y(n559) );
  OAI211X2 U376 ( .A0(n397), .A1(n462), .B0(n455), .C0(n463), .Y(n373) );
  XOR2X1 U377 ( .A(res_addr[13]), .B(\add_184/carry[13] ), .Y(N308) );
  AND2X1 U378 ( .A(\add_184/carry[12] ), .B(res_addr[12]), .Y(
        \add_184/carry[13] ) );
  XOR2X1 U379 ( .A(res_addr[12]), .B(\add_184/carry[12] ), .Y(N307) );
  AND2X1 U380 ( .A(\add_184/carry[11] ), .B(res_addr[11]), .Y(
        \add_184/carry[12] ) );
  XOR2X1 U381 ( .A(res_addr[11]), .B(\add_184/carry[11] ), .Y(N306) );
  AND2X1 U382 ( .A(\add_184/carry[10] ), .B(res_addr[10]), .Y(
        \add_184/carry[11] ) );
  XOR2X1 U383 ( .A(res_addr[10]), .B(\add_184/carry[10] ), .Y(N305) );
  AND2X1 U384 ( .A(\add_184/carry[9] ), .B(res_addr[9]), .Y(
        \add_184/carry[10] ) );
  XOR2X1 U385 ( .A(res_addr[9]), .B(\add_184/carry[9] ), .Y(N304) );
  AND2X1 U386 ( .A(\add_184/carry[8] ), .B(res_addr[8]), .Y(\add_184/carry[9] ) );
  XOR2X1 U387 ( .A(res_addr[8]), .B(\add_184/carry[8] ), .Y(N303) );
  OR2X1 U388 ( .A(res_addr[7]), .B(\add_184/carry[7] ), .Y(\add_184/carry[8] )
         );
  XNOR2X1 U389 ( .A(\add_184/carry[7] ), .B(res_addr[7]), .Y(N302) );
  AND2X1 U390 ( .A(\add_184/carry[6] ), .B(res_addr[6]), .Y(\add_184/carry[7] ) );
  XOR2X1 U391 ( .A(res_addr[6]), .B(\add_184/carry[6] ), .Y(N301) );
  AND2X1 U392 ( .A(\add_184/carry[5] ), .B(res_addr[5]), .Y(\add_184/carry[6] ) );
  XOR2X1 U393 ( .A(res_addr[5]), .B(\add_184/carry[5] ), .Y(N300) );
  AND2X1 U394 ( .A(\add_184/carry[4] ), .B(res_addr[4]), .Y(\add_184/carry[5] ) );
  XOR2X1 U395 ( .A(res_addr[4]), .B(\add_184/carry[4] ), .Y(N299) );
  AND2X1 U396 ( .A(\add_184/carry[3] ), .B(res_addr[3]), .Y(\add_184/carry[4] ) );
  XOR2X1 U397 ( .A(res_addr[3]), .B(\add_184/carry[3] ), .Y(N298) );
  AND2X1 U398 ( .A(\add_184/carry[2] ), .B(res_addr[2]), .Y(\add_184/carry[3] ) );
  XOR2X1 U399 ( .A(res_addr[2]), .B(\add_184/carry[2] ), .Y(N297) );
  AND2X1 U400 ( .A(res_addr[0]), .B(res_addr[1]), .Y(\add_184/carry[2] ) );
  XOR2X1 U401 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N296) );
  XNOR2X1 U402 ( .A(res_addr[13]), .B(\sub_174/carry[13] ), .Y(N201) );
  OR2X1 U403 ( .A(res_addr[12]), .B(\sub_174/carry[12] ), .Y(
        \sub_174/carry[13] ) );
  XNOR2X1 U404 ( .A(\sub_174/carry[12] ), .B(res_addr[12]), .Y(N200) );
  OR2X1 U405 ( .A(res_addr[11]), .B(\sub_174/carry[11] ), .Y(
        \sub_174/carry[12] ) );
  XNOR2X1 U406 ( .A(\sub_174/carry[11] ), .B(res_addr[11]), .Y(N199) );
  OR2X1 U407 ( .A(res_addr[10]), .B(\sub_174/carry[10] ), .Y(
        \sub_174/carry[11] ) );
  XNOR2X1 U408 ( .A(\sub_174/carry[10] ), .B(res_addr[10]), .Y(N198) );
  OR2X1 U409 ( .A(res_addr[9]), .B(\sub_174/carry[9] ), .Y(\sub_174/carry[10] ) );
  XNOR2X1 U410 ( .A(\sub_174/carry[9] ), .B(res_addr[9]), .Y(N197) );
  OR2X1 U411 ( .A(res_addr[8]), .B(\sub_174/carry[8] ), .Y(\sub_174/carry[9] )
         );
  XNOR2X1 U412 ( .A(\sub_174/carry[8] ), .B(res_addr[8]), .Y(N196) );
  AND2X1 U413 ( .A(\sub_174/carry[7] ), .B(res_addr[7]), .Y(\sub_174/carry[8] ) );
  XOR2X1 U414 ( .A(res_addr[7]), .B(\sub_174/carry[7] ), .Y(N195) );
  OR2X1 U415 ( .A(res_addr[6]), .B(\sub_174/carry[6] ), .Y(\sub_174/carry[7] )
         );
  XNOR2X1 U416 ( .A(\sub_174/carry[6] ), .B(res_addr[6]), .Y(N194) );
  OR2X1 U417 ( .A(res_addr[5]), .B(\sub_174/carry[5] ), .Y(\sub_174/carry[6] )
         );
  XNOR2X1 U418 ( .A(\sub_174/carry[5] ), .B(res_addr[5]), .Y(N193) );
  OR2X1 U419 ( .A(res_addr[4]), .B(\sub_174/carry[4] ), .Y(\sub_174/carry[5] )
         );
  XNOR2X1 U420 ( .A(\sub_174/carry[4] ), .B(res_addr[4]), .Y(N192) );
  OR2X1 U421 ( .A(res_addr[3]), .B(\sub_174/carry[3] ), .Y(\sub_174/carry[4] )
         );
  XNOR2X1 U422 ( .A(\sub_174/carry[3] ), .B(res_addr[3]), .Y(N191) );
  OR2X1 U423 ( .A(res_addr[2]), .B(\sub_174/carry[2] ), .Y(\sub_174/carry[3] )
         );
  XNOR2X1 U424 ( .A(\sub_174/carry[2] ), .B(res_addr[2]), .Y(N190) );
  OR2X1 U425 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\sub_174/carry[2] ) );
  XNOR2X1 U426 ( .A(res_addr[0]), .B(res_addr[1]), .Y(N189) );
  XNOR2X1 U427 ( .A(\sub_187/carry [12]), .B(res_addr[12]), .Y(N349) );
  OR2X1 U428 ( .A(res_addr[11]), .B(\sub_187/carry [11]), .Y(
        \sub_187/carry [12]) );
  XNOR2X1 U429 ( .A(\sub_187/carry [11]), .B(res_addr[11]), .Y(N348) );
  OR2X1 U430 ( .A(res_addr[10]), .B(\sub_187/carry [10]), .Y(
        \sub_187/carry [11]) );
  XNOR2X1 U431 ( .A(\sub_187/carry [10]), .B(res_addr[10]), .Y(N347) );
  OR2X1 U432 ( .A(res_addr[9]), .B(\sub_187/carry [9]), .Y(\sub_187/carry [10]) );
  XNOR2X1 U433 ( .A(\sub_187/carry [9]), .B(res_addr[9]), .Y(N346) );
  OR2X1 U434 ( .A(res_addr[8]), .B(\sub_187/carry [8]), .Y(\sub_187/carry [9])
         );
  XNOR2X1 U435 ( .A(\sub_187/carry [8]), .B(res_addr[8]), .Y(N345) );
  OR2X1 U436 ( .A(res_addr[7]), .B(\sub_187/carry [7]), .Y(\sub_187/carry [8])
         );
  XNOR2X1 U437 ( .A(\sub_187/carry [7]), .B(res_addr[7]), .Y(N344) );
  AND2X1 U438 ( .A(\sub_187/carry [6]), .B(res_addr[6]), .Y(\sub_187/carry [7]) );
  XOR2X1 U439 ( .A(res_addr[6]), .B(\sub_187/carry [6]), .Y(N343) );
  AND2X1 U440 ( .A(\sub_187/carry [5]), .B(res_addr[5]), .Y(\sub_187/carry [6]) );
  XOR2X1 U441 ( .A(res_addr[5]), .B(\sub_187/carry [5]), .Y(N342) );
  AND2X1 U442 ( .A(\sub_187/carry [4]), .B(res_addr[4]), .Y(\sub_187/carry [5]) );
  XOR2X1 U443 ( .A(res_addr[4]), .B(\sub_187/carry [4]), .Y(N341) );
  AND2X1 U444 ( .A(\sub_187/carry [3]), .B(res_addr[3]), .Y(\sub_187/carry [4]) );
  XOR2X1 U445 ( .A(res_addr[3]), .B(\sub_187/carry [3]), .Y(N340) );
  AND2X1 U446 ( .A(res_addr[1]), .B(res_addr[2]), .Y(\sub_187/carry [3]) );
  XOR2X1 U447 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N339) );
  XOR2X1 U448 ( .A(res_addr[13]), .B(\add_177/carry [13]), .Y(N243) );
  AND2X1 U449 ( .A(\add_177/carry [12]), .B(res_addr[12]), .Y(
        \add_177/carry [13]) );
  XOR2X1 U450 ( .A(res_addr[12]), .B(\add_177/carry [12]), .Y(N242) );
  AND2X1 U451 ( .A(\add_177/carry [11]), .B(res_addr[11]), .Y(
        \add_177/carry [12]) );
  XOR2X1 U452 ( .A(res_addr[11]), .B(\add_177/carry [11]), .Y(N241) );
  AND2X1 U453 ( .A(\add_177/carry [10]), .B(res_addr[10]), .Y(
        \add_177/carry [11]) );
  XOR2X1 U454 ( .A(res_addr[10]), .B(\add_177/carry [10]), .Y(N240) );
  AND2X1 U455 ( .A(\add_177/carry [9]), .B(res_addr[9]), .Y(
        \add_177/carry [10]) );
  XOR2X1 U456 ( .A(res_addr[9]), .B(\add_177/carry [9]), .Y(N239) );
  AND2X1 U457 ( .A(\add_177/carry [8]), .B(res_addr[8]), .Y(\add_177/carry [9]) );
  XOR2X1 U458 ( .A(res_addr[8]), .B(\add_177/carry [8]), .Y(N238) );
  AND2X1 U459 ( .A(\add_177/carry [7]), .B(res_addr[7]), .Y(\add_177/carry [8]) );
  XOR2X1 U460 ( .A(res_addr[7]), .B(\add_177/carry [7]), .Y(N237) );
  OR2X1 U461 ( .A(res_addr[6]), .B(\add_177/carry [6]), .Y(\add_177/carry [7])
         );
  XNOR2X1 U462 ( .A(\add_177/carry [6]), .B(res_addr[6]), .Y(N236) );
  OR2X1 U463 ( .A(res_addr[5]), .B(\add_177/carry [5]), .Y(\add_177/carry [6])
         );
  XNOR2X1 U464 ( .A(\add_177/carry [5]), .B(res_addr[5]), .Y(N235) );
  OR2X1 U465 ( .A(res_addr[4]), .B(\add_177/carry [4]), .Y(\add_177/carry [5])
         );
  XNOR2X1 U466 ( .A(\add_177/carry [4]), .B(res_addr[4]), .Y(N234) );
  OR2X1 U467 ( .A(res_addr[3]), .B(\add_177/carry [3]), .Y(\add_177/carry [4])
         );
  XNOR2X1 U468 ( .A(\add_177/carry [3]), .B(res_addr[3]), .Y(N233) );
  OR2X1 U469 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\add_177/carry [3]) );
  XNOR2X1 U470 ( .A(res_addr[1]), .B(res_addr[2]), .Y(N232) );
  NOR2X1 U471 ( .A(n363), .B(N37), .Y(n356) );
  NOR2X1 U472 ( .A(n363), .B(n362), .Y(n355) );
  NOR2X1 U473 ( .A(n362), .B(N38), .Y(n353) );
  NOR2X1 U474 ( .A(N37), .B(N38), .Y(n352) );
  AO22X1 U475 ( .A0(sti_di[5]), .A1(n353), .B0(sti_di[4]), .B1(n352), .Y(n347)
         );
  AOI221XL U476 ( .A0(sti_di[6]), .A1(n356), .B0(sti_di[7]), .B1(n355), .C0(
        n347), .Y(n350) );
  AO22X1 U477 ( .A0(sti_di[1]), .A1(n353), .B0(sti_di[0]), .B1(n352), .Y(n348)
         );
  AOI221XL U478 ( .A0(sti_di[2]), .A1(n356), .B0(sti_di[3]), .B1(n355), .C0(
        n348), .Y(n349) );
  OA22X1 U479 ( .A0(n361), .A1(n350), .B0(N39), .B1(n349), .Y(n360) );
  AO22X1 U480 ( .A0(sti_di[13]), .A1(n353), .B0(sti_di[12]), .B1(n352), .Y(
        n351) );
  AOI221XL U481 ( .A0(sti_di[14]), .A1(n356), .B0(sti_di[15]), .B1(n355), .C0(
        n351), .Y(n358) );
  AO22X1 U482 ( .A0(sti_di[9]), .A1(n353), .B0(sti_di[8]), .B1(n352), .Y(n354)
         );
  AOI221XL U483 ( .A0(sti_di[10]), .A1(n356), .B0(sti_di[11]), .B1(n355), .C0(
        n354), .Y(n357) );
  OAI22XL U484 ( .A0(n358), .A1(n361), .B0(N39), .B1(n357), .Y(n359) );
  OAI2BB2XL U485 ( .B0(n360), .B1(n397), .A0N(n397), .A1N(n359), .Y(N464) );
  CLKINVX1 U486 ( .A(n364), .Y(n576) );
  AOI22X1 U487 ( .A0(n309), .A1(n370), .B0(N309), .B1(n371), .Y(n367) );
  AOI22X1 U488 ( .A0(res_addr[0]), .A1(n301), .B0(n309), .B1(n317), .Y(n366)
         );
  AOI2BB2X1 U489 ( .B0(res_addr[0]), .B1(n326), .A0N(n327), .A1N(n309), .Y(
        n365) );
  NAND4X1 U490 ( .A(n374), .B(n375), .C(n376), .D(n377), .Y(n293) );
  AOI22X1 U491 ( .A0(N308), .A1(n370), .B0(N322), .B1(n371), .Y(n376) );
  AOI22X1 U492 ( .A0(N350), .A1(n301), .B0(N201), .B1(n317), .Y(n375) );
  AOI2BB2X1 U493 ( .B0(N243), .B1(n326), .A0N(n327), .A1N(n378), .Y(n374) );
  OAI211X1 U494 ( .A0(n379), .A1(n380), .B0(n364), .C0(n381), .Y(n292) );
  NAND2X1 U495 ( .A(n384), .B(n364), .Y(n291) );
  NAND3X1 U496 ( .A(n386), .B(n364), .C(n387), .Y(n290) );
  OAI21XL U497 ( .A0(n382), .A1(n390), .B0(N39), .Y(n386) );
  NAND2X1 U498 ( .A(n391), .B(n385), .Y(n382) );
  NAND2X1 U499 ( .A(n392), .B(n364), .Y(n289) );
  NAND2X1 U500 ( .A(n393), .B(n394), .Y(n364) );
  MXI2X1 U501 ( .A(n395), .B(n396), .S0(n397), .Y(n392) );
  OAI221XL U502 ( .A0(n303), .A1(n398), .B0(n399), .B1(n380), .C0(n385), .Y(
        n396) );
  NAND4X1 U503 ( .A(n303), .B(n330), .C(n401), .D(n380), .Y(n385) );
  OAI22XL U504 ( .A0(n402), .A1(n380), .B0(n303), .B1(n388), .Y(n395) );
  NAND2X1 U505 ( .A(N143), .B(next_State[0]), .Y(n380) );
  AOI21X1 U506 ( .A0(N169), .A1(n313), .B0(n328), .Y(n407) );
  AOI22X1 U507 ( .A0(N307), .A1(n370), .B0(N321), .B1(n371), .Y(n406) );
  AOI22X1 U508 ( .A0(N349), .A1(n301), .B0(N200), .B1(n317), .Y(n405) );
  AOI2BB2X1 U509 ( .B0(N242), .B1(n326), .A0N(n327), .A1N(n307), .Y(n404) );
  NAND4X1 U510 ( .A(n408), .B(n409), .C(n410), .D(n411), .Y(n287) );
  AOI22X1 U511 ( .A0(N306), .A1(n370), .B0(N320), .B1(n371), .Y(n410) );
  AOI22X1 U512 ( .A0(N348), .A1(n301), .B0(N199), .B1(n317), .Y(n409) );
  AOI2BB2X1 U513 ( .B0(N241), .B1(n326), .A0N(n327), .A1N(n300), .Y(n408) );
  AOI21X1 U514 ( .A0(N167), .A1(n313), .B0(n328), .Y(n415) );
  AOI22X1 U515 ( .A0(N347), .A1(n301), .B0(N198), .B1(n317), .Y(n413) );
  AOI2BB2X1 U516 ( .B0(N240), .B1(n326), .A0N(n327), .A1N(n296), .Y(n412) );
  AOI21X1 U517 ( .A0(N166), .A1(n313), .B0(n328), .Y(n419) );
  AOI22X1 U518 ( .A0(N304), .A1(n370), .B0(N318), .B1(n371), .Y(n418) );
  AOI22X1 U519 ( .A0(N346), .A1(n301), .B0(N197), .B1(n317), .Y(n417) );
  AOI2BB2X1 U520 ( .B0(N239), .B1(n326), .A0N(n327), .A1N(n308), .Y(n416) );
  NAND4X1 U521 ( .A(n420), .B(n421), .C(n422), .D(n423), .Y(n284) );
  AOI22X1 U522 ( .A0(N303), .A1(n370), .B0(N317), .B1(n371), .Y(n422) );
  AOI22X1 U523 ( .A0(N345), .A1(n301), .B0(N196), .B1(n317), .Y(n421) );
  AOI2BB2X1 U524 ( .B0(N238), .B1(n326), .A0N(n327), .A1N(n298), .Y(n420) );
  AOI21X1 U525 ( .A0(N164), .A1(n313), .B0(n428), .Y(n427) );
  AOI22X1 U526 ( .A0(N302), .A1(n370), .B0(N316), .B1(n371), .Y(n426) );
  AOI22X1 U527 ( .A0(N344), .A1(n301), .B0(N195), .B1(n317), .Y(n425) );
  AOI2BB2X1 U528 ( .B0(N237), .B1(n326), .A0N(n327), .A1N(n305), .Y(n424) );
  NAND4X1 U529 ( .A(n429), .B(n430), .C(n431), .D(n432), .Y(n282) );
  AOI22X1 U530 ( .A0(N301), .A1(n370), .B0(N315), .B1(n371), .Y(n431) );
  AOI22X1 U531 ( .A0(N343), .A1(n301), .B0(N194), .B1(n317), .Y(n430) );
  AOI2BB2X1 U532 ( .B0(N236), .B1(n326), .A0N(n327), .A1N(n302), .Y(n429) );
  AOI21X1 U533 ( .A0(N162), .A1(n312), .B0(n328), .Y(n436) );
  AOI22X1 U534 ( .A0(N300), .A1(n370), .B0(N314), .B1(n371), .Y(n435) );
  AOI22X1 U535 ( .A0(N342), .A1(n301), .B0(N193), .B1(n317), .Y(n434) );
  AOI2BB2X1 U536 ( .B0(N235), .B1(n326), .A0N(n327), .A1N(n297), .Y(n433) );
  AOI21X1 U537 ( .A0(N161), .A1(n312), .B0(n328), .Y(n440) );
  AOI22X1 U538 ( .A0(N299), .A1(n370), .B0(N313), .B1(n371), .Y(n439) );
  AOI22X1 U539 ( .A0(N341), .A1(n301), .B0(N192), .B1(n317), .Y(n438) );
  AOI2BB2X1 U540 ( .B0(N234), .B1(n326), .A0N(n327), .A1N(n299), .Y(n437) );
  AOI22X1 U541 ( .A0(N298), .A1(n370), .B0(N312), .B1(n371), .Y(n443) );
  AOI22X1 U542 ( .A0(N340), .A1(n301), .B0(N191), .B1(n317), .Y(n442) );
  AOI2BB2X1 U543 ( .B0(N233), .B1(n326), .A0N(n327), .A1N(n295), .Y(n441) );
  AOI21X1 U544 ( .A0(N159), .A1(n312), .B0(n328), .Y(n448) );
  AOI22X1 U545 ( .A0(N297), .A1(n370), .B0(N311), .B1(n371), .Y(n447) );
  AOI22X1 U546 ( .A0(N339), .A1(n301), .B0(N190), .B1(n317), .Y(n446) );
  AOI2BB2X1 U547 ( .B0(N232), .B1(n326), .A0N(n327), .A1N(n306), .Y(n445) );
  NAND4X1 U548 ( .A(n449), .B(n450), .C(n451), .D(n452), .Y(n277) );
  AOI22X1 U549 ( .A0(N296), .A1(n370), .B0(N310), .B1(n371), .Y(n451) );
  CLKINVX1 U550 ( .A(n458), .Y(n457) );
  CLKINVX1 U551 ( .A(n459), .Y(n453) );
  AOI22X1 U552 ( .A0(n310), .A1(n301), .B0(N189), .B1(n317), .Y(n450) );
  AOI2BB2X1 U553 ( .B0(n310), .B1(n326), .A0N(n327), .A1N(n310), .Y(n449) );
  CLKINVX1 U554 ( .A(n466), .Y(n428) );
  OAI32X1 U555 ( .A0(n459), .A1(n471), .A2(n398), .B0(n460), .B1(n461), .Y(
        n462) );
  CLKINVX1 U556 ( .A(n388), .Y(n398) );
  NAND3X1 U557 ( .A(n361), .B(n363), .C(n362), .Y(n388) );
  OAI22XL U558 ( .A0(n379), .A1(N39), .B0(n472), .B1(N37), .Y(n459) );
  XNOR2X1 U559 ( .A(n363), .B(n361), .Y(n472) );
  CLKINVX1 U560 ( .A(n471), .Y(n389) );
  NOR3X1 U561 ( .A(n363), .B(n362), .C(N39), .Y(n471) );
  OAI222XL U562 ( .A0(n477), .A1(n475), .B0(n478), .B1(n476), .C0(n266), .C1(
        n329), .Y(n275) );
  CLKINVX1 U563 ( .A(res_di[1]), .Y(n478) );
  CLKINVX1 U564 ( .A(res_di_addOne[1]), .Y(n477) );
  OAI222XL U565 ( .A0(n479), .A1(n475), .B0(n480), .B1(n476), .C0(n265), .C1(
        n329), .Y(n274) );
  CLKINVX1 U566 ( .A(res_di[2]), .Y(n480) );
  OAI222XL U567 ( .A0(n483), .A1(n475), .B0(n484), .B1(n476), .C0(n263), .C1(
        n329), .Y(n272) );
  OAI222XL U568 ( .A0(n485), .A1(n475), .B0(n486), .B1(n476), .C0(n262), .C1(
        n329), .Y(n271) );
  OAI222XL U569 ( .A0(n487), .A1(n475), .B0(n488), .B1(n476), .C0(n261), .C1(
        n329), .Y(n270) );
  OAI222XL U570 ( .A0(n489), .A1(n475), .B0(n490), .B1(n476), .C0(n260), .C1(
        n329), .Y(n269) );
  AOI221XL U571 ( .A0(minTemp[7]), .A1(n490), .B0(n496), .B1(n497), .C0(n498), 
        .Y(n495) );
  NOR3X1 U572 ( .A(N39), .B(n379), .C(n397), .Y(n498) );
  OAI32X1 U573 ( .A0(n499), .A1(n500), .A2(n501), .B0(n502), .B1(n503), .Y(
        n497) );
  NOR2X1 U574 ( .A(minTemp[6]), .B(n504), .Y(n503) );
  AOI21X1 U575 ( .A0(n504), .A1(minTemp[6]), .B0(n488), .Y(n502) );
  OAI32X1 U576 ( .A0(n500), .A1(res_di[4]), .A2(n263), .B0(res_di[5]), .B1(
        n262), .Y(n504) );
  AOI222XL U577 ( .A0(n482), .A1(n505), .B0(n506), .B1(n507), .C0(n508), .C1(
        minTemp[3]), .Y(n501) );
  ACHCONX2 U578 ( .A(res_di[1]), .B(n266), .CI(n267), .CON(n507) );
  AOI2BB2X1 U579 ( .B0(res_di[2]), .B1(n265), .A0N(n482), .A1N(minTemp[3]), 
        .Y(n506) );
  NAND2BX1 U580 ( .AN(n508), .B(n264), .Y(n505) );
  NOR2X1 U581 ( .A(res_di[2]), .B(n265), .Y(n508) );
  NOR2X1 U582 ( .A(n486), .B(minTemp[5]), .Y(n500) );
  CLKINVX1 U583 ( .A(res_di[5]), .Y(n486) );
  OAI22XL U584 ( .A0(minTemp[4]), .A1(n484), .B0(minTemp[6]), .B1(n488), .Y(
        n499) );
  CLKINVX1 U585 ( .A(res_di[6]), .Y(n488) );
  CLKINVX1 U586 ( .A(res_di[4]), .Y(n484) );
  NAND2X1 U587 ( .A(res_di[7]), .B(n260), .Y(n496) );
  CLKINVX1 U588 ( .A(res_di[7]), .Y(n490) );
  OA22X1 U589 ( .A0(n260), .A1(res_di_addOne[7]), .B0(n509), .B1(n510), .Y(
        n494) );
  NOR2X1 U590 ( .A(minTemp[7]), .B(n489), .Y(n510) );
  AOI2BB2X1 U591 ( .B0(res_di_addOne[4]), .B1(n263), .A0N(n487), .A1N(
        minTemp[6]), .Y(n513) );
  CLKINVX1 U592 ( .A(res_di_addOne[6]), .Y(n487) );
  OAI211X1 U593 ( .A0(n264), .A1(n517), .B0(n518), .C0(n519), .Y(n511) );
  AO21X1 U594 ( .A0(n517), .A1(n264), .B0(res_di_addOne[3]), .Y(n519) );
  OAI222XL U595 ( .A0(minTemp[2]), .A1(n479), .B0(minTemp[3]), .B1(n481), .C0(
        n520), .C1(n521), .Y(n518) );
  NOR2X1 U596 ( .A(res_di_addOne[1]), .B(n266), .Y(n521) );
  AOI211X1 U597 ( .A0(res_di_addOne[1]), .A1(n266), .B0(res_di_addOne[0]), 
        .C0(n267), .Y(n520) );
  CLKINVX1 U598 ( .A(res_di_addOne[3]), .Y(n481) );
  NAND2X1 U599 ( .A(n479), .B(minTemp[2]), .Y(n517) );
  CLKINVX1 U600 ( .A(res_di_addOne[2]), .Y(n479) );
  CLKINVX1 U601 ( .A(res_di_addOne[7]), .Y(n489) );
  OAI221XL U602 ( .A0(n522), .A1(n216), .B0(n266), .B1(n330), .C0(n526), .Y(
        n250) );
  OAI221XL U603 ( .A0(n522), .A1(n215), .B0(n265), .B1(n330), .C0(n527), .Y(
        n249) );
  OAI221XL U604 ( .A0(n522), .A1(n214), .B0(n264), .B1(n330), .C0(n528), .Y(
        n248) );
  OAI221XL U605 ( .A0(n522), .A1(n213), .B0(n263), .B1(n330), .C0(n529), .Y(
        n247) );
  OAI221XL U606 ( .A0(n522), .A1(n212), .B0(n262), .B1(n330), .C0(n530), .Y(
        n246) );
  OAI221XL U607 ( .A0(n522), .A1(n211), .B0(n261), .B1(n330), .C0(n531), .Y(
        n245) );
  OAI221XL U608 ( .A0(n522), .A1(n210), .B0(n260), .B1(n330), .C0(n532), .Y(
        n244) );
  NAND2X1 U609 ( .A(n311), .B(n251), .Y(n401) );
  CLKMX2X2 U610 ( .A(N133), .B(sti_addr[0]), .S0(n331), .Y(n242) );
  CLKMX2X2 U611 ( .A(N134), .B(sti_addr[1]), .S0(n331), .Y(n241) );
  CLKMX2X2 U612 ( .A(N135), .B(sti_addr[2]), .S0(n331), .Y(n240) );
  CLKMX2X2 U613 ( .A(N136), .B(sti_addr[3]), .S0(n331), .Y(n239) );
  CLKMX2X2 U614 ( .A(N137), .B(sti_addr[4]), .S0(n331), .Y(n238) );
  CLKMX2X2 U615 ( .A(N138), .B(sti_addr[5]), .S0(n331), .Y(n237) );
  CLKMX2X2 U616 ( .A(N139), .B(sti_addr[6]), .S0(n331), .Y(n236) );
  CLKMX2X2 U617 ( .A(N140), .B(sti_addr[7]), .S0(n331), .Y(n235) );
  CLKMX2X2 U618 ( .A(N141), .B(sti_addr[8]), .S0(n331), .Y(n234) );
  CLKMX2X2 U619 ( .A(N142), .B(sti_addr[9]), .S0(n331), .Y(n233) );
  NAND2X1 U620 ( .A(n220), .B(n464), .Y(n232) );
  NAND2X1 U621 ( .A(n219), .B(n534), .Y(n231) );
  CLKINVX1 U622 ( .A(n542), .Y(n539) );
  NAND2X1 U623 ( .A(n543), .B(n544), .Y(n537) );
  NAND3X1 U624 ( .A(n399), .B(n397), .C(n403), .Y(n536) );
  OAI21XL U625 ( .A0(n545), .A1(n546), .B0(n547), .Y(n535) );
  CLKINVX1 U626 ( .A(n491), .Y(n546) );
  NOR2X1 U627 ( .A(n393), .B(next_State[1]), .Y(N143) );
  NAND2X1 U628 ( .A(n540), .B(n542), .Y(n549) );
  NAND2X1 U629 ( .A(n493), .B(n492), .Y(n542) );
  NOR3X1 U630 ( .A(n379), .B(n361), .C(n397), .Y(n540) );
  NAND2X1 U631 ( .A(n363), .B(N37), .Y(n379) );
  OAI31XL U632 ( .A0(n402), .A1(n257), .A2(n551), .B0(n403), .Y(n548) );
  NOR3X1 U633 ( .A(n552), .B(n572), .C(n469), .Y(n403) );
  NOR3X1 U634 ( .A(n309), .B(n553), .C(n305), .Y(n551) );
  CLKINVX1 U635 ( .A(n399), .Y(n402) );
  NOR3X1 U636 ( .A(n363), .B(n362), .C(n361), .Y(n399) );
  NAND2X1 U637 ( .A(n574), .B(n555), .Y(n534) );
  AOI211X1 U638 ( .A0(n558), .A1(n559), .B0(n553), .C0(res_addr[0]), .Y(n557)
         );
  NAND4X1 U639 ( .A(n560), .B(n561), .C(n562), .D(n563), .Y(n553) );
  NOR3X1 U640 ( .A(n307), .B(n296), .C(n300), .Y(n563) );
  NOR3X1 U641 ( .A(n306), .B(n378), .C(n310), .Y(n562) );
  NOR3X1 U642 ( .A(n297), .B(n295), .C(n299), .Y(n561) );
  NOR3X1 U643 ( .A(n308), .B(n302), .C(n298), .Y(n560) );
  NAND4X1 U644 ( .A(n300), .B(n307), .C(n378), .D(n310), .Y(n566) );
  NAND3X1 U645 ( .A(n295), .B(n299), .C(n306), .Y(n565) );
  NAND4X1 U646 ( .A(n297), .B(n302), .C(n298), .D(n308), .Y(n564) );
  NOR2X1 U647 ( .A(n251), .B(n252), .Y(n393) );
  NAND4BX1 U648 ( .AN(n555), .B(n464), .C(n493), .D(n491), .Y(n252) );
  NAND3X1 U649 ( .A(n575), .B(n571), .C(n543), .Y(n491) );
  NAND3X1 U650 ( .A(n574), .B(n575), .C(n543), .Y(n493) );
  NOR2X1 U651 ( .A(n572), .B(n573), .Y(n543) );
  NAND3X1 U652 ( .A(n572), .B(n573), .C(n550), .Y(n464) );
  NAND4BX1 U653 ( .AN(n545), .B(n466), .C(n492), .D(n558), .Y(n251) );
  NAND3X1 U654 ( .A(n544), .B(n573), .C(n572), .Y(n558) );
  NAND3X1 U655 ( .A(n572), .B(n552), .C(n550), .Y(n492) );
  NAND3X1 U656 ( .A(n573), .B(n468), .C(n550), .Y(n466) );
  NOR2X1 U657 ( .A(n571), .B(n575), .Y(n550) );
  NOR3X1 U658 ( .A(n469), .B(n573), .C(n468), .Y(n545) );
  CLKINVX1 U659 ( .A(n544), .Y(n469) );
  NOR2X1 U660 ( .A(n575), .B(n574), .Y(n544) );
  DT_DW01_inc_0_DW01_inc_1 add_225_S2 ( .A(minTemp), .SUM({N472, N471, N470, 
        N469, N468, N467, N466, N465}) );
  DT_DW01_inc_1_DW01_inc_2 add_203 ( .A(res_di), .SUM(res_di_addOne) );
  DT_DW01_inc_2_DW01_inc_3 add_145_S2 ( .A(sti_addr), .SUM({N142, N141, N140, 
        N139, N138, N137, N136, N135, N134, N133}) );
  DT_DW01_dec_0_DW01_dec_1 r422 ( .A(res_addr), .SUM({N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310, N309}) );
  DT_DW01_inc_3_DW01_inc_4 r418 ( .A(res_addr), .SUM({N170, N169, N168, N167, 
        N166, N165, N164, N163, N162, N161, N160, N159, N158, N157}) );
  DFFSX4 \res_addr_reg[13]  ( .D(n293), .CK(clk), .SN(n590), .Q(res_addr[13]), 
        .QN(n378) );
  DFFSX2 \counter_reg[1]  ( .D(n292), .CK(clk), .SN(n590), .Q(N38), .QN(n363)
         );
  DFFRX2 \sti_addr_reg[4]  ( .D(n238), .CK(clk), .RN(n590), .Q(sti_addr[4]) );
  DFFRX2 \current_State_reg[2]  ( .D(n251), .CK(clk), .RN(n590), .Q(n572), 
        .QN(n468) );
  DFFSX2 \counter_reg[3]  ( .D(n289), .CK(clk), .SN(n590), .Q(n397), .QN(n257)
         );
  DFFRX2 done_reg ( .D(n231), .CK(clk), .RN(n590), .Q(done), .QN(n219) );
  DFFRX2 fw_finish_reg ( .D(n232), .CK(clk), .RN(n590), .Q(fw_finish), .QN(
        n220) );
  DFFRX2 \res_do_reg[7]  ( .D(n244), .CK(clk), .RN(n346), .Q(res_do[7]), .QN(
        n210) );
  DFFRX2 \res_do_reg[6]  ( .D(n245), .CK(clk), .RN(n346), .Q(res_do[6]), .QN(
        n211) );
  DFFRX2 \res_do_reg[5]  ( .D(n246), .CK(clk), .RN(n346), .Q(res_do[5]), .QN(
        n212) );
  DFFRX2 \res_do_reg[4]  ( .D(n247), .CK(clk), .RN(n346), .Q(res_do[4]), .QN(
        n213) );
  DFFRX2 \res_do_reg[3]  ( .D(n248), .CK(clk), .RN(n346), .Q(res_do[3]), .QN(
        n214) );
  DFFRX2 \res_do_reg[2]  ( .D(n249), .CK(clk), .RN(n346), .Q(res_do[2]), .QN(
        n215) );
  DFFRX2 \res_do_reg[1]  ( .D(n250), .CK(clk), .RN(n346), .Q(res_do[1]), .QN(
        n216) );
  DFFRX2 \res_do_reg[0]  ( .D(n268), .CK(clk), .RN(n346), .Q(res_do[0]), .QN(
        n217) );
  INVX3 U661 ( .A(reset), .Y(n589) );
  INVX4 U662 ( .A(n589), .Y(n590) );
endmodule

