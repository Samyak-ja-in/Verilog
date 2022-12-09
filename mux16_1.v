`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:55 12/04/2022 
// Design Name: 
// Module Name:    mux16_1 
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

module mux4_1(o,i,s);
output reg o;

input [3:0]i;
input [1:0]s;

always @(*)
begin

if(s==0)
o=i[0];

if(s==1)
o=i[1];

if(s==2)
o=i[2];

if(s==3)
o=i[3];

end
endmodule

module mux16_1(out,i,s);
output out;

input [15:0]i;
input [3:0]s;

wire [3:0]w;

mux4_1 mux1(w[0],i[3:0],s[1:0]);
mux4_1 mux2(w[1],i[7:4],s[1:0]);
mux4_1 mux3(w[2],i[11:8],s[1:0]);
mux4_1 mux4(w[3],i[15:12],s[1:0]);

mux4_1 mux5(out,w[3:0],s[3:2]);

endmodule

