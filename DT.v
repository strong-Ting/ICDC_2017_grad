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

reg [6:0] x,y;
reg [3:0] current_state;
reg [3:0] next_state;
reg [4:0] counter;
reg [15:0] dataTemp0,dataTemp1;
//state
parameter IDLE = 4'd0;
parameter READ_F_0 = 4'd1; //READ_FORWARD
parameter READ_F_1 = 4'd2;
parameter FORWARD = 4'd3;
parameter WRITE_F = 4'd4; //WRITE_FORWARD
parameter READ_B_0 = 4'd5; //READ_BACKWARD
parameter READ_B_1 = 4'd6;
parameter BACKWARD = 4'd7;
parameter WRITE_B = 4'd8; //WRITE_BACKWARD
parameter FINISH = 4'd9;

task min;
input [7:0] num0,num1,num2,num3;
output [7:0] minNum;
reg [7:0] temp0,temp1;
begin
	if(num0>num1) temp0 = num1;
	else temp0 = num0;

	if(num2>num3) temp1 = num3;
	else temp1 = num2;

	if(temp0>temp1) minNum = temp1;
	else minNum = temp0;
end
endtask


//x y move
always@(posedge clk or negedge reset)
begin
	if(!reset) x <= 7'd0;
	else
	begin
		if(current_state == WRITE_F) 
		begin
			if(x == 7'd7) x <= 7'd0;
			else x <= x + 7'd1;
		end
	end
end

always@(posedge clk or negedge reset)
begin
	if(!reset) y <= 7'd0;
	else
	begin
		if(current_state == WRITE_F)
		begin
			if(x == 7'd7) y <= y + 7'd1;
		end
	end
end

//counter
always@(posedge clk or negedge reset)
begin
	if(!reset) counter <= 5'd0;
	else if(current_state == FORWARD) counter <= counter + 1'd1;
	//else counter <= 5'd0;
end

//state switch
always@(posedge clk or negedge reset)
begin
	if(!reset) current_state <= READ_F_0;
	else current_state <= next_state;
end

//next state logic 
always@(*)
begin
	case(current_state)
	IDLE:
	begin
	
	end
	READ_F_0:
	begin
		next_state = READ_F_1;
	end
	READ_F_1:
	begin
		next_state = FORWARD;
	end
	FORWARD:
	begin
		if(counter == 5'd16) next_state = WRITE_F; //counter
		else next_state = FORWARD;
	end
	WRITE_F:
	begin
		if(x == 7'd7 && y == 7'd127) next_state = READ_B_0;
		else next_state = READ_F_0;
	end
	READ_B_0:
	begin
		next_state = READ_B_1;
	end
	READ_B_1:
	begin
		next_state = BACKWARD;
	end
	BACKWARD:
	begin
		if(counter == 5'd16) next_state = WRITE_B;//counter
		else next_state = BACKWARD;
	end
	WRITE_B:
	begin
		if(x == 7'd127 && y == 7'd127) next_state = FINISH;
		else next_state = READ_B_0;
	end
	FINISH:
	begin
		next_state = FINISH;
	end
	default: next_state = IDLE;
	endcase
end
//ouput logic

//sti_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_rd <= 1'd0;
	else if(next_state == READ_F_0 || next_state == READ_F_1) sti_rd <= 1'd1;
	else sti_rd <= 1'd0;
end

//res_wr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_wr <= 1'd0;
	else if(next_state == WRITE_F || next_state == WRITE_B) res_wr <= 1'd1;
	else res_wr <= 1'd0;
end

//res_rd
always@(posedge clk or negedge reset)
begin
	if(!reset) res_rd <= 1'd0;
	//else if(next_state)
end

//done
always@(posedge clk or negedge reset)
begin
	if(!reset) done <= 1'd0;
	else if(next_state == FINISH) done <= 1'd1;
end

//sti_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) sti_addr <= 10'd0;
	else if(next_state == READ_F_0) sti_addr <= {y-7'd1,x[2:0]};
	else if(next_state == READ_F_1) sti_addr <= {y,x[2:0]};
end

//res_addr
always@(posedge clk or negedge reset)
begin
	if(!reset) res_addr <= 14'd0;
//	else if(next_state == WRITE_F) res_addr <= 
end

reg [7:0] cmpTemp0,cmpTemp1;
//res_do output data
always@(posedge clk or negedge reset)
begin
	if(!reset) res_do <= 8'd0;
	else if(current_state == READ_F_0) dataTemp0 <= sti_di;
	else if(current_state == READ_F_1) dataTemp1 <= sti_di;
	else if(current_state == FORWARD)
	begin
		case(counter)
		5'd0: 
		begin
			if(dataTemp1[7])
			begin
				//min(dataTemp0[1],dataTemp0[2],dataTemp1[1],dataTemp0[3],dataTemp0);
			end
		end
		endcase
	end
end



endmodule


