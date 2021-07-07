`timescale 1ns / 1ps

module test_clock_div_by3();
    reg clk=0, clear=1;
    wire clockdiv;
    always #5 clk=~clk;
    
    clock_div_by3 dut(clockdiv, clear, clk);
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0);
//        $monitor("time=%g, clock_input=%b, clock_div=%b",$time,clk, clockdiv);
        #3 clear=0;
        #200 $finish;
    end
endmodule