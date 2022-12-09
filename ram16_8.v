`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:04:37 12/06/2022 
// Design Name: 
// Module Name:    ram16_8 
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
module ram16_8(dataout,datain,addr,clk,rst,read,write);
output reg[7:0]dataout;

input clk,rst,read,write;
input [3:0] addr;
input [7:0] datain;
reg [7:0]memory [15:0];

integer i;
always@(posedge clk)
begin
if(rst)
	begin
	for(i=0;i<16;i=i+1)
	memory[i]<=0;
	end
else
	if(write==1)
		memory[addr]<=datain;
	else if(read==1)
		dataout<=memory[addr];
end

endmodule
