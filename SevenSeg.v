//Objective:
//Convert 4 bit binary values to hexadecimal values on the seven segment display
`timescale 1ns / 1ps
module SevenSeg(Binary, Hexadecimal);//Declare variables
input Binary;//Define 1 bit input
output reg [6:0] Hexadecimal;//Define 7 bit output

always @ (Binary)//Process binary input
    case(Binary)//Case statement with binary input
        1'b0 : Hexadecimal = 7'b1000000;//0
        1'b1 : Hexadecimal = 7'b1111001;//1 
    endcase//Close case
endmodule//End module