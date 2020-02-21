//Objective:
//Encode a 4:2 Encoder
`timescale 1ns / 1ps
module Lab2(A,F);//Declare variables
input [3:0] A;//Define input
output [1:0] F;//Define output

wire F0;//Temporarily store A3 or A1
wire F1;//Temporarily store !A0 and !A1

assign F0 = A[3] | A[1];
assign F1 = ~A[1] & ~A[0];

assign F = {F0,F1};//F[1] = F0, F[0] = F1

endmodule
