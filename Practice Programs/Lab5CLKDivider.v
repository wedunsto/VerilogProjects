//Objective:
//Input the internal 100 MHz clock, output a slower clock 
`timescale 1ns / 1ps
module CLKDivider(inCLK,outCLK);
input inCLK;//Internal 100 MHz clock
output reg outCLK;//Slowed down clock
reg [27:0] counter = 28'd0;//slows clock down

always @ (posedge(inCLK))
    begin  
        counter <= counter + 28'd1;//else increment the counter
        outCLK <= counter[27];//store the slow bit to the output
    end
endmodule
