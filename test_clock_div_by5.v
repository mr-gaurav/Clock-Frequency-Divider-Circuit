`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2021 01:16:12
// Design Name: 
// Module Name: test_clock_div_by5
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


module test_clock_div_by5();
    reg clk=0, clear=1;
    wire out;
    always #5 clk=~clk;
    
    clock_div_by5 dut(out, clear, clk);
    
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0);
        #3 clear=0;
        #200 $finish;
    end
    
endmodule
