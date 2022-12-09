`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:17 12/03/2022 
// Design Name: 
// Module Name:    encoder4_2 
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
module encoder4_2(o,i);
output reg [1:0]o;
input [3:0]i;

always @(*)
begin

if(i[0]==1)
assign o=0;

if(i[1]==1)
assign o=1;

if(i[2]==1)
assign o=2;

if(i[3]==1)
assign o=3;



end
endmodule
