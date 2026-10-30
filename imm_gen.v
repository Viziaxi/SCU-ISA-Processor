`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 03:16:11 PM
// Design Name: 
// Module Name: imm_gen
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
module imm_gen(instr, imm_out);
    input [31:0] instr;
    output [31:0] imm_out;
    
    wire [31:0] inc_bits, svpc_bits;
    
    assign svpc_bits  = {{10{instr[21]}}, instr[21:0]};
    assign inc_bits = {{16{instr[15]}}, instr[15:0]};
    
    two_mux mux2 (
        .A (inc_bits),
        .B (svpc_bits),
        .control (instr[31]),
        .out (imm_out)
    );
endmodule
