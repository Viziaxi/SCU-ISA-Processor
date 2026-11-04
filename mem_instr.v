`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 02:22:00 PM
// Design Name: 
// Module Name: mem_instr
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


module mem_instr(
    input clk,
    input [7:0] addr,
    output reg [31:0] instr
    );

reg [31:0] data [255:0];

always @ (posedge clk) begin
    instr = data[addr];
end

// Instructions are hardcoded for this lab
integer i;
initial begin
    for (i = 0; i < 256; i = i + 1) begin
        data[i] = i * 2;
    end
end

endmodule
