`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:11 12/05/2022 
// Design Name: 
// Module Name:    shiftregister 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shiftregister(out,dir,in,clk,rst);

output reg[7:0]out;
input dir,in,clk,rst;

always @(posedge clk)
begin
if(!rst)
	if(dir==0)
		out<={out[6:0],in};		//left shift
	else
		out<={in,out[7:1]};		//right shift
else
	out<=0;
end
endmodule
