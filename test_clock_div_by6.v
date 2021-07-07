`timescale 1ns / 1ps
module test_clock_div_by6();
    reg clk=0,clear;
    wire out;
    always #5 clk=~clk;
    
    clock_div_by6 dut(out, clear, clk);
    
    initial begin
        clear=1;
        #2 clear=0;
        $dumpfile("test.vcd");
        $dumpvars(0);
        #200 $finish;
    end
    
endmodule
