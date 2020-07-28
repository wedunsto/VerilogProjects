//Objective:
//Create a top level design for the J-K Flip Flop, slow clock, and seven segment display
`timescale 1ns / 1ps
module TopLevel(J,K,CLK,Select,HexValue);
    input J,K,CLK,Select;//Top level inputs
    output [6:0] HexValue;
    wire slowCLK, Q, Qbar;
    wire [6:0] hexOutput;
    reg binInput;//Connects the results of the components to outputs
    CLKDivider U0 (.inCLK(CLK), .outCLK(slowCLK));//Create a component for the slow clock
    JKFF U1 (.J(J), .K(K), .CLK(slowCLK),.Q(Q), .Qbar(Qbar));//Create a component for the J-K Flip Flop
    
    always @ (Select)
        case(Select)
            1'b0:
                binInput <= Q;
            1'b1:
                binInput <= Qbar;
        endcase
    
    SevenSeg U2 (.Binary(binInput), .Hexadecimal(hexOutput));//Create a component for the Seven segment
    assign HexValue = hexOutput;//Store the hex output
endmodule
