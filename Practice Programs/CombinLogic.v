//Objective:
//Create a program that performs the and logical operation and outputs the result an LED
`timescale 1ns / 1ps
module CombinLogic(
    input input_1,
    input input_2,
    output andResult);
    
    reg[1:0] andO;
    
    wire andOp; //Signal
    
    always @ (input_1 or input_2)
    begin
        andO = input_1 & input_2;
    end
    assign andResult = andO;
endmodule