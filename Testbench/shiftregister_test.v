`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:30 12/05/2022
// Design Name:   shiftregister
// Module Name:   /home/samyak01/Desktop/VERILOG/shiftregister/shiftregister_test.v
// Project Name:  shiftregister
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftregister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftregister_test;

	// Inputs
	reg dir;
	reg in;
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	shiftregister uut (
		.out(out), 
		.dir(dir), 
		.in(in), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
	clk=0;
	forever #10 clk=~clk;
	end
	
	initial begin
	rst=1;
	#30;
	rst=0;
	dir=0;
	in=1;
	#30;
	dir=1;
	#50;
	$finish;
	end
	
      
endmodule

