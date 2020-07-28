//Objective:
//Create a 4:1 MUX
`timescale 1ns / 1ps
module FTOMux(in1,in2,in3,sel,toSevenSegment);
input [1:0] in1,in2,in3;//switch inputs
input wire [1:0] sel; //2 bit select line
output [6:0] toSevenSegment;//7 bit output to seven segment display

wire Sum;//stores the full adder sum
wire Cout;//stores the full adder carry out
wire Dif;//stores the full subtractor difference
wire Bout;//stores the full subtractor difference
wire [6:0] sevenSegResult;//store the sevenSeg result
reg muxToSevenSeg; //register for procedural assignments

FullAdder U0 (.A(in1[1]),.B(in2[1]),.Cin(in3[1]),.Sum(Sum),.Cout(Cout));//call the module from the verilog file
FullSubtractor U1 (.A(in1[0]),.B(in2[0]),.Bin(in3[0]),.Dif(Dif),.Bout(Bout));//call the module from the verilog file

always @ (sel, Sum, Cout, Dif, Bout)//procedurally generate output
    begin
        case(sel)
            2'b00://if select line 00 : output = Sum
                muxToSevenSeg <= Sum;
            2'b01://if select line 01 : output = Cout
                muxToSevenSeg <= Cout;
            2'b10://if select line 10 : output = Dif
                muxToSevenSeg <= Dif;
            2'b11://if select line 11 : output = Bout
                muxToSevenSeg <= Bout;
        endcase
    end
    SevenSeg U2 (.Binary(muxToSevenSeg),.Hexadecimal(sevenSegResult));
    //use the stored value as an input, use the register to hold the output
    assign toSevenSegment = sevenSegResult;//assign the SevenSeg output to the actual output
endmodule