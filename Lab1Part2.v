//Objective:
//Determine if input is prime
`timescale 1ns / 1ps
module Lab1Part2(Num, Prime);
input[3:0] Num; //4 bit input
output reg Prime; //1 bit output

always @ (Num)
    case(Num) //If the number is prime set output 
    4'b0010 : Prime = 1'b1;
    4'b0011 : Prime = 1'b1;
    4'b0101 : Prime = 1'b1;
    4'b0111 : Prime = 1'b1;
    4'b1011 : Prime = 1'b1;
    4'b1101 : Prime = 1'b1;
    default : Prime = 1'b0;
   endcase
endmodule
