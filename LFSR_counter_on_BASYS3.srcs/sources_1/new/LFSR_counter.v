`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:08:37 PM
// Design Name: 
// Module Name: LFSR_counter
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


module LFSR_counter(input clk, clr, reset, output reg [3:0]lfsr_out

    );
    
wire clk_out;
wire [3:0]q;
    
slow_clk(clk, clk_out);
four_bit_counter(clk_out, clr, q);

always@(posedge clk_out or posedge reset)
    begin
        if(reset)
            lfsr_out = 4'b0000;
        else
            case(q)
                4'b0000: lfsr_out <= 4'b0000;
                4'b0001: lfsr_out <= 4'b0010;
                4'b0010: lfsr_out <= 4'b0100;
                4'b0011: lfsr_out <= 4'b0110;
                4'b0100: lfsr_out <= 4'b1001;
                4'b0101: lfsr_out <= 4'b1011;
                4'b0110: lfsr_out <= 4'b1101;
                4'b0111: lfsr_out <= 4'b1111;
                4'b1000: lfsr_out <= 4'b0001;
                4'b1001: lfsr_out <= 4'b0011;
                4'b1010: lfsr_out <= 4'b0101;
                4'b1011: lfsr_out <= 4'b0111;
                4'b1100: lfsr_out <= 4'b1000;
                4'b1101: lfsr_out <= 4'b1010;
                4'b1110: lfsr_out <= 4'b1100;
                4'b1111: lfsr_out <= 4'b1110;
                default: lfsr_out <= 4'b0000;
                
            endcase
    end
endmodule
