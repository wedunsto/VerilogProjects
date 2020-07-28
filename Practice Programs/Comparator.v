//Objective:
//Create a comparator for inputs A and B
`timescale 1ns / 1ps
module Comparator(A,B,Result);

input [1:0] A,B;
output reg [2:0] Result;//Procedurally generate output

always @ (A,B)
    begin
        if(A>B)
            Result <= 3'b100;
        else if(A==B)
            Result <= 3'b010;
        else
            Result <= 3'b001;
    end

endmodule
