`timescale 1ns / 1ns

module MEM (enable,din_a,wen_a,ren_b,clk_a,clk_b,rst,dout_b,full,empty,place);
  parameter FIFO_WIDTH='d16,
            FIFO_DEPTH='d512;
  input [FIFO_WIDTH-1:0] din_a;
  input wen_a,ren_b,clk_a,clk_b,rst,enable;
  output reg [FIFO_WIDTH-1:0] dout_b;
  output full,empty;
  reg[8:0] wr_ptr,rd_ptr;
  reg[9:0] wr_count,rd_count;
  reg [FIFO_WIDTH-1:0] mem [FIFO_DEPTH-1:0];
  output [8:0] place;
  always @(posedge clk_a)
  begin

    if (rst)
    begin
      wr_ptr <= 0 ;
      wr_count<=0;
    end

    else if ((wen_a==1 && enable==1) && ren_b==0)
    begin

      if(!(wr_ptr == rd_ptr && wr_count != rd_count))
      begin
        mem[wr_ptr]<=din_a;
        wr_ptr<=wr_ptr+1;
        wr_count<=wr_count+1;
      end
    end
  end
  always @(posedge clk_b)
  begin
    if (rst)
    begin
      dout_b <= 0;
      rd_ptr <= 0;
      rd_count<=0;
    end
    else if ((ren_b==1 && wen_a==0) && enable==1)
    begin
      if(!(wr_ptr == rd_ptr && wr_count == rd_count))
      begin
        dout_b<=mem[rd_ptr];
        rd_ptr<=rd_ptr+1;
        rd_count<=rd_count+1;
      end
    end
  end
  assign full = (wr_ptr == rd_ptr && wr_count != rd_count)?1:0;
  assign empty = (wr_ptr == rd_ptr && wr_count == rd_count)?1:0;
  assign place=wr_ptr;
endmodule
