`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 09:46:17 PM
// Design Name: 
// Module Name: slow_clk
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


module slow_clk(input clk_in, output reg clk_out

    );
    
 reg [25:0]count=0;
  
always@(posedge clk_in)
    begin
       count<= count+1;
       if (count == 50_000)
    begin
        count<=0;
        clk_out = ~clk_out;
        
    end
    end
    
endmodule
