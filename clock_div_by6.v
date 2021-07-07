`timescale 1ns / 1ps

module clock_div_by6(out, clear, clk);
    output out;
    input clear, clk;
    wire t1, t2, t3;
    mod6 i1 (t1, clear, clk);
    Dff_posedge i2(.q(t2), .din(t1), .clear(clear), .clk(clk));
    or (out,t1,t2);
endmodule

