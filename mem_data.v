`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 02:32:10 PM
// Design Name: 
// Module Name: mem_data
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


module mem_data(
    input clk, read, wrt,
    input [31:0] addr, data_in,
    output reg [31:0] data_out
    );

reg [31:0] data [65535:0];

always @ (posedge clk) begin
    if (read)
        data_out = data[addr[15:0]];
    if (wrt)
        data[addr[15:0]] = data_in;
end

endmodule
