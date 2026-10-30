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
    input [31:0] rs_in,
    input [31:0] rt_in,
    input [31:0] rd_in,
    input [31:0] imm_in,
    output reg [31:0] pc_out,
    output reg [31:0] rs_out,
    output reg [31:0] rt_out,
    output reg [31:0] rd_out,
    output reg [31:0] imm_out
    );

always @ (negedge clk) begin
    if (reset) begin
        pc_out <= 32'd0;
        rs_out <= 32'd0;
        rt_out <= 32'd0;
        imm_out <= 32'd0;
        rd_out <= 32'd0;
    end else begin
        pc_out <= pc_in;
        rs_out <= rs_in;
        rt_out <= rt_in;
        imm_out <= imm_in;
        rd_out <= rd_in;
    end
end

endmodule
