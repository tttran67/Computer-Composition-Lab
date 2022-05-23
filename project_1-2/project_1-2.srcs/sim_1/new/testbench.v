`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/11 16:53:15
// Design Name: 
// Module Name: testbench
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


module testbench;

    // Inputs
    reg [31:0] operand1;
    reg [31:0] operand2;
    // Outputs
    wire cout;
    wire [31:0] result;
    // Instantiate the Unit Under Test (UUT)
    adder uut (
        .operand1(operand1),
        .operand2(operand2),
        .cout    (cout    ),
        .result  (result  )
    );
    initial begin
        // Initialize Inputs
        operand1 = 0;
        operand2 = 0;
        // Wait 100 ns for global reset to finish
        #100;
        // Add stimulus here
    end
    always #10 operand1 = $random;  //$random为系统任务，产生一个随机的32位数
    always #10 operand2 = $random;  //#10 表示等待10个单位时间(10ns)，即每过10ns，赋值一个随机的32位数
   
endmodule
