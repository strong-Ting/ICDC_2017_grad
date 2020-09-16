/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Wed Sep 16 17:59:54 2020
/////////////////////////////////////////////////////////////


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


module DT_DW01_inc_1 ( A, SUM );
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
  CLKINVX1 U3 ( .A(A[11]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n3) );
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
  OAI21XL U17 ( .A0(n1), .A1(n4), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n4), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n3), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n3), .Y(n16) );
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


module DT_DW01_inc_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
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
  wire   N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N309, N310, N311, N312, N313, N314, N315,
         N316, N317, N318, N319, N320, N321, N322, N465, N466, N467, N468,
         N469, N470, N471, N472, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n263, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565;
  wire   [3:0] next_State;
  wire   [7:0] res_di_addOne;
  wire   [7:0] minTemp;

  DFFSX1 \counter_reg[1]  ( .D(n285), .CK(clk), .SN(reset), .QN(n266) );
  DFFSX1 \counter_reg[0]  ( .D(n284), .CK(clk), .SN(reset), .QN(n267) );
  DFFSX1 \counter_reg[2]  ( .D(n283), .CK(clk), .SN(reset), .Q(n288), .QN(n265) );
  DFFSX1 \counter_reg[3]  ( .D(n282), .CK(clk), .SN(reset), .Q(n293), .QN(n263) );
  DFFRX1 fw_finish_reg ( .D(n241), .CK(clk), .RN(reset), .Q(fw_finish), .QN(
        n219) );
  DFFRX1 done_reg ( .D(n230), .CK(clk), .RN(reset), .Q(done), .QN(n218) );
  DFFRX1 \res_do_reg[7]  ( .D(n243), .CK(clk), .RN(reset), .Q(res_do[7]), .QN(
        n204) );
  DFFRX1 \res_do_reg[6]  ( .D(n244), .CK(clk), .RN(reset), .Q(res_do[6]), .QN(
        n206) );
  DFFRX1 \res_do_reg[5]  ( .D(n245), .CK(clk), .RN(reset), .Q(res_do[5]), .QN(
        n208) );
  DFFRX1 \res_do_reg[4]  ( .D(n246), .CK(clk), .RN(reset), .Q(res_do[4]), .QN(
        n210) );
  DFFRX1 \res_do_reg[3]  ( .D(n247), .CK(clk), .RN(reset), .Q(res_do[3]), .QN(
        n212) );
  DFFRX1 \res_do_reg[2]  ( .D(n248), .CK(clk), .RN(reset), .Q(res_do[2]), .QN(
        n214) );
  DFFRX1 \res_do_reg[1]  ( .D(n249), .CK(clk), .RN(reset), .Q(res_do[1]), .QN(
        n216) );
  DFFRX1 \res_do_reg[0]  ( .D(n269), .CK(clk), .RN(reset), .Q(res_do[0]), .QN(
        n217) );
  DFFRX1 \minTemp_reg[7]  ( .D(n258), .CK(clk), .RN(reset), .Q(minTemp[7]), 
        .QN(n203) );
  DFFRX1 \sti_addr_reg[9]  ( .D(n231), .CK(clk), .RN(reset), .Q(sti_addr[9])
         );
  DFFRX1 \current_State_reg[3]  ( .D(n250), .CK(clk), .RN(reset), .Q(n561) );
  DFFRX1 \current_State_reg[0]  ( .D(next_State[0]), .CK(clk), .RN(reset), .Q(
        n563), .QN(n292) );
  DFFSX1 \res_addr_reg[13]  ( .D(n286), .CK(clk), .SN(reset), .Q(res_addr[13])
         );
  DFFRX1 \current_State_reg[1]  ( .D(next_State[1]), .CK(clk), .RN(reset), .Q(
        n562), .QN(n289) );
  DFFRX1 \minTemp_reg[6]  ( .D(n257), .CK(clk), .RN(reset), .Q(minTemp[6]), 
        .QN(n205) );
  DFFRX1 \minTemp_reg[5]  ( .D(n256), .CK(clk), .RN(reset), .Q(minTemp[5]), 
        .QN(n207) );
  DFFRX1 \minTemp_reg[4]  ( .D(n255), .CK(clk), .RN(reset), .Q(minTemp[4]), 
        .QN(n209) );
  DFFRX1 \minTemp_reg[3]  ( .D(n254), .CK(clk), .RN(reset), .Q(minTemp[3]), 
        .QN(n211) );
  DFFRX1 \minTemp_reg[2]  ( .D(n253), .CK(clk), .RN(reset), .Q(minTemp[2]), 
        .QN(n213) );
  DFFRX1 \minTemp_reg[1]  ( .D(n252), .CK(clk), .RN(reset), .Q(minTemp[1]), 
        .QN(n215) );
  DFFRX1 \current_State_reg[2]  ( .D(next_State[2]), .CK(clk), .RN(reset), .Q(
        n564), .QN(n291) );
  DFFRX1 \sti_addr_reg[1]  ( .D(n239), .CK(clk), .RN(reset), .Q(sti_addr[1])
         );
  DFFRX1 \sti_addr_reg[2]  ( .D(n238), .CK(clk), .RN(reset), .Q(sti_addr[2])
         );
  DFFRX1 \sti_addr_reg[3]  ( .D(n237), .CK(clk), .RN(reset), .Q(sti_addr[3])
         );
  DFFRX1 \sti_addr_reg[4]  ( .D(n236), .CK(clk), .RN(reset), .Q(sti_addr[4])
         );
  DFFRX1 \sti_addr_reg[5]  ( .D(n235), .CK(clk), .RN(reset), .Q(sti_addr[5])
         );
  DFFRX1 \sti_addr_reg[6]  ( .D(n234), .CK(clk), .RN(reset), .Q(sti_addr[6])
         );
  DFFRX1 \sti_addr_reg[7]  ( .D(n233), .CK(clk), .RN(reset), .Q(sti_addr[7])
         );
  DFFRX1 \sti_addr_reg[8]  ( .D(n232), .CK(clk), .RN(reset), .Q(sti_addr[8])
         );
  DFFRX1 \minTemp_reg[0]  ( .D(n251), .CK(clk), .RN(reset), .Q(minTemp[0]), 
        .QN(n268) );
  DFFSX1 \res_addr_reg[7]  ( .D(n276), .CK(clk), .SN(reset), .Q(res_addr[7]), 
        .QN(n294) );
  DFFSX1 \res_addr_reg[2]  ( .D(n271), .CK(clk), .SN(reset), .Q(res_addr[2]), 
        .QN(n296) );
  DFFSX1 \res_addr_reg[3]  ( .D(n272), .CK(clk), .SN(reset), .Q(res_addr[3])
         );
  DFFSX1 \res_addr_reg[4]  ( .D(n273), .CK(clk), .SN(reset), .Q(res_addr[4])
         );
  DFFSX1 \res_addr_reg[1]  ( .D(n270), .CK(clk), .SN(reset), .Q(res_addr[1])
         );
  DFFRX1 \sti_addr_reg[0]  ( .D(n240), .CK(clk), .RN(reset), .Q(sti_addr[0])
         );
  DFFSX1 \res_addr_reg[5]  ( .D(n274), .CK(clk), .SN(reset), .Q(res_addr[5])
         );
  DFFSX1 \res_addr_reg[8]  ( .D(n277), .CK(clk), .SN(reset), .Q(res_addr[8])
         );
  DFFSX1 \res_addr_reg[6]  ( .D(n275), .CK(clk), .SN(reset), .Q(res_addr[6])
         );
  DFFSX1 \res_addr_reg[9]  ( .D(n278), .CK(clk), .SN(reset), .Q(res_addr[9])
         );
  DFFSX1 \res_addr_reg[12]  ( .D(n281), .CK(clk), .SN(reset), .Q(res_addr[12])
         );
  DFFSX1 \res_addr_reg[10]  ( .D(n279), .CK(clk), .SN(reset), .Q(res_addr[10]), 
        .QN(n295) );
  DFFSX1 \res_addr_reg[11]  ( .D(n280), .CK(clk), .SN(reset), .Q(res_addr[11])
         );
  DFFSX1 \res_addr_reg[0]  ( .D(n287), .CK(clk), .SN(reset), .Q(res_addr[0]), 
        .QN(n290) );
  DFFRX1 res_rd_reg ( .D(N143), .CK(clk), .RN(reset), .Q(res_rd) );
  DFFRX1 res_wr_reg ( .D(N144), .CK(clk), .RN(reset), .Q(res_wr) );
  DFFRX1 sti_rd_reg ( .D(n565), .CK(clk), .RN(reset), .Q(sti_rd) );
  CLKINVX1 U239 ( .A(n297), .Y(n565) );
  NAND4X1 U240 ( .A(n298), .B(n299), .C(n300), .D(n301), .Y(n287) );
  NAND2X1 U241 ( .A(N157), .B(n302), .Y(n300) );
  NAND2X1 U242 ( .A(N309), .B(n303), .Y(n299) );
  MX3XL U243 ( .A(n304), .B(n305), .C(n306), .S0(n307), .S1(res_addr[0]), .Y(
        n298) );
  NOR2X1 U244 ( .A(n308), .B(n309), .Y(n306) );
  MXI2X1 U245 ( .A(n305), .B(n304), .S0(n307), .Y(n309) );
  NAND4X1 U246 ( .A(n310), .B(n311), .C(n312), .D(n301), .Y(n286) );
  NAND2X1 U247 ( .A(N170), .B(n302), .Y(n312) );
  NAND2X1 U248 ( .A(N322), .B(n303), .Y(n311) );
  MX3XL U249 ( .A(n304), .B(n305), .C(n313), .S0(n314), .S1(res_addr[13]), .Y(
        n310) );
  NOR2X1 U250 ( .A(n308), .B(n315), .Y(n313) );
  MXI2X1 U251 ( .A(n305), .B(n304), .S0(n314), .Y(n315) );
  OAI2BB1X1 U252 ( .A0N(n316), .A1N(n317), .B0(n318), .Y(n314) );
  OAI21XL U253 ( .A0(n317), .A1(n316), .B0(res_addr[12]), .Y(n318) );
  OAI221XL U254 ( .A0(n319), .A1(n320), .B0(n266), .B1(n321), .C0(n297), .Y(
        n285) );
  XOR2X1 U255 ( .A(n322), .B(n323), .Y(n320) );
  NAND2X1 U256 ( .A(n324), .B(n297), .Y(n284) );
  CLKMX2X2 U257 ( .A(n321), .B(n319), .S0(n267), .Y(n324) );
  OAI221XL U258 ( .A0(n319), .A1(n325), .B0(n265), .B1(n321), .C0(n297), .Y(
        n283) );
  XNOR2X1 U259 ( .A(n326), .B(n327), .Y(n325) );
  XOR2X1 U260 ( .A(n288), .B(n322), .Y(n327) );
  OAI221XL U261 ( .A0(n319), .A1(n328), .B0(n263), .B1(n321), .C0(n297), .Y(
        n282) );
  NAND2X1 U262 ( .A(n329), .B(n330), .Y(n297) );
  NAND3X1 U263 ( .A(n331), .B(n332), .C(n319), .Y(n321) );
  XOR2X1 U264 ( .A(n333), .B(n334), .Y(n328) );
  XOR2X1 U265 ( .A(n322), .B(n263), .Y(n334) );
  OAI2BB1X1 U266 ( .A0N(n322), .A1N(n326), .B0(n335), .Y(n333) );
  OAI21XL U267 ( .A0(n322), .A1(n326), .B0(n288), .Y(n335) );
  OAI21XL U268 ( .A0(n336), .A1(n337), .B0(n338), .Y(n326) );
  AOI21X1 U269 ( .A0(next_State[0]), .A1(N143), .B0(n322), .Y(n319) );
  CLKINVX1 U270 ( .A(n337), .Y(n322) );
  NOR2X1 U271 ( .A(n339), .B(n340), .Y(n337) );
  NAND4X1 U272 ( .A(n341), .B(n342), .C(n343), .D(n301), .Y(n281) );
  NAND2X1 U273 ( .A(N169), .B(n302), .Y(n343) );
  NAND2X1 U274 ( .A(N321), .B(n303), .Y(n342) );
  MX3XL U275 ( .A(n304), .B(n305), .C(n344), .S0(n316), .S1(res_addr[12]), .Y(
        n341) );
  NOR2X1 U276 ( .A(n308), .B(n345), .Y(n344) );
  MXI2X1 U277 ( .A(n305), .B(n304), .S0(n316), .Y(n345) );
  OAI21XL U278 ( .A0(n346), .A1(n347), .B0(n348), .Y(n316) );
  OAI21XL U279 ( .A0(n317), .A1(n349), .B0(res_addr[11]), .Y(n348) );
  CLKINVX1 U280 ( .A(n346), .Y(n349) );
  NAND4X1 U281 ( .A(n350), .B(n351), .C(n352), .D(n301), .Y(n280) );
  NAND2X1 U282 ( .A(N168), .B(n302), .Y(n352) );
  NAND2X1 U283 ( .A(N320), .B(n303), .Y(n351) );
  MX3XL U284 ( .A(n305), .B(n304), .C(n353), .S0(n346), .S1(res_addr[11]), .Y(
        n350) );
  NOR2X1 U285 ( .A(n308), .B(n354), .Y(n353) );
  MXI2X1 U286 ( .A(n304), .B(n305), .S0(n346), .Y(n354) );
  AOI2BB2X1 U287 ( .B0(n355), .B1(n317), .A0N(n356), .A1N(n295), .Y(n346) );
  NOR2X1 U288 ( .A(n317), .B(n355), .Y(n356) );
  NAND4X1 U289 ( .A(n357), .B(n358), .C(n359), .D(n301), .Y(n279) );
  NAND2X1 U290 ( .A(N167), .B(n302), .Y(n359) );
  NAND2X1 U291 ( .A(N319), .B(n303), .Y(n358) );
  MX3XL U292 ( .A(n304), .B(n305), .C(n360), .S0(n355), .S1(res_addr[10]), .Y(
        n357) );
  NOR2X1 U293 ( .A(n308), .B(n361), .Y(n360) );
  MXI2X1 U294 ( .A(n305), .B(n304), .S0(n355), .Y(n361) );
  OAI2BB1X1 U295 ( .A0N(n362), .A1N(n317), .B0(n363), .Y(n355) );
  OAI21XL U296 ( .A0(n317), .A1(n362), .B0(res_addr[9]), .Y(n363) );
  NAND4X1 U297 ( .A(n364), .B(n365), .C(n366), .D(n301), .Y(n278) );
  NAND2X1 U298 ( .A(N166), .B(n302), .Y(n366) );
  NAND2X1 U299 ( .A(N318), .B(n303), .Y(n365) );
  MX3XL U300 ( .A(n304), .B(n305), .C(n367), .S0(n362), .S1(res_addr[9]), .Y(
        n364) );
  NOR2X1 U301 ( .A(n308), .B(n368), .Y(n367) );
  MXI2X1 U302 ( .A(n305), .B(n304), .S0(n362), .Y(n368) );
  OAI2BB1X1 U303 ( .A0N(n369), .A1N(n317), .B0(n370), .Y(n362) );
  OAI21XL U304 ( .A0(n317), .A1(n369), .B0(res_addr[8]), .Y(n370) );
  NAND4X1 U305 ( .A(n371), .B(n372), .C(n373), .D(n301), .Y(n277) );
  NAND2X1 U306 ( .A(N165), .B(n302), .Y(n373) );
  NAND2X1 U307 ( .A(N317), .B(n303), .Y(n372) );
  MX3XL U308 ( .A(n304), .B(n305), .C(n374), .S0(n369), .S1(res_addr[8]), .Y(
        n371) );
  NOR2X1 U309 ( .A(n308), .B(n375), .Y(n374) );
  MXI2X1 U310 ( .A(n305), .B(n304), .S0(n369), .Y(n375) );
  OAI21XL U311 ( .A0(n376), .A1(n377), .B0(n378), .Y(n369) );
  OAI2BB1X1 U312 ( .A0N(n377), .A1N(n376), .B0(res_addr[7]), .Y(n378) );
  NAND2X1 U313 ( .A(n347), .B(n379), .Y(n305) );
  NAND2X1 U314 ( .A(n379), .B(n317), .Y(n304) );
  OAI211X1 U315 ( .A0(n294), .A1(n380), .B0(n381), .C0(n382), .Y(n276) );
  AOI221XL U316 ( .A0(N164), .A1(n302), .B0(n383), .B1(n379), .C0(n384), .Y(
        n382) );
  CLKINVX1 U317 ( .A(n385), .Y(n384) );
  XOR2X1 U318 ( .A(n386), .B(n307), .Y(n383) );
  XOR2X1 U319 ( .A(n294), .B(n376), .Y(n386) );
  AOI22X1 U320 ( .A0(n387), .A1(n388), .B0(n389), .B1(res_addr[6]), .Y(n376)
         );
  OR2X1 U321 ( .A(n387), .B(n388), .Y(n389) );
  NAND2X1 U322 ( .A(N316), .B(n303), .Y(n381) );
  NAND4X1 U323 ( .A(n390), .B(n391), .C(n392), .D(n301), .Y(n275) );
  NAND2X1 U324 ( .A(N163), .B(n302), .Y(n392) );
  NAND2X1 U325 ( .A(N315), .B(n303), .Y(n391) );
  MX3XL U326 ( .A(n393), .B(n394), .C(n395), .S0(n387), .S1(res_addr[6]), .Y(
        n390) );
  NOR2X1 U327 ( .A(n308), .B(n396), .Y(n395) );
  MXI2X1 U328 ( .A(n394), .B(n393), .S0(n387), .Y(n396) );
  OAI2BB1X1 U329 ( .A0N(n397), .A1N(n388), .B0(n398), .Y(n387) );
  OAI21XL U330 ( .A0(n388), .A1(n397), .B0(res_addr[5]), .Y(n398) );
  NAND4X1 U331 ( .A(n399), .B(n400), .C(n401), .D(n301), .Y(n274) );
  NAND2X1 U332 ( .A(N162), .B(n302), .Y(n401) );
  NAND2X1 U333 ( .A(N314), .B(n303), .Y(n400) );
  MX3XL U334 ( .A(n393), .B(n394), .C(n402), .S0(n397), .S1(res_addr[5]), .Y(
        n399) );
  NOR2X1 U335 ( .A(n308), .B(n403), .Y(n402) );
  MXI2X1 U336 ( .A(n394), .B(n393), .S0(n397), .Y(n403) );
  OAI2BB1X1 U337 ( .A0N(n404), .A1N(n388), .B0(n405), .Y(n397) );
  OAI21XL U338 ( .A0(n388), .A1(n404), .B0(res_addr[4]), .Y(n405) );
  NAND4X1 U339 ( .A(n406), .B(n407), .C(n408), .D(n301), .Y(n273) );
  NAND2X1 U340 ( .A(N161), .B(n302), .Y(n408) );
  NAND2X1 U341 ( .A(N313), .B(n303), .Y(n407) );
  MX3XL U342 ( .A(n393), .B(n394), .C(n409), .S0(n404), .S1(res_addr[4]), .Y(
        n406) );
  NOR2X1 U343 ( .A(n308), .B(n410), .Y(n409) );
  MXI2X1 U344 ( .A(n394), .B(n393), .S0(n404), .Y(n410) );
  OAI21XL U345 ( .A0(n411), .A1(n412), .B0(n413), .Y(n404) );
  OAI21XL U346 ( .A0(n388), .A1(n414), .B0(res_addr[3]), .Y(n413) );
  CLKINVX1 U347 ( .A(n411), .Y(n414) );
  NAND4X1 U348 ( .A(n415), .B(n416), .C(n417), .D(n301), .Y(n272) );
  NAND2X1 U349 ( .A(N160), .B(n302), .Y(n417) );
  NAND2X1 U350 ( .A(N312), .B(n303), .Y(n416) );
  MX3XL U351 ( .A(n394), .B(n393), .C(n418), .S0(n411), .S1(res_addr[3]), .Y(
        n415) );
  NOR2X1 U352 ( .A(n308), .B(n419), .Y(n418) );
  MXI2X1 U353 ( .A(n393), .B(n394), .S0(n411), .Y(n419) );
  AOI2BB2X1 U354 ( .B0(n420), .B1(n388), .A0N(n421), .A1N(n296), .Y(n411) );
  NOR2X1 U355 ( .A(n388), .B(n420), .Y(n421) );
  NAND4X1 U356 ( .A(n422), .B(n423), .C(n424), .D(n301), .Y(n271) );
  NAND2X1 U357 ( .A(N159), .B(n302), .Y(n424) );
  NAND2X1 U358 ( .A(N311), .B(n303), .Y(n423) );
  MX3XL U359 ( .A(n393), .B(n394), .C(n425), .S0(n420), .S1(res_addr[2]), .Y(
        n422) );
  NOR2X1 U360 ( .A(n308), .B(n426), .Y(n425) );
  MXI2X1 U361 ( .A(n394), .B(n393), .S0(n420), .Y(n426) );
  OAI2BB1X1 U362 ( .A0N(n427), .A1N(n388), .B0(n428), .Y(n420) );
  OAI21XL U363 ( .A0(n388), .A1(n427), .B0(res_addr[1]), .Y(n428) );
  NAND4X1 U364 ( .A(n429), .B(n430), .C(n431), .D(n301), .Y(n270) );
  NAND2X1 U365 ( .A(N158), .B(n302), .Y(n431) );
  NOR2BX1 U366 ( .AN(n432), .B(n308), .Y(n302) );
  OAI21XL U367 ( .A0(n433), .A1(n434), .B0(n435), .Y(n432) );
  NAND2X1 U368 ( .A(N310), .B(n303), .Y(n430) );
  NOR2BX1 U369 ( .AN(n436), .B(n308), .Y(n303) );
  OAI31XL U370 ( .A0(n437), .A1(n438), .A2(n433), .B0(n439), .Y(n436) );
  MX3XL U371 ( .A(n393), .B(n394), .C(n440), .S0(n427), .S1(res_addr[1]), .Y(
        n429) );
  NOR2X1 U372 ( .A(n308), .B(n441), .Y(n440) );
  MXI2X1 U373 ( .A(n394), .B(n393), .S0(n427), .Y(n441) );
  OAI21XL U374 ( .A0(n347), .A1(n377), .B0(n442), .Y(n427) );
  OAI21XL U375 ( .A0(n317), .A1(n307), .B0(res_addr[0]), .Y(n442) );
  CLKINVX1 U376 ( .A(n377), .Y(n307) );
  CLKINVX1 U377 ( .A(n347), .Y(n317) );
  XOR2X1 U378 ( .A(n347), .B(n443), .Y(n377) );
  NAND2X1 U379 ( .A(n412), .B(n379), .Y(n394) );
  NAND2X1 U380 ( .A(n379), .B(n388), .Y(n393) );
  CLKINVX1 U381 ( .A(n412), .Y(n388) );
  XOR2X1 U382 ( .A(n347), .B(n444), .Y(n412) );
  MXI2X1 U383 ( .A(n443), .B(n444), .S0(n434), .Y(n347) );
  NOR2BX1 U384 ( .AN(n445), .B(n308), .Y(n379) );
  CLKINVX1 U385 ( .A(n380), .Y(n308) );
  OAI211X1 U386 ( .A0(n446), .A1(n293), .B0(n435), .C0(n447), .Y(n380) );
  AND3X1 U387 ( .A(n301), .B(n439), .C(n385), .Y(n447) );
  NAND3X1 U388 ( .A(n437), .B(n292), .C(n448), .Y(n439) );
  AOI31X1 U389 ( .A0(n564), .A1(n434), .A2(n449), .B0(n340), .Y(n435) );
  CLKINVX1 U390 ( .A(n450), .Y(n340) );
  AOI2BB1X1 U391 ( .A0N(n451), .A1N(n433), .B0(n445), .Y(n446) );
  MXI2X1 U392 ( .A(n336), .B(n452), .S0(n265), .Y(n433) );
  CLKINVX1 U393 ( .A(n323), .Y(n452) );
  NOR2X1 U394 ( .A(n453), .B(n454), .Y(n323) );
  AOI2BB1X1 U395 ( .A0N(n444), .A1N(n443), .B0(n451), .Y(n445) );
  OA21XL U396 ( .A0(n438), .A1(n437), .B0(n434), .Y(n451) );
  NAND2X1 U397 ( .A(n329), .B(next_State[2]), .Y(n434) );
  CLKINVX1 U398 ( .A(n437), .Y(n329) );
  NAND2X1 U399 ( .A(next_State[0]), .B(n455), .Y(n437) );
  CLKINVX1 U400 ( .A(n250), .Y(n438) );
  OAI221XL U401 ( .A0(n456), .A1(n450), .B0(n457), .B1(n217), .C0(n458), .Y(
        n269) );
  AOI2BB2X1 U402 ( .B0(N465), .B1(n459), .A0N(n332), .A1N(n268), .Y(n458) );
  AOI21X1 U403 ( .A0(sti_di[5]), .A1(n460), .B0(n461), .Y(n456) );
  MXI2X1 U404 ( .A(n462), .B(n463), .S0(n263), .Y(n461) );
  AOI221XL U405 ( .A0(sti_di[3]), .A1(n444), .B0(sti_di[0]), .B1(n443), .C0(
        n464), .Y(n463) );
  OAI2BB1X1 U406 ( .A0N(n465), .A1N(n267), .B0(n466), .Y(n464) );
  AOI32X1 U407 ( .A0(n467), .A1(n288), .A2(sti_di[7]), .B0(sti_di[1]), .B1(
        n468), .Y(n466) );
  MX3XL U408 ( .A(sti_di[6]), .B(sti_di[2]), .C(n469), .S0(n265), .S1(n266), 
        .Y(n465) );
  NOR2BX1 U409 ( .AN(sti_di[4]), .B(n265), .Y(n469) );
  AOI211X1 U410 ( .A0(sti_di[8]), .A1(n443), .B0(n470), .C0(n471), .Y(n462) );
  MXI2X1 U411 ( .A(n472), .B(n473), .S0(n265), .Y(n471) );
  NAND2X1 U412 ( .A(sti_di[10]), .B(n454), .Y(n473) );
  AOI221XL U413 ( .A0(sti_di[14]), .A1(n454), .B0(sti_di[12]), .B1(n336), .C0(
        n474), .Y(n472) );
  AO22X1 U414 ( .A0(sti_di[13]), .A1(n453), .B0(sti_di[15]), .B1(n467), .Y(
        n474) );
  NOR2BX1 U415 ( .AN(n267), .B(n266), .Y(n454) );
  AO22X1 U416 ( .A0(sti_di[11]), .A1(n444), .B0(sti_di[9]), .B1(n468), .Y(n470) );
  NOR2X1 U417 ( .A(n288), .B(n338), .Y(n444) );
  CLKINVX1 U418 ( .A(n467), .Y(n338) );
  NOR2BX1 U419 ( .AN(n336), .B(n288), .Y(n443) );
  AND2X1 U420 ( .A(n267), .B(n266), .Y(n336) );
  OAI21XL U421 ( .A0(n475), .A1(n476), .B0(n477), .Y(n258) );
  MXI2X1 U422 ( .A(minTemp[7]), .B(n478), .S0(n479), .Y(n477) );
  OAI21XL U423 ( .A0(n475), .A1(n480), .B0(n481), .Y(n257) );
  MXI2X1 U424 ( .A(minTemp[6]), .B(n482), .S0(n479), .Y(n481) );
  OAI21XL U425 ( .A0(n475), .A1(n483), .B0(n484), .Y(n256) );
  MXI2X1 U426 ( .A(minTemp[5]), .B(n485), .S0(n479), .Y(n484) );
  OAI21XL U427 ( .A0(n475), .A1(n486), .B0(n487), .Y(n255) );
  MXI2X1 U428 ( .A(minTemp[4]), .B(n488), .S0(n479), .Y(n487) );
  OAI21XL U429 ( .A0(n475), .A1(n489), .B0(n490), .Y(n254) );
  MXI2X1 U430 ( .A(minTemp[3]), .B(n491), .S0(n479), .Y(n490) );
  OAI21XL U431 ( .A0(n475), .A1(n492), .B0(n493), .Y(n253) );
  MXI2X1 U432 ( .A(minTemp[2]), .B(n494), .S0(n479), .Y(n493) );
  OAI21XL U433 ( .A0(n475), .A1(n495), .B0(n496), .Y(n252) );
  MXI2X1 U434 ( .A(minTemp[1]), .B(n497), .S0(n479), .Y(n496) );
  OAI21XL U435 ( .A0(n475), .A1(n498), .B0(n499), .Y(n251) );
  MXI2X1 U436 ( .A(minTemp[0]), .B(n500), .S0(n479), .Y(n499) );
  OAI211X1 U437 ( .A0(n501), .A1(n502), .B0(n475), .C0(n503), .Y(n479) );
  OAI211X1 U438 ( .A0(n504), .A1(minTemp[7]), .B0(n505), .C0(n506), .Y(n503)
         );
  OAI221XL U439 ( .A0(n203), .A1(n478), .B0(n205), .B1(n482), .C0(n507), .Y(
        n505) );
  OAI221XL U440 ( .A0(n508), .A1(minTemp[5]), .B0(n509), .B1(minTemp[6]), .C0(
        n510), .Y(n507) );
  OAI221XL U441 ( .A0(n209), .A1(n488), .B0(n207), .B1(n485), .C0(n511), .Y(
        n510) );
  CLKINVX1 U442 ( .A(n512), .Y(n511) );
  AOI221XL U443 ( .A0(n491), .A1(n211), .B0(n488), .B1(n209), .C0(n513), .Y(
        n512) );
  CLKINVX1 U444 ( .A(n514), .Y(n513) );
  OAI221XL U445 ( .A0(n213), .A1(n494), .B0(n211), .B1(n491), .C0(n515), .Y(
        n514) );
  CLKINVX1 U446 ( .A(n516), .Y(n515) );
  AOI221XL U447 ( .A0(n497), .A1(n215), .B0(n494), .B1(n213), .C0(n517), .Y(
        n516) );
  OA21XL U448 ( .A0(n215), .A1(n497), .B0(n500), .Y(n517) );
  OAI2BB2XL U449 ( .B0(n495), .B1(n501), .A0N(res_di_addOne[1]), .A1N(n518), 
        .Y(n497) );
  CLKINVX1 U450 ( .A(res_di[1]), .Y(n495) );
  OAI2BB2XL U451 ( .B0(n492), .B1(n501), .A0N(res_di_addOne[2]), .A1N(n518), 
        .Y(n494) );
  CLKINVX1 U452 ( .A(res_di[2]), .Y(n492) );
  OAI2BB2XL U453 ( .B0(n489), .B1(n501), .A0N(res_di_addOne[3]), .A1N(n518), 
        .Y(n491) );
  CLKINVX1 U454 ( .A(res_di[3]), .Y(n489) );
  OAI2BB2XL U455 ( .B0(n486), .B1(n501), .A0N(res_di_addOne[4]), .A1N(n518), 
        .Y(n488) );
  CLKINVX1 U456 ( .A(res_di[4]), .Y(n486) );
  CLKINVX1 U457 ( .A(n482), .Y(n509) );
  CLKINVX1 U458 ( .A(n485), .Y(n508) );
  OAI2BB2XL U459 ( .B0(n483), .B1(n501), .A0N(res_di_addOne[5]), .A1N(n518), 
        .Y(n485) );
  CLKINVX1 U460 ( .A(res_di[5]), .Y(n483) );
  OAI2BB2XL U461 ( .B0(n480), .B1(n501), .A0N(res_di_addOne[6]), .A1N(n518), 
        .Y(n482) );
  CLKINVX1 U462 ( .A(res_di[6]), .Y(n480) );
  CLKINVX1 U463 ( .A(n504), .Y(n478) );
  AOI2BB2X1 U464 ( .B0(res_di_addOne[7]), .B1(n518), .A0N(n501), .A1N(n476), 
        .Y(n504) );
  CLKINVX1 U465 ( .A(res_di[7]), .Y(n476) );
  NAND2X1 U466 ( .A(n468), .B(n263), .Y(n502) );
  NOR2X1 U467 ( .A(n288), .B(n519), .Y(n468) );
  OAI2BB2XL U468 ( .B0(n498), .B1(n501), .A0N(res_di_addOne[0]), .A1N(n518), 
        .Y(n500) );
  CLKINVX1 U469 ( .A(n520), .Y(n518) );
  CLKINVX1 U470 ( .A(res_di[0]), .Y(n498) );
  OAI221XL U471 ( .A0(n457), .A1(n216), .B0(n215), .B1(n332), .C0(n521), .Y(
        n249) );
  NAND2X1 U472 ( .A(N466), .B(n459), .Y(n521) );
  OAI221XL U473 ( .A0(n457), .A1(n214), .B0(n213), .B1(n332), .C0(n522), .Y(
        n248) );
  NAND2X1 U474 ( .A(N467), .B(n459), .Y(n522) );
  OAI221XL U475 ( .A0(n457), .A1(n212), .B0(n211), .B1(n332), .C0(n523), .Y(
        n247) );
  NAND2X1 U476 ( .A(N468), .B(n459), .Y(n523) );
  OAI221XL U477 ( .A0(n457), .A1(n210), .B0(n209), .B1(n332), .C0(n524), .Y(
        n246) );
  NAND2X1 U478 ( .A(N469), .B(n459), .Y(n524) );
  OAI221XL U479 ( .A0(n457), .A1(n208), .B0(n207), .B1(n332), .C0(n525), .Y(
        n245) );
  NAND2X1 U480 ( .A(N470), .B(n459), .Y(n525) );
  OAI221XL U481 ( .A0(n457), .A1(n206), .B0(n205), .B1(n332), .C0(n526), .Y(
        n244) );
  NAND2X1 U482 ( .A(N471), .B(n459), .Y(n526) );
  OAI221XL U483 ( .A0(n457), .A1(n204), .B0(n203), .B1(n332), .C0(n527), .Y(
        n243) );
  NAND2X1 U484 ( .A(N472), .B(n459), .Y(n527) );
  CLKINVX1 U485 ( .A(n331), .Y(n459) );
  NAND3X1 U486 ( .A(n332), .B(n450), .C(n331), .Y(n457) );
  NAND2X1 U487 ( .A(N144), .B(next_State[2]), .Y(n331) );
  NAND2X1 U488 ( .A(N144), .B(n330), .Y(n450) );
  NAND2X1 U489 ( .A(N144), .B(n250), .Y(n332) );
  NAND2X1 U490 ( .A(n219), .B(n301), .Y(n241) );
  CLKMX2X2 U491 ( .A(N133), .B(sti_addr[0]), .S0(n528), .Y(n240) );
  CLKMX2X2 U492 ( .A(N134), .B(sti_addr[1]), .S0(n528), .Y(n239) );
  CLKMX2X2 U493 ( .A(N135), .B(sti_addr[2]), .S0(n528), .Y(n238) );
  CLKMX2X2 U494 ( .A(N136), .B(sti_addr[3]), .S0(n528), .Y(n237) );
  CLKMX2X2 U495 ( .A(N137), .B(sti_addr[4]), .S0(n528), .Y(n236) );
  CLKMX2X2 U496 ( .A(N138), .B(sti_addr[5]), .S0(n528), .Y(n235) );
  CLKMX2X2 U497 ( .A(N139), .B(sti_addr[6]), .S0(n528), .Y(n234) );
  CLKMX2X2 U498 ( .A(N140), .B(sti_addr[7]), .S0(n528), .Y(n233) );
  CLKMX2X2 U499 ( .A(N141), .B(sti_addr[8]), .S0(n528), .Y(n232) );
  CLKMX2X2 U500 ( .A(N142), .B(sti_addr[9]), .S0(n528), .Y(n231) );
  OAI21XL U501 ( .A0(n292), .A1(n529), .B0(n218), .Y(n230) );
  NOR2X1 U502 ( .A(n455), .B(next_State[0]), .Y(N144) );
  OAI211X1 U503 ( .A0(n460), .A1(n530), .B0(n531), .C0(n532), .Y(next_State[0]) );
  AOI211X1 U504 ( .A0(n533), .A1(n534), .B0(n535), .C0(n536), .Y(n532) );
  NOR3X1 U505 ( .A(n537), .B(n562), .C(n564), .Y(n536) );
  AND4X1 U506 ( .A(n288), .B(n293), .C(n467), .D(n339), .Y(n535) );
  NAND2X1 U507 ( .A(n475), .B(n538), .Y(n533) );
  CLKINVX1 U508 ( .A(n506), .Y(n530) );
  CLKINVX1 U509 ( .A(next_State[1]), .Y(n455) );
  NOR2X1 U510 ( .A(n330), .B(next_State[1]), .Y(N143) );
  NAND4X1 U511 ( .A(n531), .B(n539), .C(n540), .D(n528), .Y(next_State[1]) );
  NAND3X1 U512 ( .A(n291), .B(n289), .C(n541), .Y(n528) );
  OAI31XL U513 ( .A0(n542), .A1(n265), .A2(n263), .B0(n339), .Y(n540) );
  NOR3X1 U514 ( .A(n537), .B(n564), .C(n289), .Y(n339) );
  CLKINVX1 U515 ( .A(n449), .Y(n537) );
  OAI31XL U516 ( .A0(n290), .A1(n294), .A2(n543), .B0(n467), .Y(n542) );
  NOR2X1 U517 ( .A(n266), .B(n267), .Y(n467) );
  NAND2X1 U518 ( .A(n460), .B(n506), .Y(n539) );
  NAND2X1 U519 ( .A(n520), .B(n501), .Y(n506) );
  NOR3X1 U520 ( .A(n519), .B(n265), .C(n293), .Y(n460) );
  CLKINVX1 U521 ( .A(n453), .Y(n519) );
  NOR2BX1 U522 ( .AN(n266), .B(n267), .Y(n453) );
  OA21XL U523 ( .A0(n292), .A1(n529), .B0(n544), .Y(n531) );
  MXI2X1 U524 ( .A(n545), .B(n546), .S0(res_addr[7]), .Y(n544) );
  NOR3X1 U525 ( .A(n547), .B(n548), .C(n549), .Y(n546) );
  OAI211X1 U526 ( .A0(n550), .A1(n551), .B0(n290), .C0(n295), .Y(n549) );
  NOR2X1 U527 ( .A(n534), .B(n475), .Y(n551) );
  CLKINVX1 U528 ( .A(n529), .Y(n550) );
  OR4X1 U529 ( .A(res_addr[11]), .B(res_addr[12]), .C(res_addr[13]), .D(
        res_addr[1]), .Y(n548) );
  NAND4BBXL U530 ( .AN(res_addr[3]), .BN(res_addr[4]), .C(n296), .D(n552), .Y(
        n547) );
  NOR4X1 U531 ( .A(res_addr[9]), .B(res_addr[8]), .C(res_addr[6]), .D(
        res_addr[5]), .Y(n552) );
  AOI211X1 U532 ( .A0(n553), .A1(n554), .B0(n543), .C0(res_addr[0]), .Y(n545)
         );
  OR2X1 U533 ( .A(n555), .B(n556), .Y(n543) );
  NAND4BX1 U534 ( .AN(n557), .B(res_addr[2]), .C(res_addr[13]), .D(res_addr[1]), .Y(n556) );
  NAND3X1 U535 ( .A(res_addr[11]), .B(res_addr[10]), .C(res_addr[12]), .Y(n557) );
  NAND4BX1 U536 ( .AN(n558), .B(res_addr[9]), .C(res_addr[6]), .D(res_addr[8]), 
        .Y(n555) );
  NAND3X1 U537 ( .A(res_addr[4]), .B(res_addr[3]), .C(res_addr[5]), .Y(n558)
         );
  OR2X1 U538 ( .A(n534), .B(n538), .Y(n554) );
  NAND2X1 U539 ( .A(n559), .B(n560), .Y(n534) );
  NOR4X1 U540 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n560) );
  NOR4X1 U541 ( .A(res_di[3]), .B(res_di[2]), .C(res_di[1]), .D(res_di[0]), 
        .Y(n559) );
  NOR2X1 U542 ( .A(n250), .B(next_State[2]), .Y(n330) );
  NAND4X1 U543 ( .A(n385), .B(n501), .C(n538), .D(n553), .Y(next_State[2]) );
  NAND3X1 U544 ( .A(n564), .B(n449), .C(n562), .Y(n553) );
  NAND3X1 U545 ( .A(n449), .B(n289), .C(n564), .Y(n538) );
  NOR2X1 U546 ( .A(n563), .B(n561), .Y(n449) );
  NAND3X1 U547 ( .A(n564), .B(n289), .C(n541), .Y(n501) );
  NAND3X1 U548 ( .A(n562), .B(n291), .C(n541), .Y(n385) );
  NAND4X1 U549 ( .A(n301), .B(n475), .C(n529), .D(n520), .Y(n250) );
  NAND3X1 U550 ( .A(n563), .B(n289), .C(n448), .Y(n520) );
  NAND2X1 U551 ( .A(n448), .B(n562), .Y(n529) );
  NAND3X1 U552 ( .A(n292), .B(n289), .C(n448), .Y(n475) );
  NOR2BX1 U553 ( .AN(n561), .B(n564), .Y(n448) );
  NAND3X1 U554 ( .A(n562), .B(n564), .C(n541), .Y(n301) );
  NOR2X1 U555 ( .A(n292), .B(n561), .Y(n541) );
  DT_DW01_inc_0 add_225_S2 ( .A(minTemp), .SUM({N472, N471, N470, N469, N468, 
        N467, N466, N465}) );
  DT_DW01_inc_1 add_145_S2 ( .A(sti_addr), .SUM({N142, N141, N140, N139, N138, 
        N137, N136, N135, N134, N133}) );
  DT_DW01_dec_0 r462 ( .A(res_addr), .SUM({N322, N321, N320, N319, N318, N317, 
        N316, N315, N314, N313, N312, N311, N310, N309}) );
  DT_DW01_inc_2 r458 ( .A(res_addr), .SUM({N170, N169, N168, N167, N166, N165, 
        N164, N163, N162, N161, N160, N159, N158, N157}) );
  DT_DW01_inc_3 add_203 ( .A(res_di), .SUM(res_di_addOne) );
endmodule

