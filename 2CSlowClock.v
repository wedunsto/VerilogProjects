//Objective:
//Create a 1 Hz clock
`timescale 1ns / 1ps
module SlowClock(inClock, outClock);
    input inClock;//internal 100 MHz clock
    output reg outClock;//1 Hz clock
    reg [27:0] counter = 28'd0;//counter used to slow down clock
    
    always @ (posedge(inClock))
        begin
            counter <= counter +28'd1;//increments the counter
            outClock <= counter[27];//produces the 1 Hz clock
        end
endmodule