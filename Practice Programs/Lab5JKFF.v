//Objective:
//Create a clock controlled J-K Flip Flop 
`timescale 1ns / 1ps
module JKFF(J,K,CLK,Q,Qbar);
input J,K,CLK;//J-K Flip Flop inputs
output reg Q, Qbar;//J-K Flip Flop output

always @ (posedge(CLK))
    begin
        Q <= 1'b0;
        Qbar <= ~(Q);
        if(J == K | CLK == 1'b0) //latch conditions
            begin
                Q <= Q;
                Qbar <= Qbar;
            end
        else if(J == 1'b1 & K == 1'b0 & CLK == 1'b1) //set conditions
            begin
                Q <= 1'b1;
                Qbar <= 1'b0;
            end
        else if(J == 1'b0 & K == 1'b1 & CLK == 1'b1) //reset conditions
            begin
                Q <= 1'b0;
                Qbar <= 1'b1;
            end
    end
endmodule
