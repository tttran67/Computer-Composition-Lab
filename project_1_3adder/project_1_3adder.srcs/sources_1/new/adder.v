`timescale 1ns / 1ps
	//***************************************************************
	//   > 文件名: adder.v
	//   > 描述  ：加法器，直接使用"+"，会自动调用库里的加法器
	//   > 作者  : LOONGSON
	//   > 日期  : 2016-04-14
	//***************************************************************
	module adder(
	    input  [31:0] operand1,
	    input  [31:0] operand2,
        input  [31:0] operand3,
	    input         cinlow,//2位进位
	    input         cinhigh,//2位进位
	    output [31:0] result,
	    output        coutlow,
        output        couthigh
	    );
	    assign {couthigh,coutlow,result} = operand1 + operand2 + operand3 + {cinhigh,cinlow};
	
	endmodule
