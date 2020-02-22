//Objective:
//Create a 4:1 MUX
`timescale 1ns / 1ps
module FTOMux(in1,in2,in3,sel,out3);
input in1,in2,in3;
input wire [1:0] sel;
output reg out3; //One bit output

reg temp;//placeholder for second output

always @ (sel)//procedurally generate output
    begin
        case(sel)
            2'b00://if select line 00 : output = Sum
                FullAdder(in1,in2,in3,out3,temp);
            2'b01://if select line 01 : output = Cout
                FullAdder(in1,in2,in3,temp,out3);
            2'b10://if select line 10 : output = Dif
                FullSubtractor(in1,in2,in3,out3,temp);
            2'b11://if select line 11 : output = Bout
                FullSubtractor(in1,in2,in3,temp,out3);
        endcase
    end
endmodule