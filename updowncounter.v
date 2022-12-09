`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:54 12/05/2022 
// Design Name: 
// Module Name:    updowncounter 
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
module updowncounter(out,clk,rst,ctrl);
output reg [3:0]out;

input clk;
input rst;
input ctrl;

always @(posedge clk)
begin 
if(rst==1)
	begin
	out=0;
	if(ctrl==0)
	out=out-1;
	else
	out=out+1;
	end
else
	begin
	if(ctrl==0)
	out=out-1;
	else
	out=out+1;
	end

end



endmodule
