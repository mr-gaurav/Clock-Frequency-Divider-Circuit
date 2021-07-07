// negative edge triggered D flipflop with asynchronous reset
module Dff_negedge(q,qbar, din, clear, clk);
    output q, qbar;
    input din, clear, clk;
    reg q;
    assign qbar=~q;
    always @(negedge clk or posedge clear) begin
        if(clear)
            q<=0;
        else
            q<=din;
    end
endmodule

// Positive edge triggered D flipflop with asynchronous reset
module Dff_posedge (q,qbar, din, clear, clk);
    output q, qbar;
    input din, clear, clk;
    reg q;
    assign qbar=~q;
    always @(posedge clk or posedge clear) begin
        if(clear)
            q<=0;
        else
            q<=din;
    end
endmodule

// Positive + negative edge triggered D flipflop with asynchronous reset
module Dff_bothedge (q,qbar, din, clear, clk);
    output q, qbar;
    input din, clear, clk;
    reg q;
    assign qbar=~q;
    always @(posedge clk or negedge clk or posedge clear) begin
        if(clear)
            q<=0;
        else
            q<=din;
    end
endmodule