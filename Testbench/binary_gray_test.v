`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:52:03 12/03/2022
// Design Name:   binary_gray
// Module Name:   /home/samyak01/Desktop/VERILOG/binary_gray/binary_gray_test.v
// Project Name:  binary_gray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binary_gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binary_gray_test;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire [3:0] g;

	// Instantiate the Unit Under Test (UUT)
	binary_gray uut (
		.g(g), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		b=8;
		
		#100;
		b=13;
        
		// Add stimulus here

	end
      
endmodule

