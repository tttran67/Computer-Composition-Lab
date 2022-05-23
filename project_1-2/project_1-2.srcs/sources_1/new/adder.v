`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 16:27:56
// Design Name: 
// Module Name: adder8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//加接口且改display的顶层模块，至少两个信号才能片选三个
module adder(
    input  [31:0] operand1,
    input  [31:0] operand2,
    
    output reg [31:0] result,
    reg highest,
    output reg cout,
    reg [32:0] operand1_2,operand2_2,result_2
    );
    always@(*) begin
            //符号拓展一位
            operand1_2[32]=operand1[31];
            operand1_2[31:0]=operand1[31:0];
            operand2_2[32]=operand2[31];
            operand2_2[31:0]=operand2[31:0];
            //计算结果
            {highest,result_2}=operand1_2+(~operand2_2)+1'b1;
            //判断是否溢出
            if((result_2[32]^result_2[31])==1) cout=1;
            else cout=0;
            //取出结果
            result[31:0]=result_2[31:0];
     end
endmodule
