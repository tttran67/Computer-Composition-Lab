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


//module testbench£»

////inputs
//reg clk;
//reg [4:0]raddr1;
//reg [4:0]raddr2;
//reg [4:0]waddr;
//reg [31:0]wdata;
//reg [4:0]test_addr;

////outputs
//wire [31:0]rdata1;
//wire [31:0]rdata2;
//wire [31:0]test_data;

////UUT

//regfile uut(
//.clk(clk),
//.raddr1(raddr1),
//.raddr2(raddr2),
//.waddr(waddr),
//.wdata(wdata),
//.test_addr(test_addr),
//.rdata1(rdata1),
//.rdata2(rdata2),
//.test_data(test_data)

//);
//initial begin
//clk = 0;
//raddr1 = 0;
//raddr2 = 0;


//end

//always #5 begin
//raddr1 = $random % 32;
//rdata1 = 32'd1;
//end


//endmodule
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
    reg             wen;
    reg      [4 :0] raddr1;
    reg      [4 :0] raddr2;
    reg      [4 :0] waddr;
    reg      [31:0] wdata;   
    reg      [4 :0] test_addr;  

    // Outputs
    wire [31:0] rdata1;
    wire [31:0] rdata2;
    wire [31:0] test_data;

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
    raddr1=5'b0;
    raddr2=5'b0;
    waddr=5'b0;
    wdata=32'b1;
    test_addr=5'b0;
end

    always #5 clk=~clk;
    
    always #100
    begin
    wen=1;
    wdata={$random};
    waddr=waddr+5'b1;
    end
    always #100
    begin
    raddr1=waddr-5'b1;
    raddr2=raddr1-5'b1;
    end
endmodule