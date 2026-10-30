`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 03:05:33 PM
// Design Name: 
// Module Name: buf_idex
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


module buf_idex(
    input clk, reset,
    input [31:0] pc_in,
    input [31:0] read1_in,
    input [31:0] read2_in,
    input [31:0] imm_in,
    output reg [31:0] pc_out,
    output reg [31:0] read1_out,
    output reg [31:0] read2_out,
    output reg [31:0] imm_out
    );

always @ (negedge clk) begin
    if (reset) begin
        pc_out <= 32'd0;
        read1_out <= 32'd0;
        read2_out <= 32'd0;
        imm_out <= 32'd0;
    end else begin
        pc_out <= pc_in;
        read1_out <= read1_in;
        read2_out <= read2_in;
        imm_out <= imm_in;
    end
end

endmodule
