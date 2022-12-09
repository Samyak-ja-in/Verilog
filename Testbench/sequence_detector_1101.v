`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:39 12/04/2022
// Design Name:   sequence_detector1101
// Module Name:   /home/samyak01/Desktop/VERILOG/sequence_detector/sequence_detector_1101.v
// Project Name:  sequence_detector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sequence_detector1101
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sequence_detector_1101;

	// Inputs
	reg i;
	reg clk;
	reg rst;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	sequence_detector1101 uut (
		.o(o), 
		.i(i), 
		.clk(clk), 
		.rst(rst)
	);
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		
		i = 0;
		clk = 0;
		rst = 1;
		#100
		rst=0;
		//repeat (1)@(posedge clk);
	
		
		@(posedge clk) i=1;
		@(posedge clk) i=0;
		@(posedge clk) i=1;
		@(posedge clk) i=1;
		@(posedge clk) i=0;
		@(posedge clk) i=1;
		@(posedge clk) i=1;
		@(posedge clk) i=0;
		@(posedge clk) i=1;
		@(posedge clk) i=0;
				

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

