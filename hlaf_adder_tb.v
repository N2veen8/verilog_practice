`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 17:21:22
// Design Name: 
// Module Name: hlaf_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module hlaf_adder_tb();
 reg a,b;
 wire sum,carry;
 half_adder dut(a,b,sum,carry);
 initial begin
 a=0;b=0;
 #2;
 a=0;b=1;
 #2;
 a=1;b=0;
 #2;
 a=1;b=1;
 #5;
 $finish;
 end
 

endmodule
