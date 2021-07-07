`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2021 20:18:05
// Design Name: 
// Module Name: test_clock_div_by_1point5
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


module test_clock_div_by_1point5();
    reg clear=1, clk=0;
    wire out;
    always #5 clk=~clk;
    
    clock_div_by_1point5 dut(out, clear, clk);
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0);
        #3 clear=0;
        #200 $finish;
    end
endmodule
