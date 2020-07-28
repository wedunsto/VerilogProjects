//Objective:
//Create a binary to hexadecimal converter to display on the seven segment display
`timescale 1ns / 1ps
module SevenSeg(Binary,Hexadecimal);
    input Binary;//Binary result from the J-K Flip FLop
    output reg [6:0] Hexadecimal;

always @ (Binary)//Process binary input
    case(Binary)//Case statement with binary input
        1'b0 : Hexadecimal = 7'b1000000;//0
        1'b1 : Hexadecimal = 7'b1111001;//1 
    endcase
endmodule