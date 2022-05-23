`timescale 1ns / 1ps
//***************************************************************
//   > 文件名: regfile.v
//   > 描述  ：寄存器堆模块，同步写，异步读
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//***************************************************************
module regfile(
    input             clk,
    input      [7:0] wen,//写使能
    input      [3 :0] raddr1,//地址，给CPU用
    input      [3 :0] raddr2,//地址，给CPU用
    input      [3 :0] waddr,//写在哪个寄存器
    input      [63:0] wdata,//写的数据
    output reg [63:0] rdata1,//数据
    output reg [63:0] rdata2,//数据
    input      [3 :0] test_addr,//给LED屏
    output reg [63:0] test_data//给LED屏
    );
    reg [63:0] rf[15:0];
    // three ported register file
    // read two ports combinationally
    // write third port on rising edge of clock
    // register 0 hardwired to 0
    reg [63:0] tmp;
    always @(posedge clk)
    
    begin
    tmp = 0;
        if (wen[0] == 1)
         begin
         tmp = tmp + wdata[7:0];
         end
        if (wen[1] == 1)
         begin
         tmp = tmp + (wdata[15:8]<<4'b1000);
         end
        if(wen[2] == 1)
         begin 
         tmp = tmp +  (wdata[23:16]<<5'b10000);
         end
        if(wen[3] == 1)
         begin
         tmp = tmp +  (wdata[31:24]<<5'b11000);
         end
        if(wen[4] == 1)
         begin
         tmp = tmp +  (wdata[39:32]<<6'b100000);
         end
        if(wen[5] == 1)
         begin
         tmp = tmp +  (wdata[47:40]<<6'b101000);
         end
        if(wen[6] == 1)
         begin
         tmp = tmp +  (wdata[55:48]<<6'b110000);
         end
        if(wen[7] == 1)
         begin
         tmp = tmp +  (wdata[63:56]<<6'b111000);
         end
         rf[waddr] <= tmp;
    end
     
    //读端口1
    always @(*)
    begin
        case (raddr1)
        6'd0 : rdata1 <= rf[0];
            6'd1 : rdata1 <= rf[1 ];
            6'd2 : rdata1 <= rf[2 ];
            6'd3 : rdata1 <= rf[3 ];
            6'd4 : rdata1 <= rf[4 ];
            6'd5 : rdata1 <= rf[5 ];
            6'd6 : rdata1 <= rf[6 ];
            6'd7 : rdata1 <= rf[7 ];
            6'd8 : rdata1 <= rf[8 ];
            6'd9 : rdata1 <= rf[9 ];
            6'd10: rdata1 <= rf[10];
            6'd11: rdata1 <= rf[11];
            6'd12: rdata1 <= rf[12];
            6'd13: rdata1 <= rf[13];
            6'd14: rdata1 <= rf[14];
            6'd15: rdata1 <= rf[15];
            default : rdata1 <= 64'd0;
        endcase
    end
    //读端口2
    always @(*)
    begin
        case (raddr2)
        6'd0 : rdata2 <= rf[0];
            6'd1 : rdata2 <= rf[1 ];
                    6'd2 : rdata2 <= rf[2 ];
                    6'd3 : rdata2 <= rf[3 ];
                    6'd4 : rdata2 <= rf[4 ];
                    6'd5 : rdata2 <= rf[5 ];
                    6'd6 : rdata2 <= rf[6 ];
                    6'd7 : rdata2 <= rf[7 ];
                    6'd8 : rdata2 <= rf[8 ];
                    6'd9 : rdata2 <= rf[9 ];
                    6'd10: rdata2 <= rf[10];
                    6'd11: rdata2 <= rf[11];
                    6'd12: rdata2 <= rf[12];
                    6'd13: rdata2 <= rf[13];
                    6'd14: rdata2 <= rf[14];
                    6'd15: rdata2 <= rf[15];
            default : rdata2 <= 64'd0;
        endcase
    end
     //调试端口，读出寄存器值显示在触摸屏上
    always @(*)
    begin
        case (test_addr)
        6'd0 : test_data <= rf[0];
            6'd1 : test_data <= rf[1 ];
                    6'd2 : test_data <= rf[2 ];
                    6'd3 : test_data <= rf[3 ];
                    6'd4 : test_data <= rf[4 ];
                    6'd5 : test_data <= rf[5 ];
                    6'd6 : test_data <= rf[6 ];
                    6'd7 : test_data <= rf[7 ];
                    6'd8 : test_data <= rf[8 ];
                    6'd9 : test_data <= rf[9 ];
                    6'd10: test_data <= rf[10];
                    6'd11: test_data <= rf[11];
                    6'd12: test_data <= rf[12];
                    6'd13: test_data <= rf[13];
                    6'd14: test_data <= rf[14];
                    6'd15: test_data <= rf[15];
            default : test_data <= 64'd0;
        endcase
    end
endmodule
