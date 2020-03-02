//Objective:
//Create a top level verilog program for the 2:1 MUX
//2:1 MUX includes the Full Adder and the Comparator
`timescale 1ns / 1ps
module TopLevel(A,B,Cin,S,Output);
    input [3:0] A,B;
    input Cin,S;
    output reg [2:0] Output;//Procedurally assigned output
    
    wire [2:0] sumValue, resultValue;//Connect the component outputs to the top level output
    
    FullAdder U0 (.A(A[3:2]),.B(B[3:2]),.Cin(Cin),.Sum(sumValue));//Make component of FullAdder
    Comparator U1 (.A(A[1:0]),.B(B[1:0]),.Result(resultValue));//Make component of Comparator
    
    always @ (S)//S is on the sensitivity list
        begin
            case(S)//case statement based on the value of S
                1'b0: Output <= sumValue;//if S is 0 output the value of Sum
                1'b1: Output <= resultValue;//if S is 1 output the value of Result
            endcase
        end
endmodule
