`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:31 12/04/2022
// Design Name:   mux16_1
// Module Name:   /home/samyak01/Desktop/VERILOG/mux16_1/mux16_1_test.v
// Project Name:  mux16_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux16_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux16_1_test;

	// Inputs
	reg [0:15] i;
	reg [0:3] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux16_1 uut (
		.o(o), 
		.i(i), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		i = 16'hFFFF;
		s = 4'h0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		i = 16'hFFF0;
		s = 4'h0;
        
		// Add stimulus here

	end
      
endmodule

