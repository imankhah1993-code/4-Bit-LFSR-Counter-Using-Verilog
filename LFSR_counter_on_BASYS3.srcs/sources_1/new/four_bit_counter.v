`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 10:46:18 PM
// Design Name: 
// Module Name: four_bit_counter
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


module four_bit_counter(input clk, clr, output reg [3:0]q

    );
    
always@(posedge clk or posedge clr)
    begin
        if(clr)
            q<=4'b0000;
        else
            q <= q + 1'b1;
     end
    
endmodule
