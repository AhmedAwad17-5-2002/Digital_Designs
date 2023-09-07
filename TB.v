`timescale 1ns / 1ns

module TB ();
reg clk,rst_n,sen_in,sen_out,EXIT,Re_Enter;
reg  [4:0] password;
wire Green_LED,Red_LED;
wire [8:0] place_in;

Park_Sys M1 (clk,rst_n,sen_in,sen_out,password,EXIT,Re_Enter,place_in,Green_LED,Red_LED);

initial begin
    clk=0;
    forever 
    #1 clk = ~clk;

end

initial begin
  rst_n = 0;
    sen_in = 1;
  sen_out = 0;
  #8;

rst_n=1;
#2;
  password=5'b10101;
  EXIT=1;
 #12;

 sen_in = 1;
 sen_out = 0;
 password=5'b10101;
 EXIT=1;
#16;

 sen_in = 0;
 sen_out = 1;
 password=5'b10101;
 EXIT=1;
#6;

 #2;
 sen_in = 1;
 sen_out = 0;
 password=5'b11101;
 EXIT=1;
#14;
 password=5'b10101;
 EXIT=1;
 #6;

 #2;
  $stop;

end
endmodule