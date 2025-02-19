`timescale 1ns / 1ps


module dual_port_tb();
parameter ADDR_WIDTH=4;
parameter DATA_WIDTH=8;
reg clk,wen_A,wen_B;                        
reg [ADDR_WIDTH-1:0]addr_A,addr_B;          
reg [DATA_WIDTH-1:0]din_A,din_B;            
wire [DATA_WIDTH-1:0]dout_A,dout_B; 
dual_port dut (clk,wen_A,wen_B,addr_A,addr_B,din_A,din_B,dout_A,dout_B);  
always #5 clk=~clk;
initial begin

clk=0;
addr_A=0;
addr_B=0;
din_A=0;
din_B=0;
wen_A=0;wen_B=0;

#10;
clk=1;
addr_A=4'b0101;addr_B=4'b1111;
din_A=8'hae;din_B=8'haa;
wen_A=1;wen_B=1;
#10;
wen_A=0;wen_B=0;

#10;
end
endmodule
