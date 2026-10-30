`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 02:21:43 PM
// Design Name: 
// Module Name: mux2to1
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


module mux2to1(
    output [31:0] out,
    input sel,
    input [31:0] a,
    input [31:0] b
    );

wire nsel;
wire [31:0] w1;
wire [31:0] w2;

not(nsel, sel);

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin
        and(w1[i], nsel, a[i]);
        and(w2[i], sel, b[i]);
        or(out[i], w1[i], w2[i]);
    end
endgenerate

endmodule
