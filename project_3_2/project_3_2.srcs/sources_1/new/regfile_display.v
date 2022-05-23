//*************************************************************************
//   > 文件名: regfile_display.v
//   > 描述  ：寄存器堆显示模块，调用FPGA板上的IO接口和触摸屏
//   > 作者  : LOONGSON
//   > 日期  : 2016-04-14
//*************************************************************************
module regfile_display(
    //时钟与复位信号
    input clk,
    input resetn,    //后缀"n"代表低电平有效

    //拨码开关，用于产生写使能和选择输入数
    input [1:0] input_sel,
    input help_sel,//修改，当help_sel==1时输入wdata的低32位
    input wen_sel,//修改，当wen_sel==1时输入wen

    //led灯，用于指示写使能信号，和正在输入什么数据
    output led_waddr,    //指示输入写地址
    output led_raddr1,   //指示输入读地址1
    output led_raddr2,   //指示输入读地址2

    //触摸屏相关接口，不需要更改
    output lcd_rst,
    output lcd_cs,
    output lcd_rs,
    output lcd_wr,
    output lcd_rd,
    inout[15:0] lcd_data_io,
    output lcd_bl_ctr,
    inout ct_int,
    inout ct_sda,
    output ct_scl,
    output ct_rstn
);
//-----{LED显示}begin
    assign led_raddr1 = (input_sel==2'd0);
    assign led_raddr2 = (input_sel==2'd1);
    assign led_waddr  = (input_sel==2'd2);
//-----{LED显示}end

//-----{调用寄存器堆模块}begin
    //寄存器堆多增加一个读端口，用于在触摸屏上显示16个寄存器值
    //位宽均有修改
    reg [7:0] wen;
    reg  [3 :0] raddr1;
    reg  [3 :0] raddr2;
    reg  [3 :0] waddr;
    reg  [63:0] wdata;
    wire [63:0] rdata1;
    wire [63:0] rdata2;
    wire [3 :0] test_addr;
    wire [63:0] test_data;  
    regfile rf_module(
        .clk   (clk   ),
        .wen   (wen   ),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .waddr (waddr ),
        .wdata (wdata ),
        .rdata1(rdata1),
        .rdata2(rdata2),
        .test_addr(test_addr),
        .test_data(test_data)
    );
//-----{调用寄存器堆模块}end

//---------------------{调用触摸屏模块}begin--------------------//
//-----{实例化触摸屏}begin
//此小节不需要更改
    reg         display_valid;
    reg  [39:0] display_name;
    reg  [31:0] display_value;
    wire [5 :0] display_number;
    wire        input_valid;
    wire [31:0] input_value;

    lcd_module lcd_module(
        .clk            (clk           ),   //10Mhz
        .resetn         (resetn        ),

        //调用触摸屏的接口
        .display_valid  (display_valid ),
        .display_name   (display_name  ),
        .display_value  (display_value ),
        .display_number (display_number),
        .input_valid    (input_valid   ),
        .input_value    (input_value   ),

        //lcd触摸屏相关接口，不需要更改
        .lcd_rst        (lcd_rst       ),
        .lcd_cs         (lcd_cs        ),
        .lcd_rs         (lcd_rs        ),
        .lcd_wr         (lcd_wr        ),
        .lcd_rd         (lcd_rd        ),
        .lcd_data_io    (lcd_data_io   ),
        .lcd_bl_ctr     (lcd_bl_ctr    ),
        .ct_int         (ct_int        ),
        .ct_sda         (ct_sda        ),
        .ct_scl         (ct_scl        ),
        .ct_rstn        (ct_rstn       )
    ); 
//-----{实例化触摸屏}end

//-----{从触摸屏获取输入}begin
//根据实际需要输入的数修改此小节，
//建议对每一个数的输入，编写单独一个always块
    //32个寄存器显示在9~40号的显示块，故读地址为（display_number-9）
    assign test_addr = (display_number-5'd13)/2; 
    //当input_sel为2'b00时，表示输入数为读地址1，即raddr1
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            raddr1 <= 4'd0;//修改
        end
        else if (input_valid &&  input_sel==2'd0 && help_sel==1'd0 && wen_sel==1'd0)
        begin
            raddr1 <= input_value[3:0];//修改
        end
    end
    
    //当input_sel为2'b01时，表示输入数为读地址2，即raddr2
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            raddr2 <= 4'd0;//修改
        end
        else if (input_valid && input_sel==2'd1 && help_sel==1'd0 && wen_sel==1'd0)
        begin
            raddr2 <= input_value[3:0];//修改
        end
    end
    
    //当input_sel为2'b10时，表示输入数为写地址，即waddr
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            waddr  <= 4'd0;//修改
        end
        else if (input_valid && input_sel==2'd2 && help_sel==1'd0 && wen_sel==1'd0)
        begin
            waddr  <= input_value[3:0];//修改
        end
    end
    
    //当input_sel为2'b11时，表示输入数为写数据，即wdata的高32位
    always @(posedge clk)
    begin
        if (!resetn)
        begin
            wdata[63:32]  <= 32'd0;//修改
        end
        else if (input_valid && input_sel==2'd3 && help_sel==1'd0 && wen_sel==1'd0)
        begin
            wdata[63:32]  <= input_value; 
        end
      end
        //当help_sel为1'b1时，表示输入数为写数据，即wdata的低32位
      always @(posedge clk)
            begin
                if (!resetn)
                begin
                    wdata[31:0]  <= 32'd0;//修改
                end
                else if (input_valid && help_sel==1'd1 && wen_sel==1'd0)
                begin
                    wdata[31:0]  <= input_value; 
                end
        end
    //当wen_sel为1'd1时，表示输入数为wen
        always @(posedge clk)
        begin
            if (!resetn)
            begin
                wen  <= 8'd0;//修改
            end
            else if (input_valid && help_sel==1'd0 &&wen_sel==1'd1)
            begin
                wen  <= input_value[7:0];//修改
            end
        end  
//-----{从触摸屏获取输入}end

//-----{输出到触摸屏显示}begin
//根据需要显示的数修改此小节，
//触摸屏上共有44块显示区域，可显示44组32位数据
//44块显示区域从1开始编号，编号为1~44，
    always @(posedge clk)
    begin
        if (display_number >6'd12 && display_number <6'd45 )//修改
        begin //块号13~44显示16个通用寄存器的值
            
            if(display_number % 2 == 1)
            begin
            display_valid <= 1'b1;
            display_name[39:16] <= "REG";
            display_name[15: 8] <= {4'b0011,4'b0000};//修改，注意这里要修改为0的ascii码48
            display_name[7 : 0] <= {4'b0011,test_addr[3:0]}; //不需修改，已经是ascii码
            display_value       <= test_data[63:32];
            end
            if (display_number % 2 == 0)
            begin
            display_valid <= 1'b1;
            display_name[39:16] <= "REG";
            display_name[15: 8] <= {4'b0011,4'b0000};//修改，注意这里要修改为0的ascii码48
            display_name[7 : 0] <= {4'b0011,test_addr[3:0]}; //不需修改，已经是ascii码
            display_value       <= test_data[31:0];      
            end  
            end
        else
        begin
            case(display_number)
                6'd1 : //显示读端口的地址
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RADD1";
                    display_value <= raddr1;
                end
                6'd2 : //显示读端口读出的数据
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RDAT1";
                    display_value <= rdata1[63:32];
                end
                6'd3 : //显示读端口读出的数据
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RDAT1";
                    display_value <= rdata1[31:0];
                end
                6'd4 : //显示读端口的地址
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RADD2";
                    display_value <= raddr2;
                end
                6'd5 : //显示读端口读出的数据
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RDAT2";
                    display_value <= rdata2[63:32];
                end
                6'd6 : //显示读端口读出的数据
                begin
                    display_valid <= 1'b1;
                    display_name  <= "RDAT2";
                    display_value <= rdata2[31:0];
                end
                6'd7 : //显示写端口的地址
                begin
                    display_valid <= 1'b1;
                    display_name  <= "WADDR";
                    display_value <= waddr;
                end
                6'd8 : //显示写端口写入的数据
                begin
                    display_valid <= 1'b1;
                    display_name  <= "WDATA";
                    display_value <= wdata[63:32];
                end
                6'd9:
                begin
                    display_valid <= 1'b1;
                    display_name  <= "WDATA";
                    display_value <= wdata[31:0];
                end
                6'd10 : //显示wen
                begin
                    display_valid <= 1'b1;
                    display_name  <= "WEN";
                    display_value <= wen;
                end
                default :
                begin
                    display_valid <= 1'b0;
                    display_name  <= 40'd0;
                    display_value <= 32'd0;
                end
            endcase
        end
    end
//-----{输出到触摸屏显示}end
//----------------------{调用触摸屏模块}end---------------------//
endmodule
