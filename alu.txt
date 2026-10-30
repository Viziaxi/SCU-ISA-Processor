`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 03:34:37 PM
// Design Name: 
// Module Name: alu
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


module alu(
    output [31:0] out,
    output z, n,
    input [31:0] a,
    input [31:0] b,
    input add, neg, sub
    );

wire nsub;
wire nneg;
not(nsub, sub);
not(nneg, neg);

wire sel1;
wire [1:0] sel2;

and(sel1, add, neg, nsub);      // sel1 = 1 will negate A
and(sel2[0], add, neg);         // sel2 = 01 will select 0 in mux3to1
and(sel2[1], add, nneg, sub);   // sel2 = 10 will select -B in mux3to1

wire [31:0] negA;
wire [31:0] negB;
wire [31:0] summand1;
wire [31:0] summand2;
wire ignore;

negate neg1(negA, a);
negate neg2(negB, b);
mux2to1 muxA(summand1, sel1, a, negA);
mux3to1 muxB(summand2, sel2, b, 32'b0, negB);
full_adder last_adder(out, ignore, summand1, summand2);

assign n = out[31];
assign z = out == 32'b0;

endmodule
