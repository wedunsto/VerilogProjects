//Objective:
//Create a full subtractor
`timescale 1ns / 1ps
module FullSubtractor(A1,B1,Bin1,Dif1,Bout1);
input A1,B1,Bin1;
output Dif1,Bout1;

assign Dif1 = !(A1)&B1&!(Bin1) | A1&!(B1)&!(Bin1) | !(A1)&B1&!(Bin1) | A1&B1&Bin1;
assign Bout1 = !(A1)&Bin1 | !(A1)&B1 | B1&Bin1;

endmodule
