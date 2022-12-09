`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:25 12/03/2022 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;
wire w1,w2,w3;

xor x1(w1,a,b);
xor x2(sum,w1,cin);
and a1(w2,a,b);
and a2(w3,w1,cin);
or(cout,w2,w3);

endmodule
