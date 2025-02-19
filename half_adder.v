`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 17:16:47
// Design Name: 
// Module Name: half_adder
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


module half_adder(a,b,sum,carry);
  input a,b;
  output reg sum,carry;
  always@(*)begin
    if(a==0 && b==0)begin
     sum=0;carry=0;
     end
    else if(a==0 && b==1)begin
     sum=1;carry=0;
     end
    else if(a==1 && b==0)begin
     sum=1;carry=0;
     end
     else if(a==1 && b==1)begin
     sum=1;carry=1;
     end
   end
endmodule
