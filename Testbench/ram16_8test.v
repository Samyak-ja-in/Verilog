`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:59 12/06/2022
// Design Name:   ram16_8
// Module Name:   /home/samyak01/Desktop/VERILOG/ram16_8/ram16_8test.v
// Project Name:  ram16_8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram16_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram16_8test;

	// Inputs
	reg [7:0] datain;
	reg [3:0] addr;
	reg clk;
	reg rst;
	reg read;
	reg write;

	// Outputs
	wire [7:0] dataout;

	// Instantiate the Unit Under Test (UUT)
	ram16_8 uut (
		.dataout(dataout), 
		.datain(datain), 
		.addr(addr), 
		.clk(clk), 
		.rst(rst), 
		.read(read), 
		.write(write)
	);
	
	initial begin
	clk=0;
	forever #10 clk=~clk;
	end

	initial begin
		rst=1;
		#10;
		rst=0;
		addr=4'b1010;
		datain=8'hF0;
		write=1;
		#10;
		write=0;
		#10;
		read=1;
	end
      
endmodule

