`timescale 1ns / 1ps
	//***************************************************************
	//   > �ļ���: adder.v
	//   > ����  ���ӷ�����ֱ��ʹ��"+"�����Զ����ÿ���ļӷ���
	//   > ����  : LOONGSON
	//   > ����  : 2016-04-14
	//***************************************************************
	module adder(
	    input  [31:0] operand1,
	    input  [31:0] operand2,
        input  [31:0] operand3,
	    input         cinlow,//2λ��λ
	    input         cinhigh,//2λ��λ
	    output [31:0] result,
	    output        coutlow,
        output        couthigh
	    );
	    assign {couthigh,coutlow,result} = operand1 + operand2 + operand3 + {cinhigh,cinlow};
	
	endmodule
