`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 03:09:26 PM
// Design Name: 
// Module Name: buf_exmem
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


module buf_exmem(
    input clk, reset,
    input zero_in, neg_in,
    input [31:0] pc_sum_in,
    input [31:0] alu_res_in,
    input [31:0] read1_in,
    input [31:0] read2_in,
    output reg [31:0] pc_sum_out,
    output reg [31:0] alu_res_out,
    output reg [31:0] read1_out,
    output reg [31:0] read2_out
    );

always @ (negedge clk) begin
    if (reset) begin
        pc_sum_out <= 32'd0;
        alu_res_out <= 32'd0;
        read1_out <= 32'd0;
        read2_out <= 32'd0;
    end else begin
        pc_sum_out <= pc_sum_in;
        alu_res_out <= alu_res_in;
        read1_out <= read1_in;
        read2_out <= read2_in;
    end
end

endmodule
