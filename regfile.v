`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 02:26:53 PM
// Design Name: 
// Module Name: regfile
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


module regfile(
    output reg [31:0] rs_out, rt_out,
    input clk, wrt,
    input [5:0] rs, rt, rd,
    input [31:0] data_in
    );

reg [31:0] data [63:0];

always @ (posedge clk) begin
    rs_out = data[rs];
    rt_out = data[rt];
    
    if (wrt)
        data[rd] = data_in;
end

endmodule
