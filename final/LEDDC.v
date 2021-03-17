`timescale 1ns/10ps
module LEDDC( DCK, DAI, DEN, GCK, Vsync, mode, rst, OUT);
input           DCK;
input           DAI;
input           DEN;
input           GCK;
input           Vsync;
input           mode;
input           rst;
output [15:0]   OUT;

reg [15:0] frame_buffer [511:0];
reg [14:0] frame_buffer_15bit [511:0];
reg [8:0] cnt_pixel_index;
reg [3:0] cnt_pixel_serial;
reg [15:0] pixel_value;
reg [15:0] OUT;
reg [15:0] OUT_buffer [15:0]; 
reg [4:0] cnt_scanline;
reg [15:0] cnt_pwm;

integer i=0;
always@(posedge DCK or posedge rst) begin
    if(rst) begin
        cnt_pixel_index <= 9'd511;
        cnt_pixel_serial <= 4'd0;
        pixel_value <= 16'd0;
        for(i=0;i<512;i=i+1) begin
            frame_buffer[i] <= 16'd0;
        end
    end
    else if(DEN == 1'd1) begin
        cnt_pixel_serial <= cnt_pixel_serial + 4'd1;
        pixel_value[cnt_pixel_serial] <= DAI; 
        if(cnt_pixel_serial == 4'd15) cnt_pixel_index <= cnt_pixel_index + 9'd1;
    end
    else begin
        frame_buffer[cnt_pixel_index] <= pixel_value;
    end
end

always@(posedge GCK or posedge rst) begin
    if(rst) begin
        //OUT <= 16'd0;
        cnt_scanline <= 5'd0;
        cnt_pwm <= 16'd0;
        for(i=0;i<16;i=i+1) begin
            OUT_buffer[i] <= 16'd0;
        end
        for(i=0;i<512;i=i+1) begin
            frame_buffer_15bit[i] <= 15'd0;
        end
    end
    else if(mode == 1'd0) begin
        if(Vsync == 1'd1) begin
            cnt_pwm <= cnt_pwm + 16'd1;
            
            if(cnt_pwm == 16'd65535) cnt_scanline <= cnt_scanline + 5'd1;
        end
        else begin
            OUT_buffer[0] <= frame_buffer[{cnt_scanline,4'd0}];
            OUT_buffer[1] <= frame_buffer[{cnt_scanline,4'd1}];
            OUT_buffer[2] <= frame_buffer[{cnt_scanline,4'd2}];
            OUT_buffer[3] <= frame_buffer[{cnt_scanline,4'd3}];
            OUT_buffer[4] <= frame_buffer[{cnt_scanline,4'd4}];
            OUT_buffer[5] <= frame_buffer[{cnt_scanline,4'd5}];
            OUT_buffer[6] <= frame_buffer[{cnt_scanline,4'd6}];
            OUT_buffer[7] <= frame_buffer[{cnt_scanline,4'd7}];
            OUT_buffer[8] <= frame_buffer[{cnt_scanline,4'd8}];
            OUT_buffer[9] <= frame_buffer[{cnt_scanline,4'd9}];
            OUT_buffer[10] <= frame_buffer[{cnt_scanline,4'd10}];
            OUT_buffer[11] <= frame_buffer[{cnt_scanline,4'd11}];
            OUT_buffer[12] <= frame_buffer[{cnt_scanline,4'd12}];
            OUT_buffer[13] <= frame_buffer[{cnt_scanline,4'd13}];
            OUT_buffer[14] <= frame_buffer[{cnt_scanline,4'd14}];
            OUT_buffer[15] <= frame_buffer[{cnt_scanline,4'd15}];
        end
    end
    else if(mode == 1'd1) begin
        if(Vsync == 1'd1) begin
            cnt_pwm[14:0] <= cnt_pwm[14:0] + 15'd1;
            if(cnt_pwm[14:0] == 15'd32767) begin
                cnt_scanline <= cnt_scanline + 5'd1;
                if(cnt_scanline == 5'd31) cnt_pwm[15] <= ~cnt_pwm[15];
            end 
        end
        else begin
            OUT_buffer[0] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd0}] : frame_buffer_15bit[{cnt_scanline,4'd0}];
            OUT_buffer[1] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd1}] : frame_buffer_15bit[{cnt_scanline,4'd1}];
            OUT_buffer[2] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd2}] : frame_buffer_15bit[{cnt_scanline,4'd2}];
            OUT_buffer[3] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd3}] : frame_buffer_15bit[{cnt_scanline,4'd3}];
            OUT_buffer[4] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd4}] : frame_buffer_15bit[{cnt_scanline,4'd4}];
            OUT_buffer[5] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd5}] : frame_buffer_15bit[{cnt_scanline,4'd5}];
            OUT_buffer[6] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd6}] : frame_buffer_15bit[{cnt_scanline,4'd6}];
            OUT_buffer[7] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd7}] : frame_buffer_15bit[{cnt_scanline,4'd7}];
            OUT_buffer[8] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd8}] : frame_buffer_15bit[{cnt_scanline,4'd8}];
            OUT_buffer[9] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd9}] : frame_buffer_15bit[{cnt_scanline,4'd9}];
            OUT_buffer[10] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd10}] : frame_buffer_15bit[{cnt_scanline,4'd10}];
            OUT_buffer[11] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd11}] : frame_buffer_15bit[{cnt_scanline,4'd11}];
            OUT_buffer[12] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd12}] : frame_buffer_15bit[{cnt_scanline,4'd12}];
            OUT_buffer[13] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd13}] : frame_buffer_15bit[{cnt_scanline,4'd13}];
            OUT_buffer[14] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd14}] : frame_buffer_15bit[{cnt_scanline,4'd14}];
            OUT_buffer[15] <= (cnt_pwm[15] == 1'd0) ? frame_buffer[{cnt_scanline,4'd15}] : frame_buffer_15bit[{cnt_scanline,4'd15}];

            if(cnt_pwm[15] == 1'd0 && cnt_scanline == 5'd0) begin
                for(i=0;i<512;i=i+1) begin
                    frame_buffer_15bit[i] <= frame_buffer[i] >> 1;
                end
            end
        end
    end
end

always@(*) begin
    if(mode == 1'd0) begin
        for(i=0;i<16;i=i+1) begin
            OUT[i] = (cnt_pwm < OUT_buffer[i]) ? 1'd1 : 1'd0;
        end
    end
    else begin // mode == 1'd1
        if(cnt_pwm[15] == 1'd0) begin
            for(i=0;i<16;i=i+1) begin
                OUT[i] = (cnt_pwm[14:0] < (OUT_buffer[i][15:1] + {13'd0,OUT_buffer[i][0]})) ? 1'd1 : 1'd0;
            end
        end 
        else begin
            for(i=0;i<16;i=i+1) begin
                OUT[i] = (cnt_pwm[14:0] < OUT_buffer[i][14:0]) ? 1'd1 : 1'd0;
            end
        end
        
    end
end


endmodule
