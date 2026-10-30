`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2026 02:24:59 PM
// Design Name: 
// Module Name: buf_ifid
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


module buf_ifid(
    input clk,
    input reset,
    input [31:0] instr_in,
    input [31:0] pc_in,
    output reg [31:0] instr_out,
    output reg [31:0] pc_out
    );

always @ (negedge clk) begin
    if (reset) begin
        instr_out <= 32'd0;
        pc_out <= 32'd0;
    end else begin
        instr_out <= instr_in;
        pc_out <= pc_in;
    end
end

endmodule
