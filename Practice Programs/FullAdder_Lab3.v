//Objective: 
//Create a full adder
`timescale 1ns / 1ps
module FullAdder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum, Cout;

assign Sum = Cin^(A^B);
assign Cout = (A&B)|(B&Cin)|(A&Cin);

endmodule
