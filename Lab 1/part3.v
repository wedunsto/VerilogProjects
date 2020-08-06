`timescale 1ns / 1ps
module part3(A,B,C,F); //Declare variables
input A, B,C; //Define inputs
output F; //Define outputs
reg F; //Make output a register to procedurally assign the value
always @ (A or B or C) //Monitor inputs for changes
    begin
        F = (A && B) || !(C); //Assign logic expression to output
    end
endmodule
