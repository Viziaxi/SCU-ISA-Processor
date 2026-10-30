`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2026 03:04:19 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    output [31:0] sum,
    output cout,
    input [31:0] a,
    input [31:0] b
    );

// only need 31 since the last carry is connected directly to cout
wire [30:0] carry;

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin
        if (i == 0)
            adder1 adder_inst(sum[i], carry[i], a[i], b[i], 1'b0);
        else if (i == 31)
            adder1 adder_inst(sum[i], cout, a[i], b[i], carry[i-1]);
        else
            adder1 adder_inst(sum[i], carry[i], a[i], b[i], carry[i-1]);
    end
endgenerate

endmodule
