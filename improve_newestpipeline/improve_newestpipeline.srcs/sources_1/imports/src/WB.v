`timescale 1ns / 1ps
//*************************************************************************
//   > 文件�?: WB.v
//   > 描述  :五级流水CPU的写回模�?
//   > 作�??  : TernenceCao
//   > 日期  : 2021-06-12
//*************************************************************************
`define EXC_ENTER_ADDR 32'd0     // Excption入口地址�?
                                 // 此处实现的Exception只有SYSCALL
module wb(                       // 写回�?
    input          WB_valid,     // 写回级有�?
    input  [118:0] MEM_WB_bus_r, // MEM->WB总线
    output         rf_wen,       // 寄存器写使能
    output [  4:0] rf_wdest,     // 寄存器写地址
    output [ 31:0] rf_wdata,     // 寄存器写数据
    output         WB_over,      // WB模块执行完成
    
    

     //5级流水新增接�?
     input             clk,       // 时钟
    input             resetn,    // 复位信号，低电平有效
     output [ 32:0] exc_bus,      // Exception pc总线
     output [  4:0] WB_wdest,     // WB级要写回寄存器堆的目标地�?�?
     output         cancel,       // syscall和eret到达写回级时会发出cancel信号�?
                                  // 取消已经取出的正在其他流水级执行的指�?
                                  
     //旁路新增
     output [ 31:0] WB_rs_value,
     output         WB_bypass_en,
 
     //展示PC和HI/LO�?
     output [ 31:0] WB_pc,
     output [ 31:0] HI_data,
     output [ 31:0] LO_data,
     //�¼�
     input [31:0]   pc_new
);
//-----{MEM->WB总线}begin    
    //MEM传来的result
    wire [31:0] mem_result;
    //HI/LO数据
    wire [31:0] lo_result;
    wire        hi_write;
    wire        lo_write;
    
    //寄存器堆写使能和写地�?
    wire wen;
    wire [4:0] wdest;
    
    //写回�?要用到的信息
    wire mfhi;
    wire mflo;
    wire mtc0;
    wire mfc0;
    wire [7 :0] cp0r_addr;
    wire       syscall;   //syscall和eret在写回级有特殊的操作 
    wire       eret;
    wire       data_related_en;
    
    //pc
    wire [31:0] pc;    
    assign {wen,
            wdest,
            data_related_en,
            mem_result,
            lo_result,
            hi_write,
            lo_write,
            mfhi,
            mflo,
            mtc0,
            mfc0,
            cp0r_addr,
            syscall,
            eret,
            pc} = MEM_WB_bus_r;
//-----{MEM->WB总线}end

//-----{HI/LO寄存器}begin
    //HI用于存放乘法结果的高32�?
    //LO用于存放乘法结果的低32�?
    reg [31:0] hi;
    reg [31:0] lo;
    
    //要写入HI的数据存放在mem_result�?
    always @(posedge clk)
    begin
        if (hi_write)
        begin
            hi <= mem_result;
        end
    end
    //要写入LO的数据存放在lo_result�?
    always @(posedge clk)
    begin
        if (lo_write)
        begin
            lo <= lo_result;
        end
    end
//-----{HI/LO寄存器}end

//-----{cp0寄存器}begin
// cp0寄存器即是协处理�?0寄存�?
// 由于目前设计的CPU并不完备，所用到的cp0寄存器也很少
// 故暂时只实现STATUS(12.0),CAUSE(13.0),EPC(14.0)这三�?
// 每个CP0寄存器都是使�?5位的cp0�?
   wire [31:0] cp0r_status;
   wire [31:0] cp0r_cause;
   wire [31:0] cp0r_epc;
   
   //写使�?
   wire status_wen;
   //wire cause_wen;
   wire epc_wen;
   assign status_wen = mtc0 & (cp0r_addr=={5'd12,3'd0});
   assign epc_wen    = mtc0 & (cp0r_addr=={5'd14,3'd0});
   
   //cp0寄存器读
   wire [31:0] cp0r_rdata;
   assign cp0r_rdata = (cp0r_addr=={5'd12,3'd0}) ? cp0r_status :
                       (cp0r_addr=={5'd13,3'd0}) ? cp0r_cause  :
                       (cp0r_addr=={5'd14,3'd0}) ? cp0r_epc : 32'd0;
   
   //STATUS寄存�?
   //目前只实现STATUS[1]位，即EXL�?
   //EXL域为软件可读写，故需要statu_wen
   reg status_exl_r;
   assign cp0r_status = {30'd0,status_exl_r,1'b0};
   always @(posedge clk)
   begin
       if (!resetn || eret)
       begin
           status_exl_r <= 1'b0;
       end
       else if (syscall)
       begin
           status_exl_r <= 1'b1;
       end
       else if (status_wen)
       begin
           status_exl_r <= mem_result[1];
       end
   end
   
   //CAUSE寄存�?
   //目前只实现CAUSE[6:2]位，即ExcCode�?,存放Exception编码
   //ExcCode域为软件只读，不可写，故不需要cause_wen
   reg [4:0] cause_exc_code_r;
   assign cp0r_cause = {25'd0,cause_exc_code_r,2'd0};
   always @(posedge clk)
   begin
       if (syscall)
       begin
           cause_exc_code_r <= 5'd8;
       end
   end
   
   //EPC寄存�?
   //存放产生例外的地�?
   //EPC整个域为软件可读写的，故�?要epc_wen
   reg [31:0] epc_r;
   assign cp0r_epc = epc_r;
   
   
   //�¼�
   reg [31:0] tmp1;
   reg [31:0] tmp2;
   
   
   always @(posedge clk)
   begin
       if (syscall)
       begin
       tmp1<=pc_new;
       tmp2<=tmp1;
       epc_r<=tmp2;
           //epc_r <= pc;
       end
       else if (epc_wen)
       begin
           epc_r <= mem_result;
       end
   end
   
   //syscall和eret发出的cancel信号
   assign cancel = (syscall | eret) & WB_over;
//-----{cp0寄存器}begin

//-----{WB执行完成}begin
    //WB模块�?有操作都可在�?拍内完成
    //故WB_valid即是WB_over信号
    assign WB_over = WB_valid;
//-----{WB执行完成}end

//-----{WB->regfile信号}begin
    assign rf_wen   = wen & WB_over;
    assign rf_wdest = wdest;
    assign rf_wdata = mfhi ? hi :
                      mflo ? lo :
                      mfc0 ? cp0r_rdata : mem_result;
//-----{WB->regfile信号}end

//-----{Exception pc信号}begin
    wire        exc_valid;
    wire [31:0] exc_pc;
    assign exc_valid = (syscall | eret) & WB_valid;
    //eret返回地址为EPC寄存器的�?
    //SYSCALL的excPC应该为{EBASE[31:10],10'h180},
    //但作为实验，先设置EXC_ENTER_ADDR�?0，方便测试程序的编写
    assign exc_pc = syscall ? `EXC_ENTER_ADDR : cp0r_epc;
    
    assign exc_bus = {exc_valid,exc_pc};
//-----{Exception pc信号}end

//-----{WB模块的dest值}begin
   //只有在WB模块有效时，其写回目的寄存器号才有意�?
    assign WB_wdest = rf_wdest & {5{WB_valid}};
//-----{WB模块的dest值}end

//-----{展示WB模块的PC值和HI/LO寄存器的值}begin
    assign WB_pc = pc;
    assign HI_data = hi;
    assign LO_data = lo;
    assign WB_bypass_en = data_related_en;
//-----{展示WB模块的PC值和HI/LO寄存器的值}end
endmodule
