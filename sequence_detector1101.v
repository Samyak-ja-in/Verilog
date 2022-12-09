`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:41 12/04/2022 
// Design Name: 
// Module Name:    sequence_detector1101 
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
module sequence_detector1101(o,i,clk,rst);
input i,clk,rst;
output reg o;

reg [0:2]state;
parameter s0=0,s1=1,s2=2,s3=3,s4=4;

always @(posedge clk )
begin

if(rst==1)
	state<=s0;
	
else
	case(state)
	s0:if(i==0)
		begin
		state<=s0;
		o=0;
		end
		else
		begin
		state<=s1;
		o=0;
		end
	s1:if(i==0)
		begin
		state<=s0;
		o=0;
		end
		else
		begin
		state<=s2;
		o=0;
		end
	s2:if(i==0)
		begin
		state<=s3;
		o=0;
		end
		else
		begin
		state<=s2;
		o=0;
		end
	s3:if(i==0)
		begin
		state<=0;
		o=0;
		end
		else
		begin
		state<=s4;
		o=1;
		end
	s4:if(i==0)
		begin
		state<=s0;
		o=0;
		end
		else
		begin
		state<=s2;
		o=0;
		end
	endcase
	
	
end 
endmodule
