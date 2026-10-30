`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 02:25:20 PM
// Design Name: 
// Module Name: mux3to1
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


module mux3to1(
    output [31:0] out,
    input [1:0] sel,
    input [31:0] a,
    input [31:0] b,
    input [31:0] c
    );

wire [1:0] nsel;
wire [31:0] w1;
wire [31:0] w2;
wire [31:0] w3;

not(nsel[0], sel[0]);
not(nsel[1], sel[1]);

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin
        and(w1[i], nsel[1], nsel[0], a[i]);
        and(w2[i], nsel[1], sel[0], b[i]);
        and(w3[i], sel[1], nsel[0], c[i]);
        or(out[i], w1[i], w2[i], w3[i]);
    end
endgenerate

endmodule
