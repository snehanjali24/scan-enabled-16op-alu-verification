`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 13:08:36
// Design Name: 
// Module Name: scan_dff_tb
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

module scan_dff_tb;

    reg clk;
    reg d;
    reg scan_in;
    reg scan_enable;

    wire q;

    // Instantiate DUT
    scan_dff DUT (
        .clk(clk),
        .d(d),
        .scan_in(scan_in),
        .scan_enable(scan_enable),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial
    begin
        // Initialize signals
        clk = 0;
        d = 0;
        scan_enable = 1;

        // Apply scan data
        scan_in = 1;
        #10;

        scan_in = 0;
        #10;

        scan_in = 1;
        #10;

        scan_in = 1;
        #10;

        $finish;
    end

endmodule
