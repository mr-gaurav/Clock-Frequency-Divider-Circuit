module clock_div_by5(out, clear, clk);
    output out;
    input clear, clk;   
    wire t1, t2, t3; 
    mod5 i1(t1, clear, clk);
    Dff_posedge i2(.q(t2), .din(t1), .clear(clear), .clk(clk));
    Dff_negedge i3(.q(t3), .din(t2), .clear(clear), .clk(clk));
    or (out, t1,t2, t3);
    
endmodule    