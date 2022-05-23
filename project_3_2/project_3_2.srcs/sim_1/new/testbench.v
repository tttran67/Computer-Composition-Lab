//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2022/04/22 16:42:35
//// Design Name: 
//// Module Name: testbench
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/15 17:01:03
// Design Name: 
// Module Name: tb
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
    reg             clk;
    reg      [7:0] wen;
    reg      [3 :0] raddr1;
    reg      [3 :0] raddr2;
    reg      [3 :0] waddr;
    reg      [63:0] wdata;   
    reg      [3 :0] test_addr;  

    // Outputs
    wire [63:0] rdata1;
    wire [63:0] rdata2;
    wire [63:0] test_data;

    // Instantiate the Unit Under Test (UUT)
    regfile uut (
        .clk(clk), 
        .wen(wen), 
        .raddr1(raddr1), 
        .raddr2(raddr2), 
        .waddr(waddr), 
        .wdata(wdata),
        .test_addr(test_addr),
        .rdata1(rdata1),
        .rdata2(rdata2),
        .test_data(test_data)
    );
initial begin
    //initialize inputs
    clk=0;
    wen=0;
    raddr1=4'b0;
    raddr2=4'b0;
    waddr=4'b0;
    wdata = 64'b0000000100000001000000010000000100000001000000010000000100000001;
    test_addr=4'b0;
end

    always #5 clk=~clk;
    
    always #100
    begin
    wen = $random % 9'b100000000;
    waddr=waddr+4'b1;
    raddr1=waddr-4'b1;
    raddr2=raddr1-4'b1;
    end
endmodule