//Positive edge triggered T flipflop with asynchronus reset
module Tff (q, qbar, T, clear, clk);
    output  q, qbar;
    input T, clear, clk;
    reg q=0;
    always @(posedge clk or posedge clear) begin    // asynchronous clear
        if(clear)
            q<=0;
        else if(T==1)
            q<=~q;
        else if(T==0)
            q<=q;
    end
    assign qbar=~q;
    
endmodule