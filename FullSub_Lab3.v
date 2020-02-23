//Objective:
//Create a full subtractor
`timescale 1ns / 1ps
module FullSubtractor(A,B,Bin,Dif,Bout);
input A,B,Bin;
output Dif,Bout;

assign Dif = !(A)&!(B)&Bin | A&!(B)&!(Bin) | !(A)&B&!(Bin) | A&B&Bin;
assign Bout = !(A)&Bin | !(A)&B | B&Bin;

endmodule
