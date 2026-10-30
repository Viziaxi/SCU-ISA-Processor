`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 02:53:43 PM
// Design Name: 
// Module Name: adder1
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


module adder1(
    output s,
    output cout,
    input a,
    input b,
    input cin
    );

wire ab_xor;
wire ab_xor_c_and;
wire ab_and;

xor(ab_xor, a, b);
and(ab_xor_c_and, ab_xor, cin);
and(ab_and, a, b);

xor(s, ab_xor, cin);
or(cout, ab_xor_c_and, ab_and);

endmodule
