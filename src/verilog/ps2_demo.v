`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:33:36 PM
// Design Name: 
// Module Name: PS2Receiver
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: PS2 Receiver module used to shift in keycodes from a keyboard plugged into the PS2 port
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ps2_demo
	(
		input clk,
		input kclk,
		input kdata,
		output [31:0]keycodeout
    );

	wire kclkf, kdataf;
	reg [7:0]datacur;
	reg [7:0]dataprev;
	reg [3:0]cnt = 0;
	reg [31:0]keycode = 0;
	reg flag = 0;

	debouncer debonce(
		.clk(clk),
		.I0(kclk),
		.I1(kdata),
		.O0(kclkf),
		.O1(kdataf)
	);

	always @ (negedge kclkf) begin
		case (cnt)
			0: ;
			1: datacur[0] <= kdataf;
			2: datacur[1] <= kdataf;
			3: datacur[2] <= kdataf;
			4: datacur[3] <= kdataf;
			5: datacur[4] <= kdataf;
			6: datacur[5] <= kdataf;
			7: datacur[6] <= kdataf;
			8: datacur[7] <= kdataf;
			9: flag <= 1;
			10: flag <= 0;
		endcase

		if (cnt <= 9) cnt <= cnt + 1;
		else if (cnt == 10) cnt <= 0;
	end

	always @ (posedge flag) begin
		if (dataprev != datacur) begin
			keycode[31:24] <= keycode[23:16];
			keycode[23:16] <= keycode[15:8];
			keycode[15:8] <= dataprev;
			keycode[7:0] <= datacur;
			dataprev <= datacur;
		end
	end
	
	assign keycodeout = keycode;
endmodule

module debouncer(
    input clk,
    input I0,
    input I1,
    output reg O0,
    output reg O1
    );
    
    reg [4:0]cnt0, cnt1;
    reg Iv0=0,Iv1=0;
    reg out0, out1;
    
always@(posedge(clk))begin
    if (I0==Iv0)begin
        if (cnt0==19)O0<=I0;
        else cnt0<=cnt0+1;
      end
    else begin
        cnt0<="00000";
        Iv0<=I0;
    end
    if (I1==Iv1)begin
            if (cnt1==19)O1<=I1;
            else cnt1<=cnt1+1;
          end
        else begin
            cnt1<="00000";
            Iv1<=I1;
        end
    end
    
endmodule
