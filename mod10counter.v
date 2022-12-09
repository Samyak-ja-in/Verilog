`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:20 12/05/2022 
// Design Name: 
// Module Name:    mod10counter 
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
module mod10counter(out,rst,en,clk);
input rst;
input clk;
input en;

output reg [3:0]out;

always @(negedge clk)
begin
if(en)
	begin
	if(rst==1 || out==9)
	out=0;
	else
	out=out+1;
	end
else
	out=0;
end
endmodule
