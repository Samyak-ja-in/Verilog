`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:35 12/03/2022
// Design Name:   encoder4_2
// Module Name:   /home/samyak01/Desktop/VERILOG/encoder4_2/encoder4_2_test.v
// Project Name:  encoder4_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder4_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder4_2_test;

	// Inputs
	reg [3:0] i;

	// Outputs
	wire [1:0] o;

	// Instantiate the Unit Under Test (UUT)
	encoder4_2 uut (
		.o(o), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		i = 1;

		// Wait 100 ns for global reset to finish
		#100;
		i=1;
		#100;
		i=2;
		#100;
		i=4;
      #100
		i=8;
		// Add stimulus here

	end
      
endmodule

