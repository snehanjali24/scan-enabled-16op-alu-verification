`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 13:12:23
// Design Name: 
// Module Name: scan_chain
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


module scan_chain(
    input clk,
    input scan_enable,
    input scan_in,
    output scan_out,
    output [3:0] q
);

scan_dff FF0(
    .clk(clk),
    .d(1'b0),
    .scan_in(scan_in),
    .scan_enable(scan_enable),
    .q(q[0])
);

scan_dff FF1(
    .clk(clk),
    .d(1'b0),
    .scan_in(q[0]),
    .scan_enable(scan_enable),
    .q(q[1])
);

scan_dff FF2(
    .clk(clk),
    .d(1'b0),
    .scan_in(q[1]),
    .scan_enable(scan_enable),
    .q(q[2])
);

scan_dff FF3(
    .clk(clk),
    .d(1'b0),
    .scan_in(q[2]),
    .scan_enable(scan_enable),
    .q(q[3])
);

assign scan_out = q[3];

endmodule