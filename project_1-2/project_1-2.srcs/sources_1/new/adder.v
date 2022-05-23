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

//�ӽӿ��Ҹ�display�Ķ���ģ�飬���������źŲ���Ƭѡ����
module adder(
    input  [31:0] operand1,
    input  [31:0] operand2,
    
    output reg [31:0] result,
    reg highest,
    output reg cout,
    reg [32:0] operand1_2,operand2_2,result_2
    );
    always@(*) begin
            //������չһλ
            operand1_2[32]=operand1[31];
            operand1_2[31:0]=operand1[31:0];
            operand2_2[32]=operand2[31];
            operand2_2[31:0]=operand2[31:0];
            //������
            {highest,result_2}=operand1_2+(~operand2_2)+1'b1;
            //�ж��Ƿ����
            if((result_2[32]^result_2[31])==1) cout=1;
            else cout=0;
            //ȡ�����
            result[31:0]=result_2[31:0];
     end
endmodule
