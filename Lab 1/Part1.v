`timescale 1ns / 1ps
module Part1(
    input in1,
    input in2,
    output out1
    ); //Define input and output scalared
    
assign out1 = in1 & in2; //Assign AND result to out1
    
endmodule
