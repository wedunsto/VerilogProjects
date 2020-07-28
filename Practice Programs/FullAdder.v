//Objective:
//Create a full adder for 2 bit inputs
`timescale 1ns / 1ps
module FullAdder(A,B,Cin,Sum);

input [1:0] A,B;
input Cin;
output [2:0] Sum;

assign Sum[2] = Cin ^ (A[1] ^ B[1]);
assign Sum[1] = Cin ^ (A[0] ^ B[0]);
assign Sum[0] = (A[1] & B[1]) | (B[1] & Cin) | (A[1] & Cin);
endmodule
