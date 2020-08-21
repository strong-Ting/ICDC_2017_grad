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
	input		[7:0]	res_di,
	output reg fw_finish
	);

reg [4:0] current_State;
reg [4:0] next_State;
reg [7:0] minTemp;
reg [3:0] counter;

//state
parameter INIT = 5'd0;
parameter READ_INIT = 5'd1;
parameter WRITE_INIT = 5'd2;
parameter WRITE_INIT_FINISH = 5'd3; // to delay 1 clk
parameter READ_F = 5'd4; //READ_FORWARD
parameter F0 = 5'd5; //FORWARD
parameter F1 = 5'd6;
parameter F2 = 5'd7;
parameter F3 = 5'd8;
parameter F4 = 5'd9;
parameter F5 = 5'd10;

parameter WRITE_F = 5'd11; //WRITE_FORWARD
parameter FORWARD_FINISH = 5'd12;
parameter READ_B = 5'd13; //READ_BACKWARD
parameter B0 = 5'd14; //BACKWARD
parameter B1 = 5'd15;
parameter B2 = 5'd16;
parameter B3 = 5'd17;
parameter B4 = 5'd18;
parameter B5 = 5'd19;

parameter WRITE_B = 5'd20; //WRITE_BACKWARD
parameter FINISH = 5'd21;


always@(posedge clk or negedge reset)
begin
	if(!reset) current_State <= INIT;
	else current_State <= next_State;
end

always@(*)
begin
	case(current_State)
	INIT:
	begin
		next_State = READ_INIT;
	end
	READ_INIT: 
	begin
		next_State = WRITE_INIT;
	end
	WRITE_INIT:
	begin
		if(counter == 4'd15)
		begin
			if(res_addr == 14'd16383) next_State = WRITE_INIT_FINISH;
			else next_State = READ_INIT;
		end
		else next_State = WRITE_INIT;
	end
	WRITE_INIT_FINISH: 
	begin
		next_State = READ_F;
	end
	READ_F:
	begin
		if(res_di) next_State = F0;
		else
		begin
			if(res_addr == 14'd16255) next_State = FORWARD_FINISH;
			else next_State = READ_F;
		end 
	end
	F0:
	begin
		next_State = F1;
	end
	F1:
	begin
		next_State = F2;
	end
	F2:
	begin
		next_State = F3;
	end
	F3:
	begin
		next_State = F4;
	end
	F4:
	begin
		next_State = F5;
	end
	F5:
	begin
		next_State = WRITE_F;
	end
	WRITE_F:
	begin
		if(res_addr == 14'd16255) next_State = FORWARD_FINISH;
		else next_State = READ_F;
	end
	FORWARD_FINISH:
	begin
		next_State = READ_B;
	end
	READ_B:
	begin
		if(res_di) next_State = B0;
		else
		begin
			if(res_addr == 14'd128) next_State = FINISH;
			else next_State = READ_B;
		end
	end
	B0:
	begin
		next_State = B1;
	end
	B1:
	begin
		next_State = B2;
	end
	B2:
	begin
		next_State = B3;
	end
	B3:
	begin
		next_State = B4;
	end
	B4:
	begin
		next_State = B5;
	end
	B5:
	begin
		next_State = WRITE_B;
	end
	WRITE_B:
	begin
		if(res_addr == 14'd128) next_State = FINISH;
		else next_State = READ_B;
	end
	FINISH:
	begin
		next_State = FINISH;
	end
	endcase
end

//fw_finish
always@(posedge clk or negedge reset)
begin
	if(!reset) fw_finish <= 1'd0;
	else if(current_State == FORWARD_FINISH) fw_finish <= 1'd1;
end

//counter
always@(posedge clk or negedge reset)
begin
	if(!reset) counter <= 4'd15;
	else if(next_State == READ_INIT) counter <= 4'd15;
	else if(next_State == WRITE_INIT || current_State == WRITE_INIT) counter <= counter - 4'd1;
end

//sti_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_rd <= 1'd0;
	else if(next_State == READ_INIT) sti_rd <= 1'd1;
	else sti_rd <= 1'd0;
end

//sti_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_addr <= 10'd0;
	else if(current_State == READ_INIT) sti_addr <= sti_addr + 1'd1;
end

wire NextFORWARD_check;
assign NextFORWARD_check = (next_State == F0) || (next_State == F1) || (next_State == F2) || (next_State == F3) ||(next_State == F4);

wire NextBACKWARD_check;
assign NextBACKWARD_check = (next_State == B0) || (next_State == B1) || (next_State == B2) || (next_State == B3) ||(next_State == B4);


//res_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) res_rd <= 1'd0;
	else if(next_State == READ_F || NextFORWARD_check || next_State == READ_B || NextBACKWARD_check) res_rd <= 1'd1;
	else res_rd <= 1'd0;
end

//res_wr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_wr <= 1'd0;
	else if(next_State == WRITE_INIT || next_State == WRITE_F || next_State == WRITE_B) res_wr <= 1'd1;
	else res_wr <= 1'd0;
end

//res_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_addr <= 14'd16383;
	else if(next_State == WRITE_INIT) res_addr <= res_addr + 14'd1;
	else if(current_State == WRITE_INIT_FINISH) res_addr <= 14'd128;
	else if(current_State == FORWARD_FINISH) res_addr <= 14'd16255;
	else if( next_State == F0) res_addr <= res_addr - 14'd129;
	else if( next_State == F1) res_addr <= res_addr + 14'd1;
	else if( next_State == F2) res_addr <= res_addr + 14'd1;
	else if( next_State == F3) res_addr <= res_addr + 14'd126;
	else if( next_State == F4) res_addr <= res_addr + 14'd1;
	else if( next_State == B0) res_addr <= res_addr + 14'd129;
	else if( next_State == B1) res_addr <= res_addr - 14'd1;
	else if( next_State == B2) res_addr <= res_addr - 14'd1;
	else if( next_State == B3) res_addr <= res_addr - 14'd126;
	else if( next_State == B4) res_addr <= res_addr - 14'd1;
	else if(current_State == READ_F || current_State == WRITE_F) res_addr <= res_addr + 14'd1;
	else if(current_State == READ_B || current_State == WRITE_B) res_addr <= res_addr - 14'd1;
end

//done
always@(posedge clk or negedge reset)
begin
	if(!reset) done <= 1'd0;
	else if(current_State == FINISH) done <= 1'd1;
end

wire [7:0] res_di_addOne;
assign res_di_addOne = res_diTemp + 1'd1;

wire CurrentBACKWARD_check;
assign CurrentBACKWARD_check = (current_State == B1) || (current_State == B2) || (current_State == B3) || (current_State == B4) ||(current_State == B5);

reg [7:0] res_diTemp;
always@(posedge clk or negedge reset)
begin
	if(!reset) res_diTemp <= 8'd0;
	else res_diTemp <= res_di;
end
//minTemp
always@(posedge clk or negedge reset)
begin
	if(!reset) minTemp <= 8'd0;
	else if(current_State == F1)  minTemp <= res_diTemp;
	else if(current_State == F2 ||(current_State == F3) || (current_State == F4) || (current_State == F5)  )
	begin
		if(minTemp>res_diTemp) minTemp <= res_diTemp; 
	end
	else if(current_State == B0) minTemp <= res_diTemp;
	else if(CurrentBACKWARD_check)
	begin
		if(minTemp>res_di_addOne) minTemp <= res_di_addOne;
	end
end

//res_do
always@(posedge clk or negedge reset)
begin
	if(!reset) res_do <= 8'd0;
	else if(next_State == WRITE_INIT) res_do <= sti_di[counter];
	else if(next_State == WRITE_F) res_do <= minTemp + 8'd1;
	else if(next_State == WRITE_B) res_do <= minTemp;
end

endmodule


