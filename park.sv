`timescale 1ns / 1ns
module Park_Sys (clk,rst_n,sen_in,sen_out,password,EXIT,Re_Enter,place_in,Green_LED,Red_LED);
  parameter IDLE = 3'b000,
            WAIT_PASSWORD = 3'b001,
            CHK_PASS=3'b010,
            RIGHT_PASS = 3'b011,
            WRONG_PASS = 3'b100,
            PLACING = 3'b101;

  input  clk,rst_n,sen_in,sen_out,EXIT,Re_Enter;
  input  [4:0] password;
  output reg Green_LED,Red_LED;
  output   [8:0] place_in;
  wire full,empty;
  reg enable,BUF;
  wire [15:0] place_out;

  MEM M0 (enable,16'hFFFF,sen_in,sen_out,clk,clk,~rst_n,place_out,full,empty,place_in);

  reg Right,Wrong;
  reg [2:0] cs,ns;


  always @(posedge clk)
  begin
    if(~rst_n )
      cs <= IDLE ;
    else
      cs <= ns;
  end

  always@(posedge clk)
  begin


    if(cs==IDLE)
    begin
      if(sen_in==1'b1 && sen_out==1'b1)
        ns<=IDLE;
      else if (sen_in==1'b0 && sen_out==1'b0)
        ns<=IDLE;
      else if(sen_in==1'b0 && sen_out==1'b1 && empty==1'b0)
        ns <= WAIT_PASSWORD;
      else if(sen_in==1'b1 && sen_out==1'b0 && full==1'b0)
        ns <= WAIT_PASSWORD;
      else
        ns<=IDLE;
    end

    else if(cs==WAIT_PASSWORD)
    begin
      ns<=CHK_PASS;
    end

    else if (cs==CHK_PASS)
    begin
      if(Wrong==1'b0 && Right==1'b1)
        ns<=RIGHT_PASS;
      else if(Wrong==1'b1 && Right==1'b0)
        ns<=WRONG_PASS;
      else
        ns<= CHK_PASS;
    end

    else if(cs==WRONG_PASS)
    begin
      ns<= WAIT_PASSWORD;
    end

    else if(cs==RIGHT_PASS)
    begin
      if(sen_in==1'b0 && sen_out==1'b1 )
        ns<=IDLE;
      else if(sen_in==1'b1 && sen_out==1'b0 )
        ns<=PLACING;
      else
        ns<= IDLE;
    end

    else if(cs==PLACING)
    begin
      if(EXIT==1'b1)
        ns<=IDLE;
      else
        ns<=IDLE;
    end

    else
    begin
      ns<=IDLE;
    end

  end

  always@(posedge clk)
  begin

    if(cs==IDLE)
    begin
      Wrong <=1'b0;
      Right <=1'b0;
      Green_LED <= 1'b0;
      Red_LED <= 1'b0;
      enable<=0;

    end

    else if(cs==WAIT_PASSWORD)
    begin

      Green_LED<=1'b0;
      Red_LED<=1'b0;
    end

    else if(cs==CHK_PASS)
    begin
      if(password==5'b10101)
      begin
        Right<=1'b1;
        Wrong<=1'b0;
        Green_LED <= 1'b1;
        Red_LED <= 1'b0;

      end
      else if(password != 5'b10101)
      begin
        Right<=1'b0;
        Wrong<=1'b1;
        Red_LED <= 1'b1;
        Green_LED <= 1'b0;

      end

      if(ns==RIGHT_PASS && (sen_in==0 && sen_out==1))
      begin
        BUF=1;
        enable=BUF;
      end

    end

    else if(cs== RIGHT_PASS)
    begin

      if(sen_in==1'b0 && sen_out==1'b1 )
      begin
        Red_LED<=1'b1;
        Green_LED<=1'b1;
      end

      if(ns==PLACING)
      begin
        BUF=1;
        enable=BUF;
      end

    end

    else if(cs==WRONG_PASS)
    begin

      Green_LED<=1'b0;
      Red_LED<=1'b0;

    end

    else if(cs==PLACING && EXIT==1'b1)
    begin
      enable<=0;
      Green_LED <= 1'b1;
      Red_LED <= 1'b0;
    end

    else
    begin
      enable<=0;
      Green_LED <= 1'b0;
      Red_LED <= 1'b0;
      Wrong <= 1'b0;
      Right <= 1'b0;
    end

  end
endmodule
