`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 03:06:06 PM
// Design Name: 
// Module Name: pc
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


module pc(clk, reset, addr, addr_out);
    input [31:0] addr;
    input clk, reset;
    
    output reg [31:0] addr_out;
    
    always @(negedge clk)begin
        if(reset)begin
            addr_out <= 32'd0;
        end
        else begin
            addr_out <= addr;
        end
    end
endmodule
