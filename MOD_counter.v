// MOD-3 ripple up-counter 
module mod3 (out, clear, clk);
    output out;
    input clear, clk;
    
    wire [1:0] q,qbar;
    reg t=1;
    wire clr, reset;
    assign out=q[1];
    
    and g1(reset, q[0], q[1]);
    or g2 (clr, reset, clear);
    
    Tff t1(q[0], qbar[0], t, clr, clk);
    Tff t2(q[1], qbar[1], t, clr, qbar[0]);
endmodule

//MOD-5 Ripple up-counter
module mod5(out, clear, clk);
    output out;
    input clear, clk;
    reg T=1;
    wire [2:0] q, qbar;
    wire clr, reset;
    and (reset, q[2], q[0]);
    or g2 (clr, reset, clear);
    Tff i0(.q(q[0]), .qbar(qbar[0]), .T(T), .clear(clr), .clk(clk));
    Tff i1(.q(q[1]), .qbar(qbar[1]), .T(T), .clear(clr), .clk(qbar[0]));
    Tff i2(.q(q[2]), .qbar(qbar[2]), .T(T), .clear(clr), .clk(qbar[1]));
    assign out=q[2];
endmodule

// mod6 ripple up counter
module mod6 (out, clear, clk);
    output out;
    input clear, clk;
    reg T=1;
    wire [2:0] q, qbar;
    wire reset, clr;
    
    and (reset, q[2],q[1]);
    or (clr, reset, clear);
    
    Tff i0(.q(q[0]), .qbar(qbar[0]), .T(T), .clear(clr), .clk(clk));
    Tff i1(.q(q[1]), .qbar(qbar[1]), .T(T), .clear(clr), .clk(qbar[0]));
    Tff i2(.q(q[2]), .qbar(qbar[2]), .T(T), .clear(clr), .clk(qbar[1]));
    
    assign out=q[2];
endmodule