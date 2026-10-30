`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2026 08:26:11 PM
// Design Name: 
// Module Name: control
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


module control(instr, mem_read, mem_write, reg_write, mem_to_reg, branch, jump, alu_src, alu_ctrl, pc_src);
    input [31:0] instr;
    output mem_read, mem_write, reg_write, mem_to_reg, branch, pc_src, jump;
    output [1:0] alu_src;
    output [2:0] alu_ctrl;
    // THIS MODULE NEEDS A LOT OF WORK -- We need to draw out the pipeline first so we can confirm each instr works before even creating control (imm_gen is fine).
endmodule
