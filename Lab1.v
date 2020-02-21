//Objective:
//Store the and result of inputs in the output
`timescale 1ns / 1ps
module Lab1(In1,In2,Out1);//Declare variables
input In1,In2;//Define inputs
output Out1;//Define outputs

assign Out1 = In1 & In2;//Assign output to and result

endmodule
