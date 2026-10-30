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


module buf_exwb(
    input clk, reset,
    input zero_in, neg_in,
    input [31:0] pc_sum_in,
    input [31:0] alu_res_in,
    input [31:0] xrs_in,
    input [4:0] rd_in,
    output reg [31:0] pc_sum_out,
    output reg [31:0] alu_res_out,
    output reg [31:0] xrs_out,
    output reg [4:0] rd_out
    );

always @ (negedge clk) begin
    if (reset) begin
        pc_sum_out <= 32'd0;
        alu_res_out <= 32'd0;
        xrs_out <= 32'd0;
        rd_out <= 32'd0;
    end else begin
        pc_sum_out <= pc_sum_in;
        alu_res_out <= alu_res_in;
        xrs_out <= xrs_in;
        rd_out <= rd_in;
    end
end

endmodule
