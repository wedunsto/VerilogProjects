`timescale 1ns / 1ps

module part2 (in1,in2,in3,in4,out1);
    input in1, in2, in3, in4;
    output out1;//Define inputs and output
    reg out1;
    
    always @(in1 or in2 or in3 or in4)
    begin
        //Assign out1 to the logical function
        out1 = (!(in1) && !(in2) && in3) || (!(in1) && in2 && in4) || (in1 && in2 && !(in3) && in4) || (in1 && !(in2) && in3 && in4);
    end
    
endmodule
