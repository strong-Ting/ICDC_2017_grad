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

reg [8:0] cnt_pixel_index;
reg [3:0] cnt_pixel_serial;
reg [15:0] pixel_value;
reg [15:0] OUT;
reg [15:0] OUT_buffer [15:0]; 
reg [4:0] cnt_scanline;
reg [15:0] cnt_pwm;


reg [15:0] sram512_w; //sram512 write
wire [15:0] sram512_r;
reg [8:0] sram512_addr_r,sram512_addr_w;
wire clk512_w;
reg clk512_r;
reg  en512_r_n;
reg en512_w_n;

reg [15:0] sram256_w; //sram512 write
wire [15:0] sram256_r;
reg [7:0] sram256_addr_r,sram256_addr_w;
reg clk256_w;
reg clk256_r;
reg  en256_r_n;
reg en256_w_n;


assign #1 clk512_w = (DEN == 1'd0) ?  DCK : 1'd0;


integer i;
always@(posedge DCK or posedge rst) begin
    if(rst) begin
        cnt_pixel_index <= 9'd511;
        cnt_pixel_serial <= 4'd0;
        pixel_value <= 16'd0;

        sram512_addr_w <= 9'd0;
        sram512_w <= 16'd0;
        en512_w_n <= 1'd1;
    end
    else if(DEN == 1'd1) begin
        cnt_pixel_serial <= cnt_pixel_serial + 4'd1;
        pixel_value[cnt_pixel_serial] <= DAI; 
        if(cnt_pixel_serial == 4'd15) begin
            cnt_pixel_index <= cnt_pixel_index + 9'd1;
            
        end
    end
    else begin
        sram512_addr_w <= cnt_pixel_index;
        sram512_w <= pixel_value;
        en512_w_n <= ~en512_w_n;
    end
end

//cnt_scanline
always@(posedge GCK or posedge rst) begin
    if(rst) cnt_scanline <= 5'd0;
    else if(mode == 1'd0 && Vsync == 1'd1 && cnt_pwm == 16'd65535) cnt_scanline <= cnt_scanline + 5'd1;
    else if(mode == 1'd1 && Vsync == 1'd1 && cnt_pwm[14:0] == 15'd32767) cnt_scanline <= cnt_scanline + 5'd1;
end

//cnt_pwn
always@(posedge GCK or posedge rst) begin
    if(rst) cnt_pwm <= 16'd0;
    else if(mode == 1'd0 && Vsync == 1'd1) cnt_pwm <= cnt_pwm + 16'd1;
    else if(mode == 1'd1 && Vsync == 1'd1) begin
        cnt_pwm[14:0] <= cnt_pwm[14:0] + 15'd1;
        if(cnt_pwm[14:0] == 15'd32767 && cnt_scanline == 5'd31) cnt_pwm[15] <= ~cnt_pwm[15];
    end
end

//OUT_buffer
always@(posedge GCK or posedge rst) begin
    if(rst) begin
        for(i=0;i<16;i=i+1) begin
            OUT_buffer[i] <= 16'd0;
        end
    end
    else if(mode == 1'd0 && Vsync == 1'd1 && cnt_pwm < 16'd17) begin
        OUT_buffer[sram512_addr_r[3:0]] <= sram512_r;
    end
    else if(mode == 1'd1 && Vsync == 1'd1 && cnt_pwm[14:0] < 15'd17) begin
        if(cnt_pwm[15] == 1'd0) begin
            OUT_buffer[sram512_addr_r[3:0]] <= sram512_r;
        end
        else begin
            if(sram512_addr_r < 9'd256) OUT_buffer[sram256_addr_r[3:0]] <= sram256_r;
            else OUT_buffer[sram512_addr_r[3:0]] <= sram512_r;
        end
    end
end

//sram256_w && addr_w
always@(posedge GCK or posedge rst) begin
    if(rst) begin
        sram256_w <= 16'd0;
        sram256_addr_w <= 8'd0;
    end
    else if(mode == 1'd1 && Vsync == 1'd1 && cnt_pwm[14:0] < 15'd17) begin
        if(cnt_pwm[15] == 1'd0) begin
             if(sram512_addr_r < 9'd256) begin
                sram256_w <= sram512_r;
                sram256_addr_w <= sram512_addr_r[7:0];
            end
        end
        else begin
            
        end
    end
end


//sram512 clk read
always@(*) begin
    if(mode == 1'd0 && cnt_pwm < 16'd17 && Vsync == 1'd1) #1 clk512_r = GCK;
    else if(mode == 1'd1 && cnt_pwm[14:0] < 15'd17 && Vsync == 1'd1) #1 clk512_r = GCK;
    else #1 clk512_r = 1'd0;
end

//sram256 clk read
always@(*) begin
    if(mode == 1'd1 && Vsync == 1'd1) begin
        if(cnt_pwm[15] == 1'd1 && cnt_pwm[14:0] < 15'd17) #1 clk256_r = GCK;
        else #1 clk256_r = 1'd0;
    end
    else #1 clk256_r = 1'd0;
end

//sram256 clk write
always@(*) begin
    if(mode == 1'd1 && Vsync == 1'd1) begin
        if(cnt_pwm[15] == 1'd0 && cnt_pwm[14:0] < 15'd17) #1 clk256_w = GCK;
        else #1 clk256_w = 1'd0;
    end
    else #1 clk256_w = 1'd0;
end

//sram512 en read
always@(posedge GCK or posedge rst) begin
    if(rst) en512_r_n <= 1'd1;  
    else if(mode == 1'd0 && Vsync == 1'd1 && cnt_pwm < 16'd16) begin
        en512_r_n <= 1'd0;
    end
    else if(mode == 1'd1 && Vsync == 1'd1 && cnt_pwm[14:0] < 15'd16) begin
        en512_r_n <= 1'd0;
    end
    else en512_r_n <= 1'd1;
end

//sram256 en read
always@(posedge GCK or posedge rst) begin
    if(rst) en256_r_n <= 1'd1;  
    else if(mode == 1'd1 && Vsync == 1'd1) begin
        if(cnt_pwm[15] == 1'd1 && cnt_pwm[14:0] < 15'd16) en256_r_n <= 1'd0;
    end
    else en256_r_n <= 1'd1;
end

//sram256 en write
always@(posedge GCK or posedge rst) begin
    if(rst) en256_w_n <= 1'd1;  
    else if(mode == 1'd1 && Vsync == 1'd1) begin
        if(cnt_pwm[15] == 1'd0 && cnt_pwm[14:0] < 15'd16) en256_w_n <= 1'd0;
    end
    else en256_w_n <= 1'd1;
end

//sram512 read address
always@(posedge GCK or posedge rst) begin
    if(rst) sram512_addr_r <= 9'd0;
    else if(mode == 1'd0) begin
        if(Vsync == 1'd1 && cnt_pwm < 16'd16 ) begin 
            sram512_addr_r <= {cnt_scanline,cnt_pwm[3:0]};
        end
    end
    else if(mode == 1'd1) begin
        if(Vsync == 1'd1 && cnt_pwm[14:0] < 15'd16 ) begin 
            sram512_addr_r <= {cnt_scanline,cnt_pwm[3:0]};
        end
    end
end

//sram256 read address
always@(posedge GCK or posedge rst) begin
    if(rst) sram256_addr_r <= 8'd0;
    else if(mode == 1'd1 && Vsync == 1'd1 && cnt_pwm[14:0] < 15'd16) begin
        sram256_addr_r <= {cnt_scanline,cnt_pwm[3:0]};
    end  
end

//PWM OUT
always@(*) begin
    if(mode == 1'd0) begin
        if(cnt_pwm < 16'd17) begin
            for(i=0;i<16;i=i+1) begin
                OUT[i] = 1'd1;
            end
        end
        else begin
            for(i=0;i<16;i=i+1) begin
                OUT[i] = (cnt_pwm < OUT_buffer[i]) ? 1'd1 : 1'd0;
            end
        end
    end
    else begin
        if(cnt_pwm[14:0] < 15'd17) begin
            for(i=0;i<16;i=i+1) begin
                OUT[i] = 1'd1;
            end
        end
        else begin
            if(cnt_pwm[15] == 1'd0) begin
                for(i=0;i<16;i=i+1) begin
                    OUT[i] = (cnt_pwm[14:0] < (OUT_buffer[i][15:1] + {13'd0,OUT_buffer[i][0]})) ? 1'd1 : 1'd0;
                end
            end 
            else begin
                for(i=0;i<16;i=i+1) begin
                    OUT[i] = (cnt_pwm[14:0] < OUT_buffer[i][15:1]) ? 1'd1 : 1'd0;
                end
            end
        end
    end
end


sram_512x16 sram512(
   .QA(sram512_r),
   .AA(sram512_addr_r),
   .CLKA(clk512_r),
   .CENA(en512_r_n),
   .AB(sram512_addr_w),
   .DB(sram512_w),
   .CLKB(clk512_w),
   .CENB(en512_w_n)
);

sram_256x16 sram256(
   .QA(sram256_r),
   .AA(sram256_addr_r),
   .CLKA(clk256_r),
   .CENA(en256_r_n),
   .AB(sram256_addr_w),
   .DB(sram256_w),
   .CLKB(clk256_w),
   .CENB(en256_w_n)
);

endmodule