`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:10 12/05/2022
// Design Name:   updowncounter
// Module Name:   /home/samyak01/Desktop/VERILOG/updowncounter/updowncounter_test.v
// Project Name:  updowncounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: updowncounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module updowncounter_test;

	// Inputs
	reg clk;
	reg rst;
	reg ctrl;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	updowncounter uut (
		.out(out), 
		.clk(clk), 
		.rst(rst), 
		.ctrl(ctrl)
	);

	initial begin
		clk=0;
		forever #10 clk=~clk;
		
	end
	initial begin
		rst=1;
		#20
		rst=0;
		ctrl=1;
		#150;
		ctrl=0;
		#150;
		$finish;
	end
	
	
	
      
endmodule

