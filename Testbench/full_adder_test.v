`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:17 12/04/2022
// Design Name:   parallel_adder
// Module Name:   /home/samyak01/Desktop/VERILOG/full_adder_4bit/full_adder_test.v
// Project Name:  full_adder_4bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parallel_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	parallel_adder uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
	

		// Wait 100 ns for global reset to finish
		
      a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a=4'b1000;
		b=4'b1000;
		cin=0;
		#100;
		
		a=4'b1101;
		b=4'b1011;
		cin=0;
		#100;
		// Add stimulus here

	end
      
endmodule

