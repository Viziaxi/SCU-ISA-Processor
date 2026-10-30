`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 03:25:59 PM
// Design Name: 
// Module Name: negate
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


module negate(
    output [31:0] out,
    input [31:0] in
    );

wire [31:0] invert;
wire ignore;

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin
        not(invert[i], in[i]);
    end
endgenerate

full_adder adder(out, ignore, invert, 32'd1);

endmodule
