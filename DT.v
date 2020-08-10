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

reg [3:0] current_State;
reg [3:0] next_State;
reg [7:0] minTemp;

//state
parameter INIT = 4'd0;
parameter READ_INIT = 4'd1;
parameter WRITE_INIT = 4'd2;
parameter WRITE_INIT_FINISH = 4'd3; // to delay 1 clk
parameter READ_F = 4'd4; //READ_FORWARD
parameter FORWARD = 4'd5;
parameter WRITE_F = 4'd6; //WRITE_FORWARD
parameter FORWARD_FINISH = 4'd11;
parameter READ_B = 4'd7; //READ_BACKWARD
parameter BACKWARD = 4'd8;
parameter WRITE_B = 4'd9; //WRITE_BACKWARD
parameter FINISH = 4'd10;

reg [3:0] counter;
reg [13:0] addrCounter;

always@(posedge clk or negedge reset)
begin
	if(!reset) current_State <= INIT;
	else current_State <= next_State;
end

always@(*)
begin
	case(current_State)
	INIT: next_State = READ_INIT;
	READ_INIT: next_State = WRITE_INIT;
	WRITE_INIT:
	begin
		if(counter == 4'd15)
		begin
			if(res_addr == 14'd16383) next_State = WRITE_INIT_FINISH;
			else next_State = READ_INIT;
		end
		else next_State = WRITE_INIT;
	end
	WRITE_INIT_FINISH: next_State = READ_F;
	READ_F:
	begin
		if(res_di) next_State = FORWARD;
		else
		begin
			if(res_addr == 14'd16383) next_State = FORWARD_FINISH;
			else next_State = READ_F;
		end 
		
	end
	FORWARD:
	begin
		if(counter == 4'd5) next_State = WRITE_F;
		else next_State = FORWARD;
	end
	WRITE_F:
	begin
		if(res_addr == 14'd16383) next_State = FORWARD_FINISH;
		else next_State = READ_F;
	end
	FORWARD_FINISH:
	begin
		
	end
	READ_B:
	begin
		
	end
	BACKWARD:
	begin
		
	end
	WRITE_B:
	begin
		
	end
	FINISH:
	begin
		
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
	else if(next_State == FORWARD) counter <= counter + 4'd1;
	else if(next_State == WRITE_F) counter <= 4'd0;
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

//res_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) res_rd <= 1'd0;
	else if(next_State == READ_F || next_State == FORWARD) res_rd <= 1'd1;
	else res_rd <= 1'd0;
end

//res_wr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_wr <= 1'd0;
	else if(next_State == WRITE_INIT || next_State == WRITE_F) res_wr <= 1'd1;
	else res_wr <= 1'd0;
end

//res_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_addr <= 14'd16383;
	else if(next_State == WRITE_INIT) res_addr <= res_addr + 14'd1;
	else if(current_State == WRITE_INIT_FINISH) res_addr <= 14'd128;
	else if(next_State == FORWARD || current_State == FORWARD)
	begin
		case(counter)
		4'd0: res_addr <= res_addr - 14'd129;
		4'd1: res_addr <= res_addr + 14'd1;
		4'd2: res_addr <= res_addr + 14'd1;
		4'd3: res_addr <= res_addr + 14'd126;
		4'd4: res_addr <= res_addr + 14'd1;
		//4'd5: res_addr <= res_addr + 14'd1;
		endcase
	end
	else if(current_State == READ_F || current_State == WRITE_F) res_addr <= res_addr + 14'd1;
	
end

//done
always@(posedge clk or negedge reset)
begin
	if(!reset) done <= 1'd0;
	else if(current_State == FORWARD_FINISH) done <= 1'd1;
end

//minTemp
always@(posedge clk or negedge reset)
begin
	if(!reset) minTemp <= 8'd0;
	else if(current_State == FORWARD)
	begin
		if(counter == 4'd1)  minTemp <= res_di;
		else if(minTemp>res_di) minTemp <= res_di; 
	end
end

//res_do
always@(posedge clk or negedge reset)
begin
	if(!reset) res_do <= 8'd0;
	else if(next_State == WRITE_INIT) res_do <= sti_di[counter];
	else if(next_State == WRITE_F) res_do <= minTemp + 8'd1;
end

endmodule


