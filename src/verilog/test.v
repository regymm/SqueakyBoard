`timescale 1ns / 1ps

module test
	(
		input sysclk, 

		input [1:0]sw,
		input [1:0]btn,
		output wire [3:0]led,

		output reg p1p = 1,
		output reg p1n = 1,
		output reg p2p = 1,
		output reg p2n = 1,
		output reg p3p = 1,
		output reg p3n = 1,
		output reg p4p = 1,
		output reg p4n = 1,

		output reg q1p = 1,
		output reg q1n = 1,
		output reg q2p = 1,
		output reg q2n = 1,
		output reg q3p = 1,
		output reg q3n = 1,
		output reg q4p = 1,
		output reg q4n = 1,

		output reg p5p = 1,
		output reg p5n = 1,
		output reg io1 = 1,
		output reg io2 = 1,
		output reg io3 = 1,
		output reg io4 = 1,
		output reg io5 = 1,
		output reg io6 = 1,

		output [2:0]TMDSp, TMDSn,
		output TMDSp_clock, TMDSn_clock,

		(* mark_debug = "true" *) input usbdp,
		(* mark_debug = "true" *) input usbdn,

		output uart_tx,
		input uart_rx
		//input eth_cs
	);

	wire clk_pix;
	wire clk_tmds;
	clk_wiz_1 clk_wiz_0_inst(
		.sysclk(sysclk),
		.reset(btn[1]),
		.clk_pix(clk_pix),
		.clk_tmds(clk_tmds)
	);

	hdmi_demo hdmi_demo_inst
	(
		.clk_pix(clk_pix),
		.clk_tmds(clk_tmds),
		.TMDSp(TMDSp),
		.TMDSn(TMDSn),
		.TMDSp_clock(TMDSp_clock),
		.TMDSn_clock(TMDSn_clock)
	);

	assign uart_tx = uart_rx;

	(* mark_debug = "true" *) wire [31:0]keycodeout;
	ps2_demo ps2_demo_inst
	(
		.clk(sysclk),
		.kclk(usbdp),
		.kdata(usbdn),
		.keycodeout(keycodeout)
	);


	//reg [23:0]counter = 0;
	//always @ (posedge eth_cs) begin // 10MHz
		//if (btn[0]) counter <= 0;
		//else counter <= counter + 1;
	//end

	//reg [23:0]counter2 = 0;
	//always @ (posedge clk_out1) begin // 5MHz
		//counter2 <= counter2 + 1;
	//end
	//reg [23:0]counter3 = 0;
	//always @ (posedge clk_out2) begin // 20MHz
		//counter3 <= counter3 + 1;
	//end
	//reg [23:0]counter4 = 0;
	//always @ (posedge clk_out3) begin // 125MHz
		//counter4 <= counter4 + 1;
	//end
	//assign led[3:1] = counter[23:21];
	
	//assign led[0] = counter[22];
	//assign led[1] = counter2[22];
	//assign led[2] = counter3[22];
	//assign led[3] = counter4[22];
	
	assign led[3:0] = {btn[0], ~btn[1], sw[0], ~sw[1]};
	
	//assign led[0] = btn[0];
	//assign led[1] = ~btn[1];
	//assign led[2] = 1'b1;
	//assign led[3] = ~sw[1] & ~sw[0];
endmodule
