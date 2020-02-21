//Objective:
//Implement a full adder
`timescale 1ns / 1ps
module Lab2Part3(A,B,Cin,Sum, Cout);//Declares variables

input A, B, Cin;//Defines inputs
output Sum, Cout;//Defines outputs

assign Sum = Cin ^(A ^ B);
assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule
