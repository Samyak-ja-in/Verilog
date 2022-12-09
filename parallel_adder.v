`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:22 12/04/2022 
// Design Name: 
// Module Name:    parallel_adder 
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
module full_adder(s,cout,a,b,cin);

output s,cout;
input a,b,cin;

wire w1,w2,w3;

xor x1(w1,a,b);
xor x2(s,w1,cin);

and a1(w2,a,b);
and a2(w3,w1,cin);

or o1(cout,w2,w3);

endmodule

module parallel_adder(sum,cout,a,b,cin);
output [3:0]sum;
output cout;

input [3:0]a;
input [3:0]b;
input cin;

wire[2:0]w;

full_adder FA1(sum[0],w[0],a[0],b[0],cin);
full_adder FA2(sum[1],w[1],a[1],b[1],w[0]);
full_adder FA3(sum[2],w[2],a[2],b[2],w[1]);
full_adder FA4(sum[3],cout,a[3],b[3],w[2]);

endmodule
