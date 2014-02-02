////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: LEDs_synthesis.v
// /___/   /\     Timestamp: Fri Jan 31 19:16:52 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim LEDs.ngc LEDs_synthesis.v 
// Device	: xc5vlx110t-3-ff1136
// Input file	: LEDs.ngc
// Output file	: C:\Users\Ayoosh\Documents\GitHub\901min1\proj901\netgen\synthesis\LEDs_synthesis.v
// # of Modules	: 1
// Design Name	: LEDs
// Xilinx        : C:\Xilinx\12.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module LEDs (
  clk, RST, rxd, txd, LEDs_8Bit, br_cfg
);
  input clk;
  input RST;
  input rxd;
  output txd;
  output [7 : 0] LEDs_8Bit;
  input [1 : 0] br_cfg;
  wire LEDs_8Bit_1_OBUF_8;
  wire N1;
  wire N11;
  wire N13;
  wire N15;
  wire N23;
  wire N25;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire N35;
  wire N9;
  wire RST_IBUF_22;
  wire br_cfg_0_IBUF_25;
  wire br_cfg_1_IBUF_26;
  wire clk_BUFGP_28;
  wire \driver0/baud_done_30 ;
  wire \driver0/baud_done_not0001 ;
  wire \driver0/data_not0001 ;
  wire \driver0/have_data_49 ;
  wire \driver0/have_data_mux0000 ;
  wire \driver0/have_data_not0001 ;
  wire \driver0/internal_data_not0001 ;
  wire \driver0/iocs_65 ;
  wire \driver0/iocs_and0001 ;
  wire \driver0/iocs_mux0000 ;
  wire \driver0/iocs_not0001 ;
  wire \driver0/iorw_69 ;
  wire \driver0/iorw_mux0000 ;
  wire \driver0/iorw_not0001 ;
  wire \driver0/ready_for_data_72 ;
  wire \driver0/ready_for_data_not0001 ;
  wire rxd_IBUF_75;
  wire \spart0/d1/Msub_shift_reg_addsub0000_cy<0>_rt_77 ;
  wire \spart0/d1/count_0_rstpot_109 ;
  wire \spart0/d1/count_1_rstpot_111 ;
  wire \spart0/d1/count_2_rstpot_113 ;
  wire \spart0/d1/count_3_rstpot_115 ;
  wire \spart0/d1/count_4_rstpot_117 ;
  wire \spart0/d1/count_not0001 ;
  wire \spart0/d1/count_or0000_119 ;
  wire \spart0/d1/r_enable_120 ;
  wire \spart0/d1/rdy_121 ;
  wire \spart0/d1/shift_reg_cmp_eq0000 ;
  wire \spart0/d1/shift_reg_cmp_eq0000104_155 ;
  wire \spart0/d1/shift_reg_or0001 ;
  wire \spart0/d1/t_enable_173 ;
  wire \spart0/d1/t_enable_not0001_174 ;
  wire \spart0/d1/wr_en_inv ;
  wire \spart0/d2/N11 ;
  wire \spart0/d2/buf_rdy_177 ;
  wire \spart0/d2/buf_rdy_mux0000 ;
  wire \spart0/d2/div_buf_0_rstpot_180 ;
  wire \spart0/d2/div_buf_10_mux0000 ;
  wire \spart0/d2/div_buf_11_mux0000 ;
  wire \spart0/d2/div_buf_12_mux0000 ;
  wire \spart0/d2/div_buf_13_mux0000 ;
  wire \spart0/d2/div_buf_14_mux0000 ;
  wire \spart0/d2/div_buf_15_mux0000 ;
  wire \spart0/d2/div_buf_1_rstpot_194 ;
  wire \spart0/d2/div_buf_2_rstpot_196 ;
  wire \spart0/d2/div_buf_3_rstpot_198 ;
  wire \spart0/d2/div_buf_4_rstpot_200 ;
  wire \spart0/d2/div_buf_5_rstpot_202 ;
  wire \spart0/d2/div_buf_6_rstpot_204 ;
  wire \spart0/d2/div_buf_7_not0001 ;
  wire \spart0/d2/div_buf_7_rstpot_207 ;
  wire \spart0/d2/div_buf_8_mux0000 ;
  wire \spart0/d2/div_buf_9_mux0000 ;
  wire \spart0/d_enable ;
  wire \spart0/divisor_enable ;
  wire \spart0/r/Mcount_i ;
  wire \spart0/r/Mcount_i1 ;
  wire \spart0/r/Mcount_i2 ;
  wire \spart0/r/Mcount_i3 ;
  wire \spart0/r/Mcount_zcnt ;
  wire \spart0/r/Mcount_zcnt1 ;
  wire \spart0/r/Mcount_zcnt2 ;
  wire \spart0/r/Mcount_zcnt3 ;
  wire \spart0/r/N2 ;
  wire \spart0/r/bitcnt_not0001 ;
  wire \spart0/r/data_0_not0001 ;
  wire \spart0/r/data_1_not0001 ;
  wire \spart0/r/data_2_not0001 ;
  wire \spart0/r/data_3_not0001 ;
  wire \spart0/r/data_4_not0001 ;
  wire \spart0/r/data_5_not0001 ;
  wire \spart0/r/data_6_not0001 ;
  wire \spart0/r/data_7_mux0000 ;
  wire \spart0/r/data_7_not0001 ;
  wire \spart0/r/i_not0001 ;
  wire \spart0/r/i_or0000 ;
  wire \spart0/r/misery_255 ;
  wire \spart0/r/misery_and0001 ;
  wire \spart0/r/misery_not0001 ;
  wire \spart0/r/rda_258 ;
  wire \spart0/r/rda_cmp_eq0000 ;
  wire \spart0/r/receive_sig_260 ;
  wire \spart0/r/start_261 ;
  wire \spart0/r/start_not0001_262 ;
  wire \spart0/r/start_or0000 ;
  wire \spart0/r/zcnt_not0001 ;
  wire \spart0/rec_enable ;
  wire \spart0/spart_led_270 ;
  wire \spart0/t1/Mcount_t_count_val ;
  wire \spart0/t1/t_busy_276 ;
  wire \spart0/t1/t_busy_mux0000 ;
  wire \spart0/t1/t_busy_not0001 ;
  wire \spart0/t1/t_count_cst ;
  wire \spart0/t1/t_shift_reg_0_and0000 ;
  wire \spart0/t1/t_shift_reg_1_mux0000 ;
  wire \spart0/t1/t_shift_reg_2_mux0000 ;
  wire \spart0/t1/t_shift_reg_3_mux0000 ;
  wire \spart0/t1/t_shift_reg_4_mux0000 ;
  wire \spart0/t1/t_shift_reg_5_mux0000 ;
  wire \spart0/t1/t_shift_reg_6_mux0000 ;
  wire \spart0/t1/t_shift_reg_7_mux0000 ;
  wire \spart0/t1/t_shift_reg_8_mux0000 ;
  wire \spart0/t1/t_shift_reg_8_not0001 ;
  wire \spart0/t1/t_shift_reg_9_or0000 ;
  wire tbr;
  wire [7 : 7] databus;
  wire [7 : 0] \driver0/data ;
  wire [7 : 0] \driver0/data_mux0000 ;
  wire [7 : 0] \driver0/internal_data ;
  wire [1 : 0] \driver0/ioaddr ;
  wire [1 : 0] \driver0/ioaddr_mux0000 ;
  wire [14 : 0] \spart0/d1/Msub_shift_reg_addsub0000_cy ;
  wire [15 : 1] \spart0/d1/Msub_shift_reg_addsub0000_lut ;
  wire [4 : 4] \spart0/d1/Result ;
  wire [4 : 0] \spart0/d1/count ;
  wire [15 : 0] \spart0/d1/shift_reg ;
  wire [15 : 0] \spart0/d1/shift_reg_addsub0000 ;
  wire [15 : 0] \spart0/d1/shift_reg_mux0000 ;
  wire [15 : 0] \spart0/d2/div_buf ;
  wire [3 : 0] \spart0/r/Result ;
  wire [3 : 0] \spart0/r/bitcnt ;
  wire [7 : 0] \spart0/r/data ;
  wire [3 : 0] \spart0/r/i ;
  wire [3 : 0] \spart0/r/zcnt ;
  wire [3 : 0] \spart0/t1/Result ;
  wire [3 : 0] \spart0/t1/t_count ;
  wire [9 : 0] \spart0/t1/t_shift_reg ;
  GND   XST_GND (
    .G(LEDs_8Bit_1_OBUF_8)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   \driver0/internal_data_7  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [7]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [7])
  );
  FDRE   \driver0/internal_data_6  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [6]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [6])
  );
  FDRE   \driver0/internal_data_5  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [5]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [5])
  );
  FDRE   \driver0/internal_data_4  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [4]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [4])
  );
  FDRE   \driver0/internal_data_3  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [3]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [3])
  );
  FDRE   \driver0/internal_data_2  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [2]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [2])
  );
  FDRE   \driver0/internal_data_1  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [1]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [1])
  );
  FDRE   \driver0/internal_data_0  (
    .C(clk_BUFGP_28),
    .CE(\driver0/internal_data_not0001 ),
    .D(\driver0/data [0]),
    .R(RST_IBUF_22),
    .Q(\driver0/internal_data [0])
  );
  FDRE   \driver0/ready_for_data  (
    .C(clk_BUFGP_28),
    .CE(\driver0/ready_for_data_not0001 ),
    .D(\driver0/iocs_and0001 ),
    .R(RST_IBUF_22),
    .Q(\driver0/ready_for_data_72 )
  );
  FDRE   \driver0/have_data  (
    .C(clk_BUFGP_28),
    .CE(\driver0/have_data_not0001 ),
    .D(\driver0/have_data_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\driver0/have_data_49 )
  );
  FDRE   \driver0/baud_done  (
    .C(clk_BUFGP_28),
    .CE(\driver0/baud_done_not0001 ),
    .D(N1),
    .R(RST_IBUF_22),
    .Q(\driver0/baud_done_30 )
  );
  FDRE   \driver0/data_7  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [7]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [7])
  );
  FDRE   \driver0/data_6  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [6]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [6])
  );
  FDRE   \driver0/data_5  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [5]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [5])
  );
  FDRE   \driver0/data_4  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [4]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [4])
  );
  FDRE   \driver0/data_3  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [3]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [3])
  );
  FDRE   \driver0/data_2  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [2]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [2])
  );
  FDRE   \driver0/data_1  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [1]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [1])
  );
  FDRE   \driver0/data_0  (
    .C(clk_BUFGP_28),
    .CE(\driver0/data_not0001 ),
    .D(\driver0/data_mux0000 [0]),
    .R(RST_IBUF_22),
    .Q(\driver0/data [0])
  );
  FDRE   \driver0/iorw  (
    .C(clk_BUFGP_28),
    .CE(\driver0/iorw_not0001 ),
    .D(\driver0/iorw_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\driver0/iorw_69 )
  );
  FDRE   \driver0/iocs  (
    .C(clk_BUFGP_28),
    .CE(\driver0/iocs_not0001 ),
    .D(\driver0/iocs_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\driver0/iocs_65 )
  );
  FDRE   \driver0/ioaddr_1  (
    .C(clk_BUFGP_28),
    .CE(\driver0/iorw_not0001 ),
    .D(\driver0/ioaddr_mux0000 [0]),
    .R(RST_IBUF_22),
    .Q(\driver0/ioaddr [1])
  );
  FDRE   \driver0/ioaddr_0  (
    .C(clk_BUFGP_28),
    .CE(\driver0/iorw_not0001 ),
    .D(\driver0/ioaddr_mux0000 [1]),
    .R(RST_IBUF_22),
    .Q(\driver0/ioaddr [0])
  );
  FDRE   \spart0/spart_led  (
    .C(clk_BUFGP_28),
    .CE(tbr),
    .D(N1),
    .R(\spart0/r/rda_258 ),
    .Q(\spart0/spart_led_270 )
  );
  FD   \spart0/d2/buf_rdy  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/buf_rdy_mux0000 ),
    .Q(\spart0/d2/buf_rdy_177 )
  );
  FD   \spart0/d2/div_buf_8  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_8_mux0000 ),
    .Q(\spart0/d2/div_buf [8])
  );
  FD   \spart0/d2/div_buf_9  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_9_mux0000 ),
    .Q(\spart0/d2/div_buf [9])
  );
  FD   \spart0/d2/div_buf_10  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_10_mux0000 ),
    .Q(\spart0/d2/div_buf [10])
  );
  FD   \spart0/d2/div_buf_11  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_11_mux0000 ),
    .Q(\spart0/d2/div_buf [11])
  );
  FD   \spart0/d2/div_buf_12  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_12_mux0000 ),
    .Q(\spart0/d2/div_buf [12])
  );
  FD   \spart0/d2/div_buf_14  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_14_mux0000 ),
    .Q(\spart0/d2/div_buf [14])
  );
  FD   \spart0/d2/div_buf_15  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_15_mux0000 ),
    .Q(\spart0/d2/div_buf [15])
  );
  FD   \spart0/d2/div_buf_13  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_13_mux0000 ),
    .Q(\spart0/d2/div_buf [13])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<15>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [14]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [15]),
    .O(\spart0/d1/shift_reg_addsub0000 [15])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<14>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [13]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [14]),
    .O(\spart0/d1/shift_reg_addsub0000 [14])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<14>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [13]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [14]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [14])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<13>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [12]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [13]),
    .O(\spart0/d1/shift_reg_addsub0000 [13])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<13>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [12]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [13]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [13])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<12>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [11]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [12]),
    .O(\spart0/d1/shift_reg_addsub0000 [12])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<12>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [11]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [12]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [12])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<11>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [10]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [11]),
    .O(\spart0/d1/shift_reg_addsub0000 [11])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<11>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [10]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [11]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [11])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<10>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [9]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [10]),
    .O(\spart0/d1/shift_reg_addsub0000 [10])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<10>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [9]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [10]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [10])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<9>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [8]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [9]),
    .O(\spart0/d1/shift_reg_addsub0000 [9])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<9>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [8]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [9]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [9])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<8>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [7]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [8]),
    .O(\spart0/d1/shift_reg_addsub0000 [8])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<8>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [7]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [8]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [8])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<7>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [6]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [7]),
    .O(\spart0/d1/shift_reg_addsub0000 [7])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<7>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [6]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [7]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [7])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<6>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [5]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [6]),
    .O(\spart0/d1/shift_reg_addsub0000 [6])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<6>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [5]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [6]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [6])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<5>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [4]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [5]),
    .O(\spart0/d1/shift_reg_addsub0000 [5])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<5>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [4]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [5]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [5])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<4>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [3]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [4]),
    .O(\spart0/d1/shift_reg_addsub0000 [4])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<4>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [3]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [4]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [4])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<3>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [2]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [3]),
    .O(\spart0/d1/shift_reg_addsub0000 [3])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<3>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [2]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [3]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [3])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<2>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [1]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [2]),
    .O(\spart0/d1/shift_reg_addsub0000 [2])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<2>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [1]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [2]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [2])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<1>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [0]),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_lut [1]),
    .O(\spart0/d1/shift_reg_addsub0000 [1])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<1>  (
    .CI(\spart0/d1/Msub_shift_reg_addsub0000_cy [0]),
    .DI(N1),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_lut [1]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [1])
  );
  XORCY   \spart0/d1/Msub_shift_reg_addsub0000_xor<0>  (
    .CI(N1),
    .LI(\spart0/d1/Msub_shift_reg_addsub0000_cy<0>_rt_77 ),
    .O(\spart0/d1/shift_reg_addsub0000 [0])
  );
  MUXCY   \spart0/d1/Msub_shift_reg_addsub0000_cy<0>  (
    .CI(N1),
    .DI(LEDs_8Bit_1_OBUF_8),
    .S(\spart0/d1/Msub_shift_reg_addsub0000_cy<0>_rt_77 ),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy [0])
  );
  FDRE   \spart0/d1/rdy  (
    .C(clk_BUFGP_28),
    .CE(\spart0/d2/buf_rdy_177 ),
    .D(N1),
    .R(RST_IBUF_22),
    .Q(\spart0/d1/rdy_121 )
  );
  FDRE   \spart0/d1/r_enable  (
    .C(clk_BUFGP_28),
    .CE(\spart0/d1/wr_en_inv ),
    .D(\spart0/d1/count_not0001 ),
    .R(RST_IBUF_22),
    .Q(\spart0/d1/r_enable_120 )
  );
  FDR   \spart0/d1/shift_reg_15  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [15]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [15])
  );
  FDR   \spart0/d1/shift_reg_14  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [14]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [14])
  );
  FDR   \spart0/d1/shift_reg_13  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [13]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [13])
  );
  FDR   \spart0/d1/shift_reg_12  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [12]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [12])
  );
  FDR   \spart0/d1/shift_reg_11  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [11]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [11])
  );
  FDR   \spart0/d1/shift_reg_10  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [10]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [10])
  );
  FDR   \spart0/d1/shift_reg_9  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [9]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [9])
  );
  FDR   \spart0/d1/shift_reg_8  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [8]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [8])
  );
  FDR   \spart0/d1/shift_reg_7  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [7]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [7])
  );
  FDR   \spart0/d1/shift_reg_6  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [6]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [6])
  );
  FDR   \spart0/d1/shift_reg_5  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [5]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [5])
  );
  FDR   \spart0/d1/shift_reg_4  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [4]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [4])
  );
  FDR   \spart0/d1/shift_reg_3  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [3]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [3])
  );
  FDR   \spart0/d1/shift_reg_2  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [2]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [2])
  );
  FDR   \spart0/d1/shift_reg_1  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [1]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [1])
  );
  FDR   \spart0/d1/shift_reg_0  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/shift_reg_mux0000 [0]),
    .R(\spart0/d1/shift_reg_or0001 ),
    .Q(\spart0/d1/shift_reg [0])
  );
  FDRE   \spart0/d1/t_enable  (
    .C(clk_BUFGP_28),
    .CE(\spart0/d1/t_enable_not0001_174 ),
    .D(\spart0/d1/count_not0001 ),
    .R(RST_IBUF_22),
    .Q(\spart0/d1/t_enable_173 )
  );
  FDRSE   \spart0/t1/t_count_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_0_and0000 ),
    .D(\spart0/t1/Result [3]),
    .R(RST_IBUF_22),
    .S(\spart0/t1/t_count_cst ),
    .Q(\spart0/t1/t_count [3])
  );
  FDRE   \spart0/t1/t_count_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_0_and0000 ),
    .D(\spart0/t1/Result [2]),
    .R(\spart0/t1/Mcount_t_count_val ),
    .Q(\spart0/t1/t_count [2])
  );
  FDRSE   \spart0/t1/t_count_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_0_and0000 ),
    .D(\spart0/t1/Result [0]),
    .R(RST_IBUF_22),
    .S(\spart0/t1/t_count_cst ),
    .Q(\spart0/t1/t_count [0])
  );
  FDRE   \spart0/t1/t_count_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_0_and0000 ),
    .D(\spart0/t1/Result [1]),
    .R(\spart0/t1/Mcount_t_count_val ),
    .Q(\spart0/t1/t_count [1])
  );
  FDSE   \spart0/t1/t_shift_reg_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_0_and0000 ),
    .D(\spart0/t1/t_shift_reg [1]),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [0])
  );
  FDRE   \spart0/t1/t_busy  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_busy_not0001 ),
    .D(\spart0/t1/t_busy_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/t1/t_busy_276 )
  );
  FDSE   \spart0/t1/t_shift_reg_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_2_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [2])
  );
  FDSE   \spart0/t1/t_shift_reg_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_3_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [3])
  );
  FDSE   \spart0/t1/t_shift_reg_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_1_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [1])
  );
  FDSE   \spart0/t1/t_shift_reg_5  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_5_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [5])
  );
  FDSE   \spart0/t1/t_shift_reg_6  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_6_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [6])
  );
  FDSE   \spart0/t1/t_shift_reg_4  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_4_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [4])
  );
  FDSE   \spart0/t1/t_shift_reg_8  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_8_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [8])
  );
  FDSE   \spart0/t1/t_shift_reg_9  (
    .C(clk_BUFGP_28),
    .CE(\spart0/d_enable ),
    .D(databus[7]),
    .S(\spart0/t1/t_shift_reg_9_or0000 ),
    .Q(\spart0/t1/t_shift_reg [9])
  );
  FDSE   \spart0/t1/t_shift_reg_7  (
    .C(clk_BUFGP_28),
    .CE(\spart0/t1/t_shift_reg_8_not0001 ),
    .D(\spart0/t1/t_shift_reg_7_mux0000 ),
    .S(RST_IBUF_22),
    .Q(\spart0/t1/t_shift_reg [7])
  );
  FDRE   \spart0/r/bitcnt_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/bitcnt_not0001 ),
    .D(\spart0/r/Result [3]),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/bitcnt [3])
  );
  FDRE   \spart0/r/bitcnt_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/bitcnt_not0001 ),
    .D(\spart0/r/Result [2]),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/bitcnt [2])
  );
  FDRE   \spart0/r/bitcnt_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/bitcnt_not0001 ),
    .D(\spart0/r/Result [1]),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/bitcnt [1])
  );
  FDRE   \spart0/r/bitcnt_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/bitcnt_not0001 ),
    .D(\spart0/r/Result [0]),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/bitcnt [0])
  );
  FDRE   \spart0/r/zcnt_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/zcnt_not0001 ),
    .D(\spart0/r/Mcount_zcnt3 ),
    .R(\spart0/r/i_or0000 ),
    .Q(\spart0/r/zcnt [3])
  );
  FDRE   \spart0/r/zcnt_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/zcnt_not0001 ),
    .D(\spart0/r/Mcount_zcnt2 ),
    .R(\spart0/r/i_or0000 ),
    .Q(\spart0/r/zcnt [2])
  );
  FDRE   \spart0/r/zcnt_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/zcnt_not0001 ),
    .D(\spart0/r/Mcount_zcnt1 ),
    .R(\spart0/r/i_or0000 ),
    .Q(\spart0/r/zcnt [1])
  );
  FDRE   \spart0/r/zcnt_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/zcnt_not0001 ),
    .D(\spart0/r/Mcount_zcnt ),
    .R(\spart0/r/i_or0000 ),
    .Q(\spart0/r/zcnt [0])
  );
  FDSE   \spart0/r/i_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/i_not0001 ),
    .D(\spart0/r/Mcount_i3 ),
    .S(\spart0/r/i_or0000 ),
    .Q(\spart0/r/i [3])
  );
  FDSE   \spart0/r/i_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/i_not0001 ),
    .D(\spart0/r/Mcount_i2 ),
    .S(\spart0/r/i_or0000 ),
    .Q(\spart0/r/i [2])
  );
  FDSE   \spart0/r/i_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/i_not0001 ),
    .D(\spart0/r/Mcount_i1 ),
    .S(\spart0/r/i_or0000 ),
    .Q(\spart0/r/i [1])
  );
  FDSE   \spart0/r/i_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/i_not0001 ),
    .D(\spart0/r/Mcount_i ),
    .S(\spart0/r/i_or0000 ),
    .Q(\spart0/r/i [0])
  );
  FDRE   \spart0/r/misery  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/misery_not0001 ),
    .D(\spart0/r/misery_and0001 ),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/misery_255 )
  );
  FDRE   \spart0/r/start  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/start_not0001_262 ),
    .D(N1),
    .R(\spart0/r/start_or0000 ),
    .Q(\spart0/r/start_261 )
  );
  FDRSE   \spart0/r/rda  (
    .C(clk_BUFGP_28),
    .CE(RST_IBUF_22),
    .D(LEDs_8Bit_1_OBUF_8),
    .R(\spart0/rec_enable ),
    .S(\spart0/r/rda_cmp_eq0000 ),
    .Q(\spart0/r/rda_258 )
  );
  FDRE   \spart0/r/data_1  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_1_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [1])
  );
  FDRE   \spart0/r/data_2  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_2_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [2])
  );
  FDRE   \spart0/r/data_0  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_0_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [0])
  );
  FDRE   \spart0/r/data_4  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_4_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [4])
  );
  FDRE   \spart0/r/data_5  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_5_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [5])
  );
  FDRE   \spart0/r/data_3  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_3_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [3])
  );
  FDRE   \spart0/r/data_7  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_7_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [7])
  );
  FD   \spart0/r/receive_sig  (
    .C(clk_BUFGP_28),
    .D(rxd_IBUF_75),
    .Q(\spart0/r/receive_sig_260 )
  );
  FDRE   \spart0/r/data_6  (
    .C(clk_BUFGP_28),
    .CE(\spart0/r/data_6_not0001 ),
    .D(\spart0/r/data_7_mux0000 ),
    .R(RST_IBUF_22),
    .Q(\spart0/r/data [6])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \spart0/r/misery_and00011  (
    .I0(\spart0/r/receive_sig_260 ),
    .I1(\spart0/r/misery_255 ),
    .O(\spart0/r/misery_and0001 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \driver0/have_data_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/have_data_49 ),
    .O(\driver0/have_data_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \spart0/t1/Mcount_t_count_xor<1>11  (
    .I0(\spart0/t1/t_count [1]),
    .I1(\spart0/t1/t_count [0]),
    .O(\spart0/t1/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \spart0/r/Mcount_zcnt_xor<1>11  (
    .I0(\spart0/r/zcnt [1]),
    .I1(\spart0/r/zcnt [0]),
    .O(\spart0/r/Mcount_zcnt1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \spart0/r/Mcount_i_xor<1>11  (
    .I0(\spart0/r/i [0]),
    .I1(\spart0/r/i [1]),
    .O(\spart0/r/Mcount_i1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \spart0/r/Mcount_bitcnt_xor<1>11  (
    .I0(\spart0/r/bitcnt [1]),
    .I1(\spart0/r/bitcnt [0]),
    .O(\spart0/r/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \driver0/ioaddr_mux0000<1>1  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/ioaddr [1]),
    .O(\driver0/ioaddr_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \driver0/ioaddr_mux0000<0>1  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/ioaddr [1]),
    .O(\driver0/ioaddr_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \databus<7>LogicTrst1  (
    .I0(\driver0/iorw_69 ),
    .I1(\driver0/data [7]),
    .I2(\spart0/r/data [7]),
    .O(databus[7])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \spart0/t1/Mcount_t_count_xor<2>11  (
    .I0(\spart0/t1/t_count [0]),
    .I1(\spart0/t1/t_count [2]),
    .I2(\spart0/t1/t_count [1]),
    .O(\spart0/t1/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \spart0/r/Mcount_zcnt_xor<2>11  (
    .I0(\spart0/r/zcnt [0]),
    .I1(\spart0/r/zcnt [2]),
    .I2(\spart0/r/zcnt [1]),
    .O(\spart0/r/Mcount_zcnt2 )
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \spart0/r/Mcount_i_xor<2>11  (
    .I0(\spart0/r/i [1]),
    .I1(\spart0/r/i [2]),
    .I2(\spart0/r/i [0]),
    .O(\spart0/r/Mcount_i2 )
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \spart0/r/Mcount_bitcnt_xor<2>11  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/bitcnt [2]),
    .I2(\spart0/r/bitcnt [1]),
    .O(\spart0/r/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h5557 ))
  \spart0/r/data_7_mux00001  (
    .I0(\spart0/r/zcnt [3]),
    .I1(\spart0/r/zcnt [1]),
    .I2(\spart0/r/zcnt [2]),
    .I3(\spart0/r/zcnt [0]),
    .O(\spart0/r/data_7_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \spart0/t1/Mcount_t_count_xor<3>11  (
    .I0(\spart0/t1/t_count [0]),
    .I1(\spart0/t1/t_count [3]),
    .I2(\spart0/t1/t_count [1]),
    .I3(\spart0/t1/t_count [2]),
    .O(\spart0/t1/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \spart0/r/Mcount_zcnt_xor<3>11  (
    .I0(\spart0/r/zcnt [0]),
    .I1(\spart0/r/zcnt [3]),
    .I2(\spart0/r/zcnt [1]),
    .I3(\spart0/r/zcnt [2]),
    .O(\spart0/r/Mcount_zcnt3 )
  );
  LUT4 #(
    .INIT ( 16'hCCC9 ))
  \spart0/r/Mcount_i_xor<3>11  (
    .I0(\spart0/r/i [1]),
    .I1(\spart0/r/i [3]),
    .I2(\spart0/r/i [2]),
    .I3(\spart0/r/i [0]),
    .O(\spart0/r/Mcount_i3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \spart0/r/Mcount_bitcnt_xor<3>11  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/bitcnt [3]),
    .I2(\spart0/r/bitcnt [1]),
    .I3(\spart0/r/bitcnt [2]),
    .O(\spart0/r/Result [3])
  );
  LUT5 #(
    .INIT ( 32'hF7A2A2A2 ))
  \driver0/iorw_mux00001  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/have_data_49 ),
    .I2(\spart0/t1/t_busy_276 ),
    .I3(\driver0/ioaddr [0]),
    .I4(\driver0/iorw_69 ),
    .O(\driver0/iorw_mux0000 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \spart0/d1/Mcount_count_xor<4>11  (
    .I0(\spart0/d1/count [0]),
    .I1(\spart0/d1/count [4]),
    .I2(\spart0/d1/count [1]),
    .I3(\spart0/d1/count [2]),
    .I4(\spart0/d1/count [3]),
    .O(\spart0/d1/Result [4])
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \driver0/data_mux0000<7>1  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [7]),
    .I2(\driver0/ioaddr [0]),
    .I3(br_cfg_0_IBUF_25),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [7]),
    .O(\driver0/data_mux0000 [7])
  );
  LUT6 #(
    .INIT ( 64'hEAEFEFEA40454540 ))
  \driver0/data_mux0000<0>1  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [0]),
    .I2(\driver0/ioaddr [0]),
    .I3(br_cfg_0_IBUF_25),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [0]),
    .O(\driver0/data_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \spart0/r/zcnt_not00011  (
    .I0(\spart0/d1/r_enable_120 ),
    .I1(\spart0/r/receive_sig_260 ),
    .I2(\spart0/r/bitcnt [3]),
    .O(\spart0/r/zcnt_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \driver0/iocs_not00011  (
    .I0(\driver0/have_data_49 ),
    .I1(\driver0/baud_done_30 ),
    .I2(\spart0/r/rda_258 ),
    .O(\driver0/iocs_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h4F ))
  \driver0/data_not00011  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/have_data_49 ),
    .I2(\driver0/baud_done_30 ),
    .O(\driver0/data_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \driver0/baud_done_not00011  (
    .I0(\driver0/ioaddr [1]),
    .I1(\driver0/baud_done_30 ),
    .I2(\driver0/ioaddr [0]),
    .O(\driver0/baud_done_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \spart0/r/i_not00011  (
    .I0(\spart0/r/bitcnt [3]),
    .I1(\spart0/d1/r_enable_120 ),
    .I2(\spart0/r/receive_sig_260 ),
    .I3(\spart0/r/start_261 ),
    .O(\spart0/r/i_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h2F7F2F2F ))
  \driver0/iorw_not00011  (
    .I0(\driver0/have_data_49 ),
    .I1(\spart0/t1/t_busy_276 ),
    .I2(\driver0/baud_done_30 ),
    .I3(\driver0/ready_for_data_72 ),
    .I4(\spart0/r/rda_258 ),
    .O(\driver0/iorw_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h2000A888 ))
  \driver0/have_data_not00011  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/have_data_49 ),
    .I2(\spart0/r/rda_258 ),
    .I3(\driver0/ready_for_data_72 ),
    .I4(\spart0/t1/t_busy_276 ),
    .O(\driver0/have_data_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \driver0/iocs_and00011  (
    .I0(\spart0/r/rda_258 ),
    .I1(\driver0/ready_for_data_72 ),
    .O(\driver0/iocs_and0001 )
  );
  LUT6 #(
    .INIT ( 64'h75207575FDA8FDFD ))
  \driver0/iocs_mux00001  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/have_data_49 ),
    .I2(\driver0/iocs_and0001 ),
    .I3(\driver0/iocs_65 ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/t1/t_busy_276 ),
    .O(\driver0/iocs_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_9_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [9]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [1]),
    .O(\spart0/d2/div_buf_9_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_8_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [8]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [0]),
    .O(\spart0/d2/div_buf_8_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_15_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [15]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [7]),
    .O(\spart0/d2/div_buf_15_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_14_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [14]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [6]),
    .O(\spart0/d2/div_buf_14_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_13_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [13]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [5]),
    .O(\spart0/d2/div_buf_13_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_12_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [12]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [4]),
    .O(\spart0/d2/div_buf_12_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_11_mux000011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [11]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [3]),
    .O(\spart0/d2/div_buf_11_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hDC50505010505050 ))
  \spart0/d2/div_buf_10_mux000021  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\spart0/d2/div_buf [10]),
    .I3(\spart0/divisor_enable ),
    .I4(\driver0/ioaddr [0]),
    .I5(\spart0/r/data [2]),
    .O(\spart0/d2/div_buf_10_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \driver0/data_mux0000<6>_SW0  (
    .I0(br_cfg_1_IBUF_26),
    .I1(br_cfg_0_IBUF_25),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \driver0/data_mux0000<6>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [6]),
    .I2(\driver0/ioaddr [0]),
    .I3(N9),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [6]),
    .O(\driver0/data_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \driver0/data_mux0000<5>_SW0  (
    .I0(br_cfg_1_IBUF_26),
    .I1(br_cfg_0_IBUF_25),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \driver0/data_mux0000<5>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [5]),
    .I2(\driver0/ioaddr [0]),
    .I3(N11),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [5]),
    .O(\driver0/data_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \driver0/data_mux0000<4>_SW0  (
    .I0(br_cfg_1_IBUF_26),
    .I1(br_cfg_0_IBUF_25),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \driver0/data_mux0000<4>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [4]),
    .I2(\driver0/ioaddr [0]),
    .I3(N13),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [4]),
    .O(\driver0/data_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \driver0/data_mux0000<3>_SW0  (
    .I0(br_cfg_0_IBUF_25),
    .I1(br_cfg_1_IBUF_26),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'hEAEAEFEA40404540 ))
  \driver0/data_mux0000<3>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/data [3]),
    .I2(\driver0/ioaddr [0]),
    .I3(N15),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [3]),
    .O(\driver0/data_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hFBEAFBFB51405151 ))
  \driver0/data_mux0000<1>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/data [1]),
    .I3(N15),
    .I4(\driver0/ioaddr [1]),
    .I5(\driver0/internal_data [1]),
    .O(\driver0/data_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \spart0/d1/shift_reg_or00011  (
    .I0(\spart0/d1/rdy_121 ),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(RST_IBUF_22),
    .O(\spart0/d1/shift_reg_or0001 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \spart0/r/rda_cmp_eq00001  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/bitcnt [1]),
    .I2(\spart0/r/bitcnt [2]),
    .I3(\spart0/r/bitcnt [3]),
    .O(\spart0/r/rda_cmp_eq0000 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \driver0/internal_data_not000111  (
    .I0(\driver0/have_data_49 ),
    .I1(\spart0/r/rda_258 ),
    .I2(\driver0/baud_done_30 ),
    .O(\driver0/ready_for_data_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h1111111100010000 ))
  \spart0/r/misery_not00012  (
    .I0(\spart0/r/receive_sig_260 ),
    .I1(\spart0/r/start_261 ),
    .I2(\spart0/r/bitcnt [3]),
    .I3(\spart0/r/misery_255 ),
    .I4(\spart0/d1/r_enable_120 ),
    .I5(\spart0/r/N2 ),
    .O(\spart0/r/misery_not0001 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF000100000001 ))
  \spart0/t1/t_busy_not00011  (
    .I0(\spart0/t1/t_count [3]),
    .I1(\spart0/t1/t_count [2]),
    .I2(\spart0/t1/t_count [1]),
    .I3(\spart0/t1/t_count [0]),
    .I4(\spart0/t1/t_busy_mux0000 ),
    .I5(\spart0/d_enable ),
    .O(\spart0/t1/t_busy_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \spart0/r/start_not0001_SW0  (
    .I0(\spart0/r/zcnt [1]),
    .I1(\spart0/r/zcnt [0]),
    .I2(\spart0/r/zcnt [2]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \spart0/r/start_not0001  (
    .I0(\spart0/r/zcnt [3]),
    .I1(\spart0/r/misery_255 ),
    .I2(\spart0/r/receive_sig_260 ),
    .I3(\spart0/r/start_261 ),
    .I4(N23),
    .I5(\spart0/r/N2 ),
    .O(\spart0/r/start_not0001_262 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \spart0/t1/t_busy_mux00001  (
    .I0(\spart0/d1/t_enable_173 ),
    .I1(\spart0/t1/t_busy_276 ),
    .O(\spart0/t1/t_busy_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \spart0/rec_enable_and00001  (
    .I0(\driver0/iocs_65 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/ioaddr [0]),
    .I3(\driver0/ioaddr [1]),
    .O(\spart0/rec_enable )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \spart0/d_enable_and00001  (
    .I0(\driver0/iocs_65 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/ioaddr [0]),
    .I3(\driver0/ioaddr [1]),
    .O(\spart0/d_enable )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFAEFFFFAAAA ))
  \spart0/r/i_or00001  (
    .I0(RST_IBUF_22),
    .I1(\spart0/r/misery_255 ),
    .I2(\spart0/r/receive_sig_260 ),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/rec_enable ),
    .I5(\spart0/r/N2 ),
    .O(\spart0/r/i_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \spart0/r/data_0_not000111  (
    .I0(\spart0/r/start_261 ),
    .I1(\spart0/r/N2 ),
    .O(\spart0/r/bitcnt_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \spart0/divisor_enable1  (
    .I0(\driver0/iorw_69 ),
    .I1(\driver0/iocs_65 ),
    .I2(\driver0/ioaddr [1]),
    .O(\spart0/divisor_enable )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \spart0/r/misery_not000111  (
    .I0(\spart0/r/i [3]),
    .I1(\spart0/r/i [0]),
    .I2(\spart0/r/i [1]),
    .I3(\spart0/r/i [2]),
    .I4(\spart0/r/bitcnt [3]),
    .I5(\spart0/d1/r_enable_120 ),
    .O(\spart0/r/N2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \spart0/d1/count_not00011  (
    .I0(\spart0/d1/rdy_121 ),
    .I1(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/count_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \spart0/d1/count_or0000_SW0  (
    .I0(\spart0/d1/count [2]),
    .I1(\spart0/d1/count [4]),
    .I2(\spart0/d1/count [0]),
    .I3(\spart0/d1/count [3]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \spart0/d1/shift_reg_cmp_eq0000104  (
    .I0(\spart0/d1/shift_reg [14]),
    .I1(\spart0/d1/shift_reg [15]),
    .I2(\spart0/d1/shift_reg [13]),
    .I3(\spart0/d1/shift_reg [12]),
    .I4(\spart0/d1/shift_reg [11]),
    .I5(\spart0/d1/shift_reg [10]),
    .O(\spart0/d1/shift_reg_cmp_eq0000104_155 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \spart0/d1/t_enable_not0001_SW0  (
    .I0(\spart0/d1/count [2]),
    .I1(\spart0/d1/count [4]),
    .I2(\spart0/d1/count [0]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h1111311133333333 ))
  \spart0/d1/t_enable_not0001  (
    .I0(\spart0/d1/rdy_121 ),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/count [1]),
    .I3(\spart0/d1/count [3]),
    .I4(N27),
    .I5(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/t_enable_not0001_174 )
  );
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_22)
  );
  IBUF   rxd_IBUF (
    .I(rxd),
    .O(rxd_IBUF_75)
  );
  IBUF   br_cfg_1_IBUF (
    .I(br_cfg[1]),
    .O(br_cfg_1_IBUF_26)
  );
  IBUF   br_cfg_0_IBUF (
    .I(br_cfg[0]),
    .O(br_cfg_0_IBUF_25)
  );
  OBUF   txd_OBUF (
    .I(\spart0/t1/t_shift_reg [0]),
    .O(txd)
  );
  OBUF   LEDs_8Bit_7_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[7])
  );
  OBUF   LEDs_8Bit_6_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[6])
  );
  OBUF   LEDs_8Bit_5_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[5])
  );
  OBUF   LEDs_8Bit_4_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[4])
  );
  OBUF   LEDs_8Bit_3_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[3])
  );
  OBUF   LEDs_8Bit_2_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[2])
  );
  OBUF   LEDs_8Bit_1_OBUF (
    .I(LEDs_8Bit_1_OBUF_8),
    .O(LEDs_8Bit[1])
  );
  OBUF   LEDs_8Bit_0_OBUF (
    .I(\spart0/spart_led_270 ),
    .O(LEDs_8Bit[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \spart0/d1/Msub_shift_reg_addsub0000_cy<0>_rt  (
    .I0(\spart0/d1/shift_reg [0]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_cy<0>_rt_77 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \spart0/d1/shift_reg_cmp_eq0000108_SW0  (
    .I0(\spart0/d1/shift_reg [4]),
    .I1(\spart0/d1/shift_reg [3]),
    .I2(\spart0/d1/shift_reg [2]),
    .I3(\spart0/d1/shift_reg [1]),
    .I4(\spart0/d1/shift_reg [0]),
    .I5(\spart0/d1/shift_reg [8]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \spart0/d1/shift_reg_cmp_eq0000108  (
    .I0(\spart0/d1/shift_reg [9]),
    .I1(\spart0/d1/shift_reg [7]),
    .I2(\spart0/d1/shift_reg [6]),
    .I3(\spart0/d1/shift_reg [5]),
    .I4(N29),
    .I5(\spart0/d1/shift_reg_cmp_eq0000104_155 ),
    .O(\spart0/d1/shift_reg_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<9>1  (
    .I0(\spart0/d2/div_buf [9]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [9]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [9])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<8>1  (
    .I0(\spart0/d2/div_buf [8]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [8]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<7>1  (
    .I0(\spart0/d2/div_buf [7]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [7]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<6>1  (
    .I0(\spart0/d2/div_buf [6]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [6]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<5>1  (
    .I0(\spart0/d2/div_buf [5]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [5]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<4>1  (
    .I0(\spart0/d2/div_buf [4]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [4]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<3>1  (
    .I0(\spart0/d2/div_buf [3]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [3]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<2>1  (
    .I0(\spart0/d2/div_buf [2]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [2]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<1>1  (
    .I0(\spart0/d2/div_buf [1]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [1]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<15>1  (
    .I0(\spart0/d2/div_buf [15]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [15]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [15])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<14>1  (
    .I0(\spart0/d2/div_buf [14]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [14]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [14])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<13>1  (
    .I0(\spart0/d2/div_buf [13]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [13]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [13])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<12>1  (
    .I0(\spart0/d2/div_buf [12]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [12]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [12])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<11>1  (
    .I0(\spart0/d2/div_buf [11]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [11]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [11])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<10>1  (
    .I0(\spart0/d2/div_buf [10]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [10]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \spart0/d1/shift_reg_mux0000<0>1  (
    .I0(\spart0/d2/div_buf [0]),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(\spart0/d1/shift_reg_addsub0000 [0]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .O(\spart0/d1/shift_reg_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \spart0/r/data_6_not00011  (
    .I0(\spart0/r/bitcnt [2]),
    .I1(\spart0/r/bitcnt [0]),
    .I2(\spart0/r/bitcnt [1]),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_6_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \spart0/r/data_5_not00011  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/bitcnt [1]),
    .I2(\spart0/r/bitcnt [2]),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_5_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \spart0/r/data_4_not00011  (
    .I0(\spart0/r/bitcnt [2]),
    .I1(\spart0/r/start_261 ),
    .I2(\spart0/r/bitcnt [0]),
    .I3(\spart0/r/bitcnt [1]),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_4_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \spart0/r/data_3_not00011  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/bitcnt [2]),
    .I2(\spart0/r/bitcnt [1]),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_3_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \spart0/r/data_2_not00011  (
    .I0(\spart0/r/bitcnt [1]),
    .I1(\spart0/r/start_261 ),
    .I2(\spart0/r/bitcnt [2]),
    .I3(\spart0/r/bitcnt [0]),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_2_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \spart0/r/data_1_not00011  (
    .I0(\spart0/r/bitcnt [0]),
    .I1(\spart0/r/start_261 ),
    .I2(\spart0/r/bitcnt [2]),
    .I3(\spart0/r/bitcnt [1]),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_1_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \spart0/r/data_7_not00011  (
    .I0(\spart0/r/bitcnt [2]),
    .I1(\spart0/r/bitcnt [1]),
    .I2(\spart0/r/bitcnt [0]),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_7_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \spart0/r/data_0_not00011  (
    .I0(\spart0/r/bitcnt [2]),
    .I1(\spart0/r/bitcnt [1]),
    .I2(\spart0/r/bitcnt [0]),
    .I3(\spart0/r/start_261 ),
    .I4(\spart0/r/N2 ),
    .O(\spart0/r/data_0_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \spart0/d1/shift_reg_cmp_eq0000108_SW1  (
    .I0(\spart0/d1/shift_reg [9]),
    .I1(\spart0/d1/shift_reg [7]),
    .I2(\spart0/d1/shift_reg [6]),
    .I3(\spart0/d1/shift_reg [5]),
    .I4(\spart0/d1/count [1]),
    .I5(\spart0/d1/rdy_121 ),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'hEEFEEEEEEEEEEEEE ))
  \spart0/d1/count_or0000  (
    .I0(RST_IBUF_22),
    .I1(\spart0/d2/buf_rdy_177 ),
    .I2(N25),
    .I3(N29),
    .I4(\spart0/d1/shift_reg_cmp_eq0000104_155 ),
    .I5(N31),
    .O(\spart0/d1/count_or0000_119 )
  );
  FD   \spart0/d1/count_2  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/count_2_rstpot_113 ),
    .Q(\spart0/d1/count [2])
  );
  FD   \spart0/d1/count_1  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/count_1_rstpot_111 ),
    .Q(\spart0/d1/count [1])
  );
  FD   \spart0/d1/count_0  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/count_0_rstpot_109 ),
    .Q(\spart0/d1/count [0])
  );
  FD   \spart0/d1/count_4  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/count_4_rstpot_117 ),
    .Q(\spart0/d1/count [4])
  );
  FD   \spart0/d1/count_3  (
    .C(clk_BUFGP_28),
    .D(\spart0/d1/count_3_rstpot_115 ),
    .Q(\spart0/d1/count [3])
  );
  FD   \spart0/d2/div_buf_0  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_0_rstpot_180 ),
    .Q(\spart0/d2/div_buf [0])
  );
  FD   \spart0/d2/div_buf_1  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_1_rstpot_194 ),
    .Q(\spart0/d2/div_buf [1])
  );
  FD   \spart0/d2/div_buf_2  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_2_rstpot_196 ),
    .Q(\spart0/d2/div_buf [2])
  );
  FD   \spart0/d2/div_buf_3  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_3_rstpot_198 ),
    .Q(\spart0/d2/div_buf [3])
  );
  FD   \spart0/d2/div_buf_4  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_4_rstpot_200 ),
    .Q(\spart0/d2/div_buf [4])
  );
  FD   \spart0/d2/div_buf_5  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_5_rstpot_202 ),
    .Q(\spart0/d2/div_buf [5])
  );
  FD   \spart0/d2/div_buf_6  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_6_rstpot_204 ),
    .Q(\spart0/d2/div_buf [6])
  );
  FD   \spart0/d2/div_buf_7  (
    .C(clk_BUFGP_28),
    .D(\spart0/d2/div_buf_7_rstpot_207 ),
    .Q(\spart0/d2/div_buf [7])
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_0_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [0]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [0]),
    .O(\spart0/d2/div_buf_0_rstpot_180 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_1_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [1]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [1]),
    .O(\spart0/d2/div_buf_1_rstpot_194 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_2_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [2]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [2]),
    .O(\spart0/d2/div_buf_2_rstpot_196 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_3_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [3]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [3]),
    .O(\spart0/d2/div_buf_3_rstpot_198 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_4_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [4]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [4]),
    .O(\spart0/d2/div_buf_4_rstpot_200 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_5_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [5]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [5]),
    .O(\spart0/d2/div_buf_5_rstpot_202 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_6_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [6]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [6]),
    .O(\spart0/d2/div_buf_6_rstpot_204 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \spart0/d2/div_buf_7_rstpot  (
    .I0(\spart0/d2/div_buf_7_not0001 ),
    .I1(\spart0/r/data [7]),
    .I2(\spart0/d2/N11 ),
    .I3(\spart0/d2/div_buf [7]),
    .O(\spart0/d2/div_buf_7_rstpot_207 )
  );
  LUT5 #(
    .INIT ( 32'h0000E2AA ))
  \spart0/d1/count_4_rstpot  (
    .I0(\spart0/d1/count [4]),
    .I1(\spart0/d1/rdy_121 ),
    .I2(\spart0/d1/Result [4]),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .I4(\spart0/d1/count_or0000_119 ),
    .O(\spart0/d1/count_4_rstpot_117 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \spart0/d2/div_buf_0_mux000011  (
    .I0(\driver0/ioaddr [1]),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/iorw_69 ),
    .I3(\driver0/iocs_65 ),
    .O(\spart0/d2/N11 )
  );
  LUT4 #(
    .INIT ( 16'h006A ))
  \spart0/d1/count_0_rstpot  (
    .I0(\spart0/d1/count [0]),
    .I1(\spart0/d1/rdy_121 ),
    .I2(\spart0/d1/shift_reg_cmp_eq0000 ),
    .I3(\spart0/d1/count_or0000_119 ),
    .O(\spart0/d1/count_0_rstpot_109 )
  );
  LUT5 #(
    .INIT ( 32'h00006AAA ))
  \spart0/d1/count_1_rstpot  (
    .I0(\spart0/d1/count [1]),
    .I1(\spart0/d1/count [0]),
    .I2(\spart0/d1/rdy_121 ),
    .I3(\spart0/d1/shift_reg_cmp_eq0000 ),
    .I4(\spart0/d1/count_or0000_119 ),
    .O(\spart0/d1/count_1_rstpot_111 )
  );
  LUT6 #(
    .INIT ( 64'h000000006AAAAAAA ))
  \spart0/d1/count_2_rstpot  (
    .I0(\spart0/d1/count [2]),
    .I1(\spart0/d1/count [1]),
    .I2(\spart0/d1/count [0]),
    .I3(\spart0/d1/rdy_121 ),
    .I4(\spart0/d1/shift_reg_cmp_eq0000 ),
    .I5(\spart0/d1/count_or0000_119 ),
    .O(\spart0/d1/count_2_rstpot_113 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \spart0/d1/count_not00011_SW0  (
    .I0(\spart0/d1/count [1]),
    .I1(\spart0/d1/count [0]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h000000006AAAAAAA ))
  \spart0/d1/count_3_rstpot  (
    .I0(\spart0/d1/count [3]),
    .I1(\spart0/d1/count [2]),
    .I2(\spart0/d1/rdy_121 ),
    .I3(N33),
    .I4(\spart0/d1/shift_reg_cmp_eq0000 ),
    .I5(\spart0/d1/count_or0000_119 ),
    .O(\spart0/d1/count_3_rstpot_115 )
  );
  LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \spart0/d2/div_buf_7_not00011  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/ioaddr [1]),
    .I3(\driver0/iorw_69 ),
    .I4(\driver0/iocs_65 ),
    .O(\spart0/d2/div_buf_7_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \spart0/t1/t_shift_reg_9_or00001  (
    .I0(RST_IBUF_22),
    .I1(\spart0/t1/t_busy_276 ),
    .I2(\spart0/d1/t_enable_173 ),
    .O(\spart0/t1/t_shift_reg_9_or0000 )
  );
  LUT5 #(
    .INIT ( 32'hAABAAAAA ))
  \spart0/r/start_or00001  (
    .I0(RST_IBUF_22),
    .I1(\driver0/ioaddr [1]),
    .I2(\driver0/iorw_69 ),
    .I3(\driver0/ioaddr [0]),
    .I4(\driver0/iocs_65 ),
    .O(\spart0/r/start_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h1500 ))
  \spart0/t1/t_count_cst1  (
    .I0(RST_IBUF_22),
    .I1(\spart0/d1/t_enable_173 ),
    .I2(\spart0/t1/t_busy_276 ),
    .I3(\spart0/d_enable ),
    .O(\spart0/t1/t_count_cst )
  );
  LUT4 #(
    .INIT ( 16'hBFAA ))
  \spart0/t1/Mcount_t_count_val1  (
    .I0(RST_IBUF_22),
    .I1(\spart0/d1/t_enable_173 ),
    .I2(\spart0/t1/t_busy_276 ),
    .I3(\spart0/d_enable ),
    .O(\spart0/t1/Mcount_t_count_val )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \driver0/data_mux0000<2>_SW3  (
    .I0(br_cfg_1_IBUF_26),
    .I1(\driver0/ioaddr [1]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'hEAEAEAFB40404051 ))
  \driver0/data_mux0000<2>  (
    .I0(\driver0/baud_done_30 ),
    .I1(\driver0/ioaddr [0]),
    .I2(\driver0/data [2]),
    .I3(br_cfg_0_IBUF_25),
    .I4(N35),
    .I5(\driver0/internal_data [2]),
    .O(\driver0/data_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \spart0/t1/t_shift_reg_0_and00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\spart0/d1/t_enable_173 ),
    .O(\spart0/t1/t_shift_reg_0_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \spart0/t1/t_shift_reg_1_mux00001  (
    .I0(\spart0/t1/t_shift_reg [2]),
    .I1(\spart0/t1/t_busy_276 ),
    .I2(\spart0/d1/t_enable_173 ),
    .O(\spart0/t1/t_shift_reg_1_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \driver0/internal_data_not00012  (
    .I0(\driver0/ready_for_data_72 ),
    .I1(\driver0/have_data_49 ),
    .I2(\spart0/r/rda_258 ),
    .I3(\driver0/baud_done_30 ),
    .O(\driver0/internal_data_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h2000202020002000 ))
  \spart0/d2/buf_rdy_mux000011  (
    .I0(\driver0/iocs_65 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/ioaddr [1]),
    .I3(\driver0/ioaddr [0]),
    .I4(RST_IBUF_22),
    .I5(\spart0/d2/buf_rdy_177 ),
    .O(\spart0/d2/buf_rdy_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_8_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [6]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [9]),
    .I5(\spart0/r/data [6]),
    .O(\spart0/t1/t_shift_reg_8_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_7_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [5]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [8]),
    .I5(\spart0/r/data [5]),
    .O(\spart0/t1/t_shift_reg_7_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_6_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [4]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [7]),
    .I5(\spart0/r/data [4]),
    .O(\spart0/t1/t_shift_reg_6_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_5_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [3]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [6]),
    .I5(\spart0/r/data [3]),
    .O(\spart0/t1/t_shift_reg_5_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_4_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [2]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [5]),
    .I5(\spart0/r/data [2]),
    .O(\spart0/t1/t_shift_reg_4_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_3_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [1]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [4]),
    .I5(\spart0/r/data [1]),
    .O(\spart0/t1/t_shift_reg_3_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFEFC54FCBA301030 ))
  \spart0/t1/t_shift_reg_2_mux00001  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\driver0/iorw_69 ),
    .I2(\driver0/data [0]),
    .I3(\spart0/d1/t_enable_173 ),
    .I4(\spart0/t1/t_shift_reg [3]),
    .I5(\spart0/r/data [0]),
    .O(\spart0/t1/t_shift_reg_2_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h8888888F88888888 ))
  \spart0/t1/t_shift_reg_8_not00011  (
    .I0(\spart0/t1/t_busy_276 ),
    .I1(\spart0/d1/t_enable_173 ),
    .I2(\driver0/iorw_69 ),
    .I3(\driver0/ioaddr [1]),
    .I4(\driver0/ioaddr [0]),
    .I5(\driver0/iocs_65 ),
    .O(\spart0/t1/t_shift_reg_8_not0001 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_28)
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<15>_INV_0  (
    .I(\spart0/d1/shift_reg [15]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [15])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<14>_INV_0  (
    .I(\spart0/d1/shift_reg [14]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [14])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<13>_INV_0  (
    .I(\spart0/d1/shift_reg [13]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [13])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<12>_INV_0  (
    .I(\spart0/d1/shift_reg [12]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [12])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<11>_INV_0  (
    .I(\spart0/d1/shift_reg [11]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [11])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<10>_INV_0  (
    .I(\spart0/d1/shift_reg [10]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [10])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<9>_INV_0  (
    .I(\spart0/d1/shift_reg [9]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [9])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<8>_INV_0  (
    .I(\spart0/d1/shift_reg [8]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [8])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<7>_INV_0  (
    .I(\spart0/d1/shift_reg [7]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [7])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<6>_INV_0  (
    .I(\spart0/d1/shift_reg [6]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [6])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<5>_INV_0  (
    .I(\spart0/d1/shift_reg [5]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [5])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<4>_INV_0  (
    .I(\spart0/d1/shift_reg [4]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [4])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<3>_INV_0  (
    .I(\spart0/d1/shift_reg [3]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [3])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<2>_INV_0  (
    .I(\spart0/d1/shift_reg [2]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [2])
  );
  INV   \spart0/d1/Msub_shift_reg_addsub0000_lut<1>_INV_0  (
    .I(\spart0/d1/shift_reg [1]),
    .O(\spart0/d1/Msub_shift_reg_addsub0000_lut [1])
  );
  INV   \spart0/t1/Mcount_t_count_xor<0>11_INV_0  (
    .I(\spart0/t1/t_count [0]),
    .O(\spart0/t1/Result [0])
  );
  INV   \spart0/r/Mcount_zcnt_xor<0>11_INV_0  (
    .I(\spart0/r/zcnt [0]),
    .O(\spart0/r/Mcount_zcnt )
  );
  INV   \spart0/r/Mcount_i_xor<0>11_INV_0  (
    .I(\spart0/r/i [0]),
    .O(\spart0/r/Mcount_i )
  );
  INV   \spart0/r/Mcount_bitcnt_xor<0>11_INV_0  (
    .I(\spart0/r/bitcnt [0]),
    .O(\spart0/r/Result [0])
  );
  INV   \spart0/t1/tbr1_INV_0  (
    .I(\spart0/t1/t_busy_276 ),
    .O(tbr)
  );
  INV   \spart0/d1/wr_en_inv1_INV_0  (
    .I(\spart0/d2/buf_rdy_177 ),
    .O(\spart0/d1/wr_en_inv )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

