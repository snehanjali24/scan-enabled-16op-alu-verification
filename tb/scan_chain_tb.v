`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 13:14:35
// Design Name: 
// Module Name: scan_chain_tb
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


`timescale 1ns/1ps

module scan_chain_tb;

reg clk;
reg scan_enable;
reg scan_in;

wire scan_out;
wire [3:0] q;

scan_chain DUT(
    .clk(clk),
    .scan_enable(scan_enable),
    .scan_in(scan_in),
    .scan_out(scan_out),
    .q(q)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    scan_enable = 1;

    // Shift pattern 1011
    scan_in = 1; #10;
    scan_in = 0; #10;
    scan_in = 1; #10;
    scan_in = 1; #10;

    // Continue shifting zeros to flush pattern out
    scan_in = 0; #10;
    scan_in = 0; #10;
    scan_in = 0; #10;
    scan_in = 0; #10;

    $finish;
end

// Monitor values
initial
begin
    $monitor("Time=%0t scan_in=%b q=%b scan_out=%b",
             $time, scan_in, q, scan_out);
end

endmodule
