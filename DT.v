module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);

reg [3:0] current_State;
reg [3:0] next_State;

//state
parameter INIT = 4'd0;
parameter READ_INIT = 4'd1;
parameter WRITE_INIT = 4'd2;
parameter WRITE_INIT_FINISH = 4'd3; // to delay 1 clk
parameter READ_F = 4'd4; //READ_FORWARD
parameter FORWARD = 4'd5;
parameter WRITE_F = 4'd6; //WRITE_FORWARD
parameter READ_B = 4'd7; //READ_BACKWARD
parameter BACKWARD = 4'd8;
parameter WRITE_B = 4'd9; //WRITE_BACKWARD
parameter FINISH = 4'd10;

always@(posedge clk or negedge reset)
begin
	if(!reset) current_State <= INIT;
	else current_State <= next_State;
end

always@(*)
begin
	case(current_State)
	INIT:
	READ_INIT:
	WRITE_INIT:
	WRITE_INIT_FINISH:
	READ_F:
	FORWARD:
	WRITE_F:
	READ_B:
	BACKWARD:
	WRITE_B:
	FINISH:
	endcase
end


endmodule


