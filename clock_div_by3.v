`timescale 1ns / 1ps
//clock division by F/3
module clock_div_by3(out, clear, clk);
    output out;
    input clear, clk;
    wire t1, t2;
    mod3 i1(t1, clear, clk);
    Dff_negedge i2(.q(t2), .din(t1), .clear(clear), .clk(clk));  // delay t1 by half clock cycle
    or i3(out, t1, t2);
endmodule