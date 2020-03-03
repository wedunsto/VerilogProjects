//Objective:
//Create a program that counts from 0 - 15 in binary
`timescale 1ns / 1ps
module Numbers(CLK, BinaryOut);
    input CLK;//1 Hz clock
    output reg [7:0] BinaryOut; //Binary result going to 7 seg
    
    always @ (CLK)
        begin
            if(CLK == 1'b1 & BinaryOut < 8'b00001111)//positive edge
                begin
                    BinaryOut <= BinaryOut + 1'b1;
                end
            else if(CLK == 1'b1 & BinaryOut >= 8'b00001111)//greater than 15
                begin
                    BinaryOut <= 8'b0;//reset output
                end
        end
endmodule
