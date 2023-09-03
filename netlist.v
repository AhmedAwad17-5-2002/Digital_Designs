// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep  3 17:12:32 2023
// Host        : Ahmed running 64-bit major release  (build 9200)
// Command     : write_verilog -force netlist.v
// Design      : Park_Sys
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MEM
   (Q,
    \ns_reg[0] ,
    rst_n_IBUF,
    Wrong,
    Right,
    \cs_reg[0] ,
    cs,
    enable,
    sen_out_IBUF,
    sen_in_IBUF,
    clk_IBUF_BUFG);
  output [8:0]Q;
  output \ns_reg[0] ;
  input rst_n_IBUF;
  input Wrong;
  input Right;
  input \cs_reg[0] ;
  input [2:0]cs;
  input enable;
  input sen_out_IBUF;
  input sen_in_IBUF;
  input clk_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]Q;
  wire Right;
  wire Wrong;
  wire clk_IBUF_BUFG;
  wire [2:0]cs;
  wire \cs_reg[0] ;
  wire dout_b2;
  wire enable;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire \ns[0]_i_3_n_0 ;
  wire \ns_reg[0] ;
  wire [9:1]p_0_in;
  wire [9:0]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [8:1]p_0_in__2;
  wire \rd_count[0]_i_1_n_0 ;
  wire \rd_count[2]_i_1_n_0 ;
  wire \rd_count[5]_i_1_n_0 ;
  wire \rd_count[9]_i_1_n_0 ;
  wire \rd_count[9]_i_2_n_0 ;
  wire \rd_count[9]_i_5_n_0 ;
  wire \rd_count[9]_i_6_n_0 ;
  wire \rd_count[9]_i_7_n_0 ;
  wire \rd_count[9]_i_8_n_0 ;
  wire \rd_count[9]_i_9_n_0 ;
  wire \rd_count_reg[9]_i_4_n_1 ;
  wire \rd_count_reg[9]_i_4_n_2 ;
  wire \rd_count_reg[9]_i_4_n_3 ;
  wire [9:0]rd_count_reg__0;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire \rd_ptr[8]_i_2_n_0 ;
  wire [8:0]rd_ptr_reg__0;
  wire rst_n_IBUF;
  wire sen_in_IBUF;
  wire sen_out_IBUF;
  wire \wr_count[9]_i_1_n_0 ;
  wire \wr_count[9]_i_4_n_0 ;
  wire \wr_count[9]_i_5_n_0 ;
  wire \wr_count[9]_i_6_n_0 ;
  wire \wr_count[9]_i_7_n_0 ;
  wire \wr_count[9]_i_8_n_0 ;
  wire \wr_count_reg[9]_i_3_n_1 ;
  wire \wr_count_reg[9]_i_3_n_2 ;
  wire \wr_count_reg[9]_i_3_n_3 ;
  wire [9:0]wr_count_reg__0;
  wire wr_ptr2;
  wire wr_ptr20_in;
  wire \wr_ptr2_inferred__0/i__carry_n_2 ;
  wire \wr_ptr2_inferred__0/i__carry_n_3 ;
  wire \wr_ptr[2]_i_1_n_0 ;
  wire \wr_ptr[5]_i_1_n_0 ;
  wire \wr_ptr[8]_i_2_n_0 ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(Q[6]),
        .I1(rd_ptr_reg__0[6]),
        .I2(Q[7]),
        .I3(rd_ptr_reg__0[7]),
        .I4(rd_ptr_reg__0[8]),
        .I5(Q[8]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(rd_ptr_reg__0[5]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(rd_ptr_reg__0[3]),
        .I4(Q[4]),
        .I5(rd_ptr_reg__0[4]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(rd_ptr_reg__0[2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(rd_ptr_reg__0[0]),
        .I4(Q[1]),
        .I5(rd_ptr_reg__0[1]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0404040FF)) 
    \ns[0]_i_1 
       (.I0(Wrong),
        .I1(Right),
        .I2(\cs_reg[0] ),
        .I3(\ns[0]_i_3_n_0 ),
        .I4(cs[1]),
        .I5(cs[0]),
        .O(\ns_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000EFE3C3C3)) 
    \ns[0]_i_3 
       (.I0(dout_b2),
        .I1(sen_in_IBUF),
        .I2(sen_out_IBUF),
        .I3(wr_ptr20_in),
        .I4(wr_ptr2),
        .I5(cs[2]),
        .O(\ns[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_count[0]_i_1 
       (.I0(rd_count_reg__0[0]),
        .O(\rd_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_count[1]_i_1 
       (.I0(rd_count_reg__0[0]),
        .I1(rd_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_count[2]_i_1 
       (.I0(rd_count_reg__0[2]),
        .I1(rd_count_reg__0[1]),
        .I2(rd_count_reg__0[0]),
        .O(\rd_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_count[3]_i_1 
       (.I0(rd_count_reg__0[3]),
        .I1(rd_count_reg__0[1]),
        .I2(rd_count_reg__0[0]),
        .I3(rd_count_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_count[4]_i_1 
       (.I0(rd_count_reg__0[4]),
        .I1(rd_count_reg__0[2]),
        .I2(rd_count_reg__0[0]),
        .I3(rd_count_reg__0[1]),
        .I4(rd_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_count[5]_i_1 
       (.I0(rd_count_reg__0[5]),
        .I1(rd_count_reg__0[4]),
        .I2(rd_count_reg__0[2]),
        .I3(rd_count_reg__0[0]),
        .I4(rd_count_reg__0[1]),
        .I5(rd_count_reg__0[3]),
        .O(\rd_count[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \rd_count[6]_i_1 
       (.I0(rd_count_reg__0[6]),
        .I1(\rd_count[9]_i_5_n_0 ),
        .I2(rd_count_reg__0[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \rd_count[7]_i_1 
       (.I0(rd_count_reg__0[7]),
        .I1(rd_count_reg__0[5]),
        .I2(\rd_count[9]_i_5_n_0 ),
        .I3(rd_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \rd_count[8]_i_1 
       (.I0(rd_count_reg__0[8]),
        .I1(rd_count_reg__0[6]),
        .I2(\rd_count[9]_i_5_n_0 ),
        .I3(rd_count_reg__0[5]),
        .I4(rd_count_reg__0[7]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_count[9]_i_1 
       (.I0(rst_n_IBUF),
        .O(\rd_count[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00202020)) 
    \rd_count[9]_i_2 
       (.I0(enable),
        .I1(sen_in_IBUF),
        .I2(sen_out_IBUF),
        .I3(wr_ptr2),
        .I4(dout_b2),
        .O(\rd_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \rd_count[9]_i_3 
       (.I0(rd_count_reg__0[9]),
        .I1(rd_count_reg__0[8]),
        .I2(rd_count_reg__0[7]),
        .I3(rd_count_reg__0[5]),
        .I4(\rd_count[9]_i_5_n_0 ),
        .I5(rd_count_reg__0[6]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rd_count[9]_i_5 
       (.I0(rd_count_reg__0[3]),
        .I1(rd_count_reg__0[1]),
        .I2(rd_count_reg__0[0]),
        .I3(rd_count_reg__0[2]),
        .I4(rd_count_reg__0[4]),
        .O(\rd_count[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rd_count[9]_i_6 
       (.I0(rd_count_reg__0[9]),
        .I1(wr_count_reg__0[9]),
        .O(\rd_count[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rd_count[9]_i_7 
       (.I0(wr_count_reg__0[8]),
        .I1(rd_count_reg__0[8]),
        .I2(rd_count_reg__0[6]),
        .I3(wr_count_reg__0[6]),
        .I4(rd_count_reg__0[7]),
        .I5(wr_count_reg__0[7]),
        .O(\rd_count[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rd_count[9]_i_8 
       (.I0(wr_count_reg__0[5]),
        .I1(rd_count_reg__0[5]),
        .I2(rd_count_reg__0[3]),
        .I3(wr_count_reg__0[3]),
        .I4(rd_count_reg__0[4]),
        .I5(wr_count_reg__0[4]),
        .O(\rd_count[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rd_count[9]_i_9 
       (.I0(wr_count_reg__0[2]),
        .I1(rd_count_reg__0[2]),
        .I2(rd_count_reg__0[1]),
        .I3(wr_count_reg__0[1]),
        .I4(rd_count_reg__0[0]),
        .I5(wr_count_reg__0[0]),
        .O(\rd_count[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(\rd_count[0]_i_1_n_0 ),
        .Q(rd_count_reg__0[0]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(rd_count_reg__0[1]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(\rd_count[2]_i_1_n_0 ),
        .Q(rd_count_reg__0[2]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(rd_count_reg__0[3]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(rd_count_reg__0[4]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(\rd_count[5]_i_1_n_0 ),
        .Q(rd_count_reg__0[5]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(rd_count_reg__0[6]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(rd_count_reg__0[7]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(rd_count_reg__0[8]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(rd_count_reg__0[9]),
        .R(\rd_count[9]_i_1_n_0 ));
  CARRY4 \rd_count_reg[9]_i_4 
       (.CI(\<const0> ),
        .CO({dout_b2,\rd_count_reg[9]_i_4_n_1 ,\rd_count_reg[9]_i_4_n_2 ,\rd_count_reg[9]_i_4_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\rd_count[9]_i_6_n_0 ,\rd_count[9]_i_7_n_0 ,\rd_count[9]_i_8_n_0 ,\rd_count[9]_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .O(\rd_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr_reg__0[0]),
        .I1(rd_ptr_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[2]_i_1 
       (.I0(rd_ptr_reg__0[2]),
        .I1(rd_ptr_reg__0[0]),
        .I2(rd_ptr_reg__0[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr_reg__0[3]),
        .I1(rd_ptr_reg__0[1]),
        .I2(rd_ptr_reg__0[0]),
        .I3(rd_ptr_reg__0[2]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[4]_i_1 
       (.I0(rd_ptr_reg__0[2]),
        .I1(rd_ptr_reg__0[0]),
        .I2(rd_ptr_reg__0[1]),
        .I3(rd_ptr_reg__0[3]),
        .I4(rd_ptr_reg__0[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rd_ptr[5]_i_1 
       (.I0(rd_ptr_reg__0[5]),
        .I1(rd_ptr_reg__0[2]),
        .I2(rd_ptr_reg__0[0]),
        .I3(rd_ptr_reg__0[1]),
        .I4(rd_ptr_reg__0[3]),
        .I5(rd_ptr_reg__0[4]),
        .O(p_0_in__2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_ptr[6]_i_1 
       (.I0(rd_ptr_reg__0[6]),
        .I1(\rd_ptr[8]_i_2_n_0 ),
        .I2(rd_ptr_reg__0[5]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_ptr[7]_i_1 
       (.I0(rd_ptr_reg__0[7]),
        .I1(rd_ptr_reg__0[5]),
        .I2(\rd_ptr[8]_i_2_n_0 ),
        .I3(rd_ptr_reg__0[6]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_ptr[8]_i_1 
       (.I0(rd_ptr_reg__0[8]),
        .I1(rd_ptr_reg__0[6]),
        .I2(\rd_ptr[8]_i_2_n_0 ),
        .I3(rd_ptr_reg__0[5]),
        .I4(rd_ptr_reg__0[7]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rd_ptr[8]_i_2 
       (.I0(rd_ptr_reg__0[4]),
        .I1(rd_ptr_reg__0[3]),
        .I2(rd_ptr_reg__0[1]),
        .I3(rd_ptr_reg__0[0]),
        .I4(rd_ptr_reg__0[2]),
        .O(\rd_ptr[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr_reg__0[0]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[1]),
        .Q(rd_ptr_reg__0[1]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(rd_ptr_reg__0[2]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[3]),
        .Q(rd_ptr_reg__0[3]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[4]),
        .Q(rd_ptr_reg__0[4]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[5]),
        .Q(rd_ptr_reg__0[5]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[6]),
        .Q(rd_ptr_reg__0[6]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[7]),
        .Q(rd_ptr_reg__0[7]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\rd_count[9]_i_2_n_0 ),
        .D(p_0_in__2[8]),
        .Q(rd_ptr_reg__0[8]),
        .R(\rd_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_count[0]_i_1 
       (.I0(wr_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_count[1]_i_1 
       (.I0(wr_count_reg__0[1]),
        .I1(wr_count_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_count[2]_i_1 
       (.I0(wr_count_reg__0[2]),
        .I1(wr_count_reg__0[1]),
        .I2(wr_count_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_count[3]_i_1 
       (.I0(wr_count_reg__0[3]),
        .I1(wr_count_reg__0[0]),
        .I2(wr_count_reg__0[1]),
        .I3(wr_count_reg__0[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_count[4]_i_1 
       (.I0(wr_count_reg__0[2]),
        .I1(wr_count_reg__0[1]),
        .I2(wr_count_reg__0[0]),
        .I3(wr_count_reg__0[3]),
        .I4(wr_count_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_count[5]_i_1 
       (.I0(wr_count_reg__0[5]),
        .I1(wr_count_reg__0[2]),
        .I2(wr_count_reg__0[1]),
        .I3(wr_count_reg__0[0]),
        .I4(wr_count_reg__0[3]),
        .I5(wr_count_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_count[6]_i_1 
       (.I0(wr_count_reg__0[6]),
        .I1(\wr_count[9]_i_4_n_0 ),
        .I2(wr_count_reg__0[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_count[7]_i_1 
       (.I0(wr_count_reg__0[7]),
        .I1(wr_count_reg__0[5]),
        .I2(\wr_count[9]_i_4_n_0 ),
        .I3(wr_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_count[8]_i_1 
       (.I0(wr_count_reg__0[8]),
        .I1(wr_count_reg__0[6]),
        .I2(\wr_count[9]_i_4_n_0 ),
        .I3(wr_count_reg__0[5]),
        .I4(wr_count_reg__0[7]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'h002A0000)) 
    \wr_count[9]_i_1 
       (.I0(enable),
        .I1(wr_ptr2),
        .I2(wr_ptr20_in),
        .I3(sen_out_IBUF),
        .I4(sen_in_IBUF),
        .O(\wr_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_count[9]_i_2 
       (.I0(wr_count_reg__0[9]),
        .I1(wr_count_reg__0[7]),
        .I2(wr_count_reg__0[5]),
        .I3(\wr_count[9]_i_4_n_0 ),
        .I4(wr_count_reg__0[6]),
        .I5(wr_count_reg__0[8]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wr_count[9]_i_4 
       (.I0(wr_count_reg__0[4]),
        .I1(wr_count_reg__0[3]),
        .I2(wr_count_reg__0[0]),
        .I3(wr_count_reg__0[1]),
        .I4(wr_count_reg__0[2]),
        .O(\wr_count[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_count[9]_i_5 
       (.I0(rd_count_reg__0[9]),
        .I1(wr_count_reg__0[9]),
        .O(\wr_count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \wr_count[9]_i_6 
       (.I0(wr_count_reg__0[8]),
        .I1(rd_count_reg__0[8]),
        .I2(rd_count_reg__0[6]),
        .I3(wr_count_reg__0[6]),
        .I4(rd_count_reg__0[7]),
        .I5(wr_count_reg__0[7]),
        .O(\wr_count[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \wr_count[9]_i_7 
       (.I0(wr_count_reg__0[5]),
        .I1(rd_count_reg__0[5]),
        .I2(rd_count_reg__0[3]),
        .I3(wr_count_reg__0[3]),
        .I4(rd_count_reg__0[4]),
        .I5(wr_count_reg__0[4]),
        .O(\wr_count[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \wr_count[9]_i_8 
       (.I0(wr_count_reg__0[2]),
        .I1(rd_count_reg__0[2]),
        .I2(rd_count_reg__0[1]),
        .I3(wr_count_reg__0[1]),
        .I4(rd_count_reg__0[0]),
        .I5(wr_count_reg__0[0]),
        .O(\wr_count[9]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(wr_count_reg__0[0]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(wr_count_reg__0[1]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(wr_count_reg__0[2]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(wr_count_reg__0[3]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(wr_count_reg__0[4]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(wr_count_reg__0[5]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(wr_count_reg__0[6]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(wr_count_reg__0[7]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(wr_count_reg__0[8]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(wr_count_reg__0[9]),
        .R(\rd_count[9]_i_1_n_0 ));
  CARRY4 \wr_count_reg[9]_i_3 
       (.CI(\<const0> ),
        .CO({wr_ptr20_in,\wr_count_reg[9]_i_3_n_1 ,\wr_count_reg[9]_i_3_n_2 ,\wr_count_reg[9]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .S({\wr_count[9]_i_5_n_0 ,\wr_count[9]_i_6_n_0 ,\wr_count[9]_i_7_n_0 ,\wr_count[9]_i_8_n_0 }));
  CARRY4 \wr_ptr2_inferred__0/i__carry 
       (.CI(\<const0> ),
        .CO({wr_ptr2,\wr_ptr2_inferred__0/i__carry_n_2 ,\wr_ptr2_inferred__0/i__carry_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_ptr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\wr_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_ptr[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_ptr[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_ptr[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\wr_ptr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \wr_ptr[6]_i_1 
       (.I0(Q[6]),
        .I1(\wr_ptr[8]_i_2_n_0 ),
        .I2(Q[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \wr_ptr[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\wr_ptr[8]_i_2_n_0 ),
        .I3(Q[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \wr_ptr[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\wr_ptr[8]_i_2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wr_ptr[8]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\wr_ptr[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(Q[0]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(Q[1]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(\wr_ptr[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[3]),
        .Q(Q[3]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(Q[4]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(\wr_ptr[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(Q[6]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(Q[7]),
        .R(\rd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\wr_count[9]_i_1_n_0 ),
        .D(p_0_in__1[8]),
        .Q(Q[8]),
        .R(\rd_count[9]_i_1_n_0 ));
endmodule

(* CHK_PASS = "3'b010" *) (* IDLE = "3'b000" *) (* PLACING = "3'b101" *) 
(* RIGHT_PASS = "3'b011" *) (* WAIT_PASSWORD = "3'b001" *) (* WRONG_PASS = "3'b100" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module Park_Sys
   (clk,
    rst_n,
    sen_in,
    sen_out,
    password,
    EXIT,
    Re_Enter,
    place_in,
    Green_LED,
    Red_LED);
  input clk;
  input rst_n;
  input sen_in;
  input sen_out;
  input [4:0]password;
  input EXIT;
  input Re_Enter;
  output [8:0]place_in;
  output Green_LED;
  output Red_LED;

  wire \<const0> ;
  wire \<const1> ;
  wire EXIT;
  wire EXIT_IBUF;
  wire Green_LED;
  wire Green_LED_OBUF;
  wire Green_LED_i_1_n_0;
  wire Green_LED_i_2_n_0;
  wire Green_LED_i_3_n_0;
  wire Green_LED_i_4_n_0;
  wire Green_LED_i_5_n_0;
  wire M0_n_9;
  wire Red_LED;
  wire Red_LED_OBUF;
  wire Red_LED_i_1_n_0;
  wire Red_LED_i_2_n_0;
  wire Red_LED_i_3_n_0;
  wire Right;
  wire Right_i_1_n_0;
  wire Wrong;
  wire Wrong_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cs;
  wire \cs[0]_i_1_n_0 ;
  wire \cs[1]_i_1_n_0 ;
  wire \cs[2]_i_1_n_0 ;
  wire enable;
  wire enable_i_1_n_0;
  wire enable_i_2_n_0;
  wire enable_i_3_n_0;
  wire \ns[0]_i_2_n_0 ;
  wire \ns[1]_i_1_n_0 ;
  wire \ns[2]_i_1_n_0 ;
  wire \ns[2]_i_2_n_0 ;
  wire \ns_reg_n_0_[0] ;
  wire \ns_reg_n_0_[1] ;
  wire \ns_reg_n_0_[2] ;
  wire [4:0]password;
  wire [4:0]password_IBUF;
  wire [8:0]place_in;
  wire [8:0]place_in_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire sen_in;
  wire sen_in_IBUF;
  wire sen_out;
  wire sen_out_IBUF;

  IBUF EXIT_IBUF_inst
       (.I(EXIT),
        .O(EXIT_IBUF));
  GND GND
       (.G(\<const0> ));
  OBUF Green_LED_OBUF_inst
       (.I(Green_LED_OBUF),
        .O(Green_LED));
  LUT2 #(
    .INIT(4'h1)) 
    Green_LED_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .O(Green_LED_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF4FFFFF)) 
    Green_LED_i_2
       (.I0(sen_in_IBUF),
        .I1(sen_out_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(Green_LED_i_2_n_0));
  LUT6 #(
    .INIT(64'h300400043C040C04)) 
    Green_LED_i_3
       (.I0(Green_LED_i_4_n_0),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(EXIT_IBUF),
        .I5(Green_LED_i_5_n_0),
        .O(Green_LED_i_3_n_0));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    Green_LED_i_4
       (.I0(password_IBUF[1]),
        .I1(password_IBUF[3]),
        .I2(password_IBUF[0]),
        .I3(password_IBUF[2]),
        .I4(password_IBUF[4]),
        .O(Green_LED_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    Green_LED_i_5
       (.I0(sen_in_IBUF),
        .I1(sen_out_IBUF),
        .O(Green_LED_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Green_LED_reg
       (.C(clk_IBUF_BUFG),
        .CE(Green_LED_i_2_n_0),
        .D(Green_LED_i_3_n_0),
        .Q(Green_LED_OBUF),
        .R(Green_LED_i_1_n_0));
  MEM M0
       (.Q(place_in_OBUF),
        .Right(Right),
        .Wrong(Wrong),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs(cs),
        .\cs_reg[0] (\ns[0]_i_2_n_0 ),
        .enable(enable),
        .\ns_reg[0] (M0_n_9),
        .rst_n_IBUF(rst_n_IBUF),
        .sen_in_IBUF(sen_in_IBUF),
        .sen_out_IBUF(sen_out_IBUF));
  OBUF Red_LED_OBUF_inst
       (.I(Red_LED_OBUF),
        .O(Red_LED));
  LUT4 #(
    .INIT(16'h001F)) 
    Red_LED_i_1
       (.I0(cs[0]),
        .I1(Green_LED_i_4_n_0),
        .I2(cs[1]),
        .I3(cs[2]),
        .O(Red_LED_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF2E22FFFFFFFF)) 
    Red_LED_i_2
       (.I0(Green_LED_i_4_n_0),
        .I1(cs[0]),
        .I2(sen_in_IBUF),
        .I3(sen_out_IBUF),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(Red_LED_i_2_n_0));
  LUT6 #(
    .INIT(64'h00002E2200000000)) 
    Red_LED_i_3
       (.I0(Green_LED_i_4_n_0),
        .I1(cs[0]),
        .I2(sen_in_IBUF),
        .I3(sen_out_IBUF),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(Red_LED_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Red_LED_reg
       (.C(clk_IBUF_BUFG),
        .CE(Red_LED_i_2_n_0),
        .D(Red_LED_i_3_n_0),
        .Q(Red_LED_OBUF),
        .R(Red_LED_i_1_n_0));
  LUT6 #(
    .INIT(64'h00AA000F88AAAA00)) 
    Right_i_1
       (.I0(Right),
        .I1(EXIT_IBUF),
        .I2(Green_LED_i_4_n_0),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(Right_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Right_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(Right_i_1_n_0),
        .Q(Right),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h00008C8CCFC0C0C0)) 
    Wrong_i_1
       (.I0(EXIT_IBUF),
        .I1(Wrong),
        .I2(cs[0]),
        .I3(Green_LED_i_4_n_0),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(Wrong_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Wrong_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(Wrong_i_1_n_0),
        .Q(Wrong),
        .R(\<const0> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \cs[0]_i_1 
       (.I0(\ns_reg_n_0_[0] ),
        .I1(rst_n_IBUF),
        .O(\cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cs[1]_i_1 
       (.I0(\ns_reg_n_0_[1] ),
        .I1(rst_n_IBUF),
        .O(\cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cs[2]_i_1 
       (.I0(\ns_reg_n_0_[2] ),
        .I1(rst_n_IBUF),
        .O(\cs[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cs[1]_i_1_n_0 ),
        .Q(cs[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\cs[2]_i_1_n_0 ),
        .Q(cs[2]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0F52FFFE0F520002)) 
    enable_i_1
       (.I0(cs[1]),
        .I1(enable_i_2_n_0),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(enable_i_3_n_0),
        .I5(enable),
        .O(enable_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    enable_i_2
       (.I0(\ns_reg_n_0_[0] ),
        .I1(\ns_reg_n_0_[2] ),
        .I2(\ns_reg_n_0_[1] ),
        .I3(sen_out_IBUF),
        .I4(sen_in_IBUF),
        .O(enable_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAA5555)) 
    enable_i_3
       (.I0(cs[2]),
        .I1(\ns_reg_n_0_[2] ),
        .I2(\ns_reg_n_0_[1] ),
        .I3(\ns_reg_n_0_[0] ),
        .I4(cs[1]),
        .I5(cs[0]),
        .O(enable_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(enable_i_1_n_0),
        .Q(enable),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h004F0000)) 
    \ns[0]_i_2 
       (.I0(sen_out_IBUF),
        .I1(sen_in_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(\ns[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000FB0)) 
    \ns[1]_i_1 
       (.I0(Right),
        .I1(Wrong),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(cs[2]),
        .O(\ns[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080808080000AA00)) 
    \ns[2]_i_1 
       (.I0(\ns[2]_i_2_n_0 ),
        .I1(sen_in_IBUF),
        .I2(sen_out_IBUF),
        .I3(Wrong),
        .I4(Right),
        .I5(cs[0]),
        .O(\ns[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ns[2]_i_2 
       (.I0(cs[1]),
        .I1(cs[2]),
        .O(\ns[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ns_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(M0_n_9),
        .Q(\ns_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ns_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\ns[1]_i_1_n_0 ),
        .Q(\ns_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \ns_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\ns[2]_i_1_n_0 ),
        .Q(\ns_reg_n_0_[2] ),
        .R(\<const0> ));
  IBUF \password_IBUF[0]_inst 
       (.I(password[0]),
        .O(password_IBUF[0]));
  IBUF \password_IBUF[1]_inst 
       (.I(password[1]),
        .O(password_IBUF[1]));
  IBUF \password_IBUF[2]_inst 
       (.I(password[2]),
        .O(password_IBUF[2]));
  IBUF \password_IBUF[3]_inst 
       (.I(password[3]),
        .O(password_IBUF[3]));
  IBUF \password_IBUF[4]_inst 
       (.I(password[4]),
        .O(password_IBUF[4]));
  OBUF \place_in_OBUF[0]_inst 
       (.I(place_in_OBUF[0]),
        .O(place_in[0]));
  OBUF \place_in_OBUF[1]_inst 
       (.I(place_in_OBUF[1]),
        .O(place_in[1]));
  OBUF \place_in_OBUF[2]_inst 
       (.I(place_in_OBUF[2]),
        .O(place_in[2]));
  OBUF \place_in_OBUF[3]_inst 
       (.I(place_in_OBUF[3]),
        .O(place_in[3]));
  OBUF \place_in_OBUF[4]_inst 
       (.I(place_in_OBUF[4]),
        .O(place_in[4]));
  OBUF \place_in_OBUF[5]_inst 
       (.I(place_in_OBUF[5]),
        .O(place_in[5]));
  OBUF \place_in_OBUF[6]_inst 
       (.I(place_in_OBUF[6]),
        .O(place_in[6]));
  OBUF \place_in_OBUF[7]_inst 
       (.I(place_in_OBUF[7]),
        .O(place_in[7]));
  OBUF \place_in_OBUF[8]_inst 
       (.I(place_in_OBUF[8]),
        .O(place_in[8]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF sen_in_IBUF_inst
       (.I(sen_in),
        .O(sen_in_IBUF));
  IBUF sen_out_IBUF_inst
       (.I(sen_out),
        .O(sen_out_IBUF));
endmodule
