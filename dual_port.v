`timescale 1ns / 1ps

module dual_port #(parameter ADDR_WIDTH=4,
                   parameter DATA_WIDTH=8)(
                   
                   
                   
       input clk,wen_A,wen_B;
       input [ADDR_WIDTH-1:0]addr_A,addr_B;
       input [DATA_WIDTH-1:0]din_A,din_B;
       output reg [DATA_WIDTH-1:0]dout_A,dout_B;
       
       
       reg[DATA_WIDTH-1:0]mem[2**ADDR_WIDTH-1:0];
       
       
       always @(posedge clk)begin
          if(wen_A)begin
            mem[addr_A]<=din_A;
          end
          else
            dout_A<=mem[addr_A];
       end
       always @(posedge clk)begin
         if(wen_B)begin
           mem[addr_B]<=din_B;
         end
         else
           dout_B<=mem[addr_B];
       end
    
              
endmodule
