`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:29:06 12/05/2022
// Design Name:   mod10counter
// Module Name:   /home/samyak01/Desktop/VERILOG/MOD10COUNTER/mod10counter_test.v
// Project Name:  MOD10COUNTER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mod10counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mod10counter_test;

	// Inputs
	reg rst;
	reg en;
	reg clk;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	mod10counter uut (
		.out(out), 
		.rst(rst), 
		.en(en), 
		.clk(clk)
	);

	initial begin 
			clk=0;
			en=1;
			forever #10 clk=~clk;
			end
			initial begin
			rst=1;
			#10;
			rst=0;
	end
      
endmodule

