// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Jun 11 17:54:35 2025
// Host        : DESKTOP-4VU606L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/hieu/workspace/vhdl_pj_end/project_1/project_1.sim/sim_1/impl/timing/xsim/tb_IntegralImage_time_impl.v
// Design      : IntegralImage
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Compute
   (DIADI,
    \res_int_reg[7]_0 ,
    DI,
    S,
    \res_int_reg[7]_1 ,
    \res_int_reg[7]_2 ,
    \res_int_reg[11]_0 ,
    \res_int_reg[11]_1 ,
    \res_int_reg[15]_0 ,
    \res_int_reg[15]_1 ,
    Start_IBUF,
    memory_reg,
    CLK,
    AR);
  output [7:0]DIADI;
  output [7:0]\res_int_reg[7]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\res_int_reg[7]_1 ;
  input [3:0]\res_int_reg[7]_2 ;
  input [3:0]\res_int_reg[11]_0 ;
  input [3:0]\res_int_reg[11]_1 ;
  input [2:0]\res_int_reg[15]_0 ;
  input [3:0]\res_int_reg[15]_1 ;
  input Start_IBUF;
  input [1:0]memory_reg;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]DI;
  wire [7:0]DIADI;
  wire [15:8]Data_store;
  wire [3:0]S;
  wire Start_IBUF;
  wire [1:0]memory_reg;
  wire [15:0]res_int0;
  wire res_int0__0_carry__0_n_0;
  wire res_int0__0_carry__1_n_0;
  wire res_int0__0_carry_n_0;
  wire [3:0]\res_int_reg[11]_0 ;
  wire [3:0]\res_int_reg[11]_1 ;
  wire [2:0]\res_int_reg[15]_0 ;
  wire [3:0]\res_int_reg[15]_1 ;
  wire [7:0]\res_int_reg[7]_0 ;
  wire [3:0]\res_int_reg[7]_1 ;
  wire [3:0]\res_int_reg[7]_2 ;
  wire [2:0]NLW_res_int0__0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_res_int0__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_res_int0__0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_res_int0__0_carry__2_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_11
       (.I0(Data_store[15]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[7]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_12
       (.I0(Data_store[14]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[6]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_13
       (.I0(Data_store[13]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[5]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_14
       (.I0(Data_store[12]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[4]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_15
       (.I0(Data_store[11]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[3]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_16
       (.I0(Data_store[10]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[2]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_17
       (.I0(Data_store[9]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[1]));
  LUT3 #(
    .INIT(8'h80)) 
    memory_reg_i_18
       (.I0(Data_store[8]),
        .I1(Start_IBUF),
        .I2(memory_reg[1]),
        .O(DIADI[0]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_int0__0_carry
       (.CI(1'b0),
        .CO({res_int0__0_carry_n_0,NLW_res_int0__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(res_int0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_int0__0_carry__0
       (.CI(res_int0__0_carry_n_0),
        .CO({res_int0__0_carry__0_n_0,NLW_res_int0__0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\res_int_reg[7]_1 ),
        .O(res_int0[7:4]),
        .S(\res_int_reg[7]_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_int0__0_carry__1
       (.CI(res_int0__0_carry__0_n_0),
        .CO({res_int0__0_carry__1_n_0,NLW_res_int0__0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\res_int_reg[11]_0 ),
        .O(res_int0[11:8]),
        .S(\res_int_reg[11]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 res_int0__0_carry__2
       (.CI(res_int0__0_carry__1_n_0),
        .CO(NLW_res_int0__0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\res_int_reg[15]_0 }),
        .O(res_int0[15:12]),
        .S(\res_int_reg[15]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[0] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[0]),
        .Q(\res_int_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[10] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[10]),
        .Q(Data_store[10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[11] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[11]),
        .Q(Data_store[11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[12] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[12]),
        .Q(Data_store[12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[13] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[13]),
        .Q(Data_store[13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[14] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[14]),
        .Q(Data_store[14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[15] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[15]),
        .Q(Data_store[15]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[1] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[1]),
        .Q(\res_int_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[2] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[2]),
        .Q(\res_int_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[3] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[3]),
        .Q(\res_int_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[4] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[4]),
        .Q(\res_int_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[5] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[5]),
        .Q(\res_int_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[6] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[6]),
        .Q(\res_int_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[7] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[7]),
        .Q(\res_int_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[8] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[8]),
        .Q(Data_store[8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_int_reg[9] 
       (.C(CLK),
        .CE(memory_reg[0]),
        .CLR(AR),
        .D(res_int0[9]),
        .Q(Data_store[9]));
endmodule

module Controller
   (D,
    \FSM_onehot_STATE_reg[19]_0 ,
    \FSM_onehot_STATE_reg[9]_0 ,
    E,
    \FSM_onehot_STATE_reg[8]_0 ,
    \FSM_onehot_STATE_reg[19]_1 ,
    \FSM_onehot_STATE_reg[11]_0 ,
    WE2_out,
    ADDRARDADDR,
    RE1_out,
    \IMAGE_HEIGHT[2] ,
    \IMAGE_WIDTH[4] ,
    DIADI,
    Q,
    \counter_value_reg[5] ,
    \counter_value_reg[6] ,
    \counter_value_reg[7] ,
    \counter_value_reg[5]_0 ,
    \counter_value_reg[6]_0 ,
    WE_IBUF,
    memory_reg,
    Start_IBUF,
    mem_addr_IBUF,
    addr_B,
    addr_A,
    memory_reg_0,
    memory_reg_1,
    memory_reg_2,
    memory_reg_3,
    memory_reg_4,
    memory_reg_5,
    memory_reg_6,
    addr_C,
    addr_D,
    RE_IBUF,
    CO,
    \FSM_onehot_STATE_reg[6]_0 ,
    IMAGE_HEIGHT_IBUF,
    IMAGE_WIDTH_IBUF,
    memory_reg_7,
    Data_in_IBUF,
    \FSM_onehot_STATE_reg[19]_2 ,
    \FSM_onehot_STATE_reg[10]_0 ,
    CLK,
    AR,
    \FSM_onehot_STATE_reg[8]_1 ,
    lopt);
  output [3:0]D;
  output [10:0]\FSM_onehot_STATE_reg[19]_0 ;
  output [5:0]\FSM_onehot_STATE_reg[9]_0 ;
  output [0:0]E;
  output [0:0]\FSM_onehot_STATE_reg[8]_0 ;
  output \FSM_onehot_STATE_reg[19]_1 ;
  output \FSM_onehot_STATE_reg[11]_0 ;
  output WE2_out;
  output [7:0]ADDRARDADDR;
  output RE1_out;
  output \IMAGE_HEIGHT[2] ;
  output \IMAGE_WIDTH[4] ;
  output [7:0]DIADI;
  input [3:0]Q;
  input \counter_value_reg[5] ;
  input \counter_value_reg[6] ;
  input [5:0]\counter_value_reg[7] ;
  input \counter_value_reg[5]_0 ;
  input \counter_value_reg[6]_0 ;
  input WE_IBUF;
  input memory_reg;
  input Start_IBUF;
  input [7:0]mem_addr_IBUF;
  input [7:0]addr_B;
  input [7:0]addr_A;
  input memory_reg_0;
  input memory_reg_1;
  input memory_reg_2;
  input memory_reg_3;
  input memory_reg_4;
  input memory_reg_5;
  input memory_reg_6;
  input [7:0]addr_C;
  input [7:0]addr_D;
  input RE_IBUF;
  input [0:0]CO;
  input [0:0]\FSM_onehot_STATE_reg[6]_0 ;
  input [8:0]IMAGE_HEIGHT_IBUF;
  input [8:0]IMAGE_WIDTH_IBUF;
  input [7:0]memory_reg_7;
  input [7:0]Data_in_IBUF;
  input [0:0]\FSM_onehot_STATE_reg[19]_2 ;
  input [0:0]\FSM_onehot_STATE_reg[10]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]\FSM_onehot_STATE_reg[8]_1 ;
  output lopt;

  wire [7:0]ADDRARDADDR;
  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [7:0]DIADI;
  wire [7:0]Data_in_IBUF;
  wire [0:0]E;
  wire \FSM_onehot_STATE[10]_i_1_n_0 ;
  wire \FSM_onehot_STATE[11]_i_1_n_0 ;
  wire \FSM_onehot_STATE[13]_i_1_n_0 ;
  wire \FSM_onehot_STATE[19]_i_1_n_0 ;
  wire \FSM_onehot_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_STATE[5]_i_1_n_0 ;
  wire \FSM_onehot_STATE[6]_i_1_n_0 ;
  wire \FSM_onehot_STATE[7]_i_1_n_0 ;
  wire \FSM_onehot_STATE[7]_i_2_n_0 ;
  wire \FSM_onehot_STATE[9]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_STATE_reg[10]_0 ;
  wire \FSM_onehot_STATE_reg[11]_0 ;
  wire [10:0]\FSM_onehot_STATE_reg[19]_0 ;
  wire \FSM_onehot_STATE_reg[19]_1 ;
  wire [0:0]\FSM_onehot_STATE_reg[19]_2 ;
  wire [0:0]\FSM_onehot_STATE_reg[6]_0 ;
  wire \FSM_onehot_STATE_reg[6]_lopt_replica_1 ;
  wire [0:0]\FSM_onehot_STATE_reg[8]_0 ;
  wire [0:0]\FSM_onehot_STATE_reg[8]_1 ;
  wire [5:0]\FSM_onehot_STATE_reg[9]_0 ;
  wire \FSM_onehot_STATE_reg_n_0_[10] ;
  wire \FSM_onehot_STATE_reg_n_0_[13] ;
  wire \FSM_onehot_STATE_reg_n_0_[3] ;
  wire \FSM_onehot_STATE_reg_n_0_[4] ;
  wire \FSM_onehot_STATE_reg_n_0_[5] ;
  wire \IMAGE_HEIGHT[2] ;
  wire [8:0]IMAGE_HEIGHT_IBUF;
  wire \IMAGE_WIDTH[4] ;
  wire [8:0]IMAGE_WIDTH_IBUF;
  wire [3:0]Q;
  wire RE1_out;
  wire RE_IBUF;
  wire Start_IBUF;
  wire WE2_out;
  wire WE_IBUF;
  wire [7:0]addr_A;
  wire [7:0]addr_B;
  wire [7:0]addr_C;
  wire [7:0]addr_D;
  wire \counter_value_reg[5] ;
  wire \counter_value_reg[5]_0 ;
  wire \counter_value_reg[6] ;
  wire \counter_value_reg[6]_0 ;
  wire [5:0]\counter_value_reg[7] ;
  wire [7:0]mem_addr_IBUF;
  wire memory_reg;
  wire memory_reg_0;
  wire memory_reg_1;
  wire memory_reg_2;
  wire memory_reg_3;
  wire memory_reg_4;
  wire memory_reg_5;
  wire memory_reg_6;
  wire [7:0]memory_reg_7;
  wire memory_reg_i_28_n_0;
  wire memory_reg_i_29_n_0;
  wire memory_reg_i_30_n_0;
  wire memory_reg_i_32_n_0;
  wire memory_reg_i_33_n_0;
  wire memory_reg_i_35_n_0;
  wire memory_reg_i_36_n_0;
  wire memory_reg_i_38_n_0;
  wire memory_reg_i_39_n_0;
  wire memory_reg_i_41_n_0;
  wire memory_reg_i_42_n_0;
  wire memory_reg_i_44_n_0;
  wire memory_reg_i_45_n_0;
  wire memory_reg_i_47_n_0;
  wire memory_reg_i_48_n_0;
  wire memory_reg_i_50_n_0;
  wire memory_reg_i_51_n_0;
  wire p_0_in;
  wire p_0_in3_in;
  wire p_0_in8_in;
  wire p_7_in;
  wire size_error_o_OBUF_inst_i_4_n_0;
  wire size_error_o_OBUF_inst_i_5_n_0;

  assign lopt = \FSM_onehot_STATE_reg[6]_lopt_replica_1 ;
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \FSM_onehot_STATE[10]_i_1 
       (.I0(\FSM_onehot_STATE_reg[10]_0 ),
        .I1(p_0_in3_in),
        .I2(p_0_in),
        .I3(\FSM_onehot_STATE_reg[6]_0 ),
        .I4(\FSM_onehot_STATE_reg[19]_0 [10]),
        .O(\FSM_onehot_STATE[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[11]_i_1 
       (.I0(Start_IBUF),
        .I1(\FSM_onehot_STATE_reg_n_0_[13] ),
        .O(\FSM_onehot_STATE[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_STATE[13]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[5] ),
        .I1(Start_IBUF),
        .I2(\FSM_onehot_STATE_reg_n_0_[13] ),
        .O(\FSM_onehot_STATE[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[19]_i_1 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [5]),
        .I1(\FSM_onehot_STATE_reg[19]_2 ),
        .O(\FSM_onehot_STATE[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_STATE[4]_i_1 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [3]),
        .I1(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I2(Start_IBUF),
        .O(\FSM_onehot_STATE[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_STATE[5]_i_1 
       (.I0(\FSM_onehot_STATE_reg_n_0_[4] ),
        .I1(Start_IBUF),
        .O(\FSM_onehot_STATE[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \FSM_onehot_STATE[6]_i_1 
       (.I0(\FSM_onehot_STATE_reg[6]_0 ),
        .I1(p_0_in),
        .I2(\FSM_onehot_STATE[7]_i_2_n_0 ),
        .I3(\IMAGE_HEIGHT[2] ),
        .I4(\FSM_onehot_STATE_reg[19]_0 [6]),
        .O(\FSM_onehot_STATE[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \FSM_onehot_STATE[7]_i_1 
       (.I0(CO),
        .I1(\FSM_onehot_STATE_reg[19]_0 [4]),
        .I2(\FSM_onehot_STATE[7]_i_2_n_0 ),
        .I3(\IMAGE_HEIGHT[2] ),
        .I4(\FSM_onehot_STATE_reg[19]_0 [6]),
        .O(\FSM_onehot_STATE[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \FSM_onehot_STATE[7]_i_2 
       (.I0(IMAGE_WIDTH_IBUF[8]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(\IMAGE_WIDTH[4] ),
        .O(\FSM_onehot_STATE[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_STATE[9]_i_1 
       (.I0(p_0_in3_in),
        .I1(\FSM_onehot_STATE_reg[10]_0 ),
        .O(\FSM_onehot_STATE[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [2]),
        .Q(\FSM_onehot_STATE_reg[19]_0 [0]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[10]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[11]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [6]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [1]),
        .Q(p_0_in3_in));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[13]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in8_in),
        .Q(\FSM_onehot_STATE_reg[19]_0 [7]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [9]),
        .Q(p_0_in8_in));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg_n_0_[10] ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [8]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [8]),
        .Q(p_7_in));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_7_in),
        .Q(\FSM_onehot_STATE_reg[19]_0 [9]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[19]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [10]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [0]),
        .Q(\FSM_onehot_STATE_reg[19]_0 [1]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg_n_0_[3] ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [2]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[19]_0 [7]),
        .Q(\FSM_onehot_STATE_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[4]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_STATE_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_STATE[5]_i_1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_STATE_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[6]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [3]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[6]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg[6]_lopt_replica_1 ));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[7]_i_1_n_0 ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [4]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE_reg[8]_1 ),
        .Q(\FSM_onehot_STATE_reg[19]_0 [5]));
  (* FSM_ENCODED_STATES = "s14:00000000000000000001,s13:00000000000000000100,s12:00000000000000001000,s19:00000000000000010000,s18:00000000000001000000,s3:00000000000010000000,s17:00000000001000000000,s2:00000000100000000000,s16:00000001000000000000,s1:00000010000000000000,s11:00000100000000000000,s0:00000000000000100000,s10:00001000000000000000,s7:00010000000000000000,s6:00000000010000000000,s9:01000000000000000000,s8:00100000000000000000,s5:10000000000000000000,s15:00000000000000000010,s4:00000000000100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_STATE_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_STATE[9]_i_1_n_0 ),
        .Q(p_0_in));
  LUT3 #(
    .INIT(8'hFD)) 
    \counter_value[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [6]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter_value[0]_i_1__0 
       (.I0(\counter_value_reg[7] [0]),
        .I1(p_0_in),
        .I2(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I3(\FSM_onehot_STATE_reg[19]_0 [10]),
        .O(\FSM_onehot_STATE_reg[9]_0 [0]));
  LUT4 #(
    .INIT(16'h0110)) 
    \counter_value[1]_i_1 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    \counter_value[1]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(\counter_value_reg[7] [0]),
        .I4(\counter_value_reg[7] [1]),
        .O(\FSM_onehot_STATE_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'h0001010101000000)) 
    \counter_value[2]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(\counter_value_reg[7] [1]),
        .I4(\counter_value_reg[7] [0]),
        .I5(\counter_value_reg[7] [2]),
        .O(\FSM_onehot_STATE_reg[9]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_value[4]_i_2 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [10]),
        .O(\FSM_onehot_STATE_reg[11]_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \counter_value[5]_i_1 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\counter_value_reg[5] ),
        .I3(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h01000001)) 
    \counter_value[5]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(\counter_value_reg[5]_0 ),
        .I4(\counter_value_reg[7] [3]),
        .O(\FSM_onehot_STATE_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'h1001)) 
    \counter_value[6]_i_1 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\counter_value_reg[6] ),
        .I3(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h01000001)) 
    \counter_value[6]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(\counter_value_reg[6]_0 ),
        .I4(\counter_value_reg[7] [4]),
        .O(\FSM_onehot_STATE_reg[9]_0 [4]));
  LUT6 #(
    .INIT(64'h0101000100000100)) 
    \counter_value[7]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(\counter_value_reg[7] [4]),
        .I4(\counter_value_reg[6]_0 ),
        .I5(\counter_value_reg[7] [5]),
        .O(\FSM_onehot_STATE_reg[9]_0 [5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_value[8]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I3(p_0_in3_in),
        .I4(\FSM_onehot_STATE_reg[19]_0 [4]),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_value[8]_i_1__0 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [5]),
        .I1(p_0_in),
        .I2(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I3(\FSM_onehot_STATE_reg[19]_0 [10]),
        .O(\FSM_onehot_STATE_reg[8]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter_value[8]_i_3 
       (.I0(\FSM_onehot_STATE_reg[19]_0 [10]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [6]),
        .I2(p_0_in),
        .O(\FSM_onehot_STATE_reg[19]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    memory_reg_i_1
       (.I0(\FSM_onehot_STATE_reg[19]_0 [4]),
        .I1(\FSM_onehot_STATE_reg[19]_0 [5]),
        .I2(WE_IBUF),
        .I3(\FSM_onehot_STATE_reg[19]_0 [1]),
        .O(WE2_out));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_10
       (.I0(memory_reg),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_50_n_0),
        .I3(memory_reg_i_51_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[0]),
        .O(ADDRARDADDR[0]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_19
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[7]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[7]),
        .O(DIADI[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    memory_reg_i_2
       (.I0(RE_IBUF),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(\FSM_onehot_STATE_reg_n_0_[10] ),
        .O(RE1_out));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_20
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[6]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[6]),
        .O(DIADI[6]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_21
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[5]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[5]),
        .O(DIADI[5]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_22
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[4]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[4]),
        .O(DIADI[4]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_23
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[3]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[3]),
        .O(DIADI[3]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_24
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[2]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[2]),
        .O(DIADI[2]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_25
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[1]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[1]),
        .O(DIADI[1]));
  LUT4 #(
    .INIT(16'h8F80)) 
    memory_reg_i_26
       (.I0(\FSM_onehot_STATE_reg[19]_0 [1]),
        .I1(memory_reg_7[0]),
        .I2(Start_IBUF),
        .I3(Data_in_IBUF[0]),
        .O(DIADI[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    memory_reg_i_28
       (.I0(\FSM_onehot_STATE_reg_n_0_[10] ),
        .I1(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I2(p_0_in8_in),
        .I3(p_7_in),
        .O(memory_reg_i_28_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_29
       (.I0(addr_B[7]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[7]),
        .O(memory_reg_i_29_n_0));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_3
       (.I0(memory_reg_6),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_29_n_0),
        .I3(memory_reg_i_30_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[7]),
        .O(ADDRARDADDR[7]));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_30
       (.I0(addr_C[7]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[7]),
        .O(memory_reg_i_30_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_32
       (.I0(addr_B[6]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[6]),
        .O(memory_reg_i_32_n_0));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_33
       (.I0(addr_C[6]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[6]),
        .O(memory_reg_i_33_n_0));
  LUT5 #(
    .INIT(32'hAA8CAA80)) 
    memory_reg_i_35
       (.I0(addr_D[5]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_C[5]),
        .O(memory_reg_i_35_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_36
       (.I0(addr_B[5]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[5]),
        .O(memory_reg_i_36_n_0));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_38
       (.I0(addr_C[4]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[4]),
        .O(memory_reg_i_38_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_39
       (.I0(addr_B[4]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[4]),
        .O(memory_reg_i_39_n_0));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_4
       (.I0(memory_reg_5),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_32_n_0),
        .I3(memory_reg_i_33_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[6]),
        .O(ADDRARDADDR[6]));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_41
       (.I0(addr_B[3]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[3]),
        .O(memory_reg_i_41_n_0));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_42
       (.I0(addr_C[3]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[3]),
        .O(memory_reg_i_42_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_44
       (.I0(addr_B[2]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[2]),
        .O(memory_reg_i_44_n_0));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_45
       (.I0(addr_C[2]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[2]),
        .O(memory_reg_i_45_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_47
       (.I0(addr_B[1]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[1]),
        .O(memory_reg_i_47_n_0));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_48
       (.I0(addr_C[1]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[1]),
        .O(memory_reg_i_48_n_0));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_5
       (.I0(memory_reg_4),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_35_n_0),
        .I3(memory_reg_i_36_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[5]),
        .O(ADDRARDADDR[5]));
  LUT5 #(
    .INIT(32'hFFC80008)) 
    memory_reg_i_50
       (.I0(addr_C[0]),
        .I1(p_0_in8_in),
        .I2(p_7_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_D[0]),
        .O(memory_reg_i_50_n_0));
  LUT5 #(
    .INIT(32'h000B0008)) 
    memory_reg_i_51
       (.I0(addr_B[0]),
        .I1(p_7_in),
        .I2(p_0_in8_in),
        .I3(\FSM_onehot_STATE_reg_n_0_[3] ),
        .I4(addr_A[0]),
        .O(memory_reg_i_51_n_0));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_6
       (.I0(memory_reg_3),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_38_n_0),
        .I3(memory_reg_i_39_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[4]),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_7
       (.I0(memory_reg_2),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_41_n_0),
        .I3(memory_reg_i_42_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[3]),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_8
       (.I0(memory_reg_1),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_44_n_0),
        .I3(memory_reg_i_45_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[2]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    memory_reg_i_9
       (.I0(memory_reg_0),
        .I1(memory_reg_i_28_n_0),
        .I2(memory_reg_i_47_n_0),
        .I3(memory_reg_i_48_n_0),
        .I4(Start_IBUF),
        .I5(mem_addr_IBUF[1]),
        .O(ADDRARDADDR[1]));
  LUT5 #(
    .INIT(32'h00000001)) 
    size_error_o_OBUF_inst_i_2
       (.I0(IMAGE_WIDTH_IBUF[4]),
        .I1(IMAGE_WIDTH_IBUF[3]),
        .I2(IMAGE_WIDTH_IBUF[7]),
        .I3(IMAGE_WIDTH_IBUF[6]),
        .I4(IMAGE_WIDTH_IBUF[5]),
        .O(\IMAGE_WIDTH[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD222A)) 
    size_error_o_OBUF_inst_i_3
       (.I0(size_error_o_OBUF_inst_i_4_n_0),
        .I1(IMAGE_HEIGHT_IBUF[2]),
        .I2(IMAGE_HEIGHT_IBUF[0]),
        .I3(IMAGE_HEIGHT_IBUF[1]),
        .I4(IMAGE_HEIGHT_IBUF[8]),
        .I5(size_error_o_OBUF_inst_i_5_n_0),
        .O(\IMAGE_HEIGHT[2] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    size_error_o_OBUF_inst_i_4
       (.I0(IMAGE_HEIGHT_IBUF[3]),
        .I1(IMAGE_HEIGHT_IBUF[4]),
        .I2(IMAGE_HEIGHT_IBUF[6]),
        .I3(IMAGE_HEIGHT_IBUF[7]),
        .I4(IMAGE_HEIGHT_IBUF[5]),
        .O(size_error_o_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'h0000222A)) 
    size_error_o_OBUF_inst_i_5
       (.I0(\IMAGE_WIDTH[4] ),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[8]),
        .O(size_error_o_OBUF_inst_i_5_n_0));
endmodule

module Counter
   (Q,
    \counter_value_reg[4]_0 ,
    S,
    \counter_value_reg[6]_0 ,
    DI,
    \counter_value_reg[4]_1 ,
    \counter_value_reg[4]_2 ,
    \counter_value_reg[3]_0 ,
    \counter_value_reg[3]_1 ,
    \counter_value_reg[2]_0 ,
    \counter_value_reg[0]_0 ,
    \counter_value_reg[0]_1 ,
    \counter_value_reg[3]_2 ,
    \counter_value_reg[2]_1 ,
    \counter_value_reg[2]_2 ,
    \IMAGE_WIDTH[3] ,
    \IMAGE_WIDTH[1] ,
    \counter_value_reg[3]_3 ,
    \counter_value_reg[1]_0 ,
    \counter_value_reg[0]_2 ,
    \counter_value_reg[3]_4 ,
    \counter_value_reg[6]_1 ,
    \counter_value_reg[1]_1 ,
    \counter_value_reg[1]_2 ,
    \IMAGE_WIDTH[1]_0 ,
    \IMAGE_WIDTH[4] ,
    \counter_value_reg[0]_3 ,
    \counter_value_reg[2]_3 ,
    \counter_value_reg[0]_4 ,
    \counter_value_reg[0]_5 ,
    \counter_value_reg[0]_6 ,
    \counter_value_reg[3]_5 ,
    \counter_value_reg[8]_0 ,
    \counter_value_reg[4]_3 ,
    IMAGE_HEIGHT_IBUF,
    IMAGE_WIDTH_IBUF,
    addr_C1__22_carry__0_i_1_0,
    addr_C1__22_carry__0_i_1_1,
    addr_B1__0_carry__0_i_5_0,
    O,
    addr_A1__35_carry__0_i_1_0,
    addr_C1__35_carry__0_i_1_0,
    addr_B1__35_carry__0_i_1_0,
    addr_B1__35_carry__0_i_1_1,
    addr_C1__35_carry__0_i_1_1,
    addr_C1__35_carry__0_i_1_2,
    addr_C1__22_carry_i_4_0,
    addr_C1__35_carry__0,
    addr_B1__35_carry__0,
    addr_C1__35_carry__0_0,
    addr_A1__35_carry__0,
    E,
    CLK,
    AR,
    \counter_value_reg[6]_2 );
  output [3:0]Q;
  output \counter_value_reg[4]_0 ;
  output [2:0]S;
  output [2:0]\counter_value_reg[6]_0 ;
  output [2:0]DI;
  output [2:0]\counter_value_reg[4]_1 ;
  output [2:0]\counter_value_reg[4]_2 ;
  output [2:0]\counter_value_reg[3]_0 ;
  output [2:0]\counter_value_reg[3]_1 ;
  output [3:0]\counter_value_reg[2]_0 ;
  output [3:0]\counter_value_reg[0]_0 ;
  output [3:0]\counter_value_reg[0]_1 ;
  output [2:0]\counter_value_reg[3]_2 ;
  output [3:0]\counter_value_reg[2]_1 ;
  output [3:0]\counter_value_reg[2]_2 ;
  output [2:0]\IMAGE_WIDTH[3] ;
  output [3:0]\IMAGE_WIDTH[1] ;
  output [2:0]\counter_value_reg[3]_3 ;
  output [0:0]\counter_value_reg[1]_0 ;
  output [0:0]\counter_value_reg[0]_2 ;
  output [2:0]\counter_value_reg[3]_4 ;
  output [3:0]\counter_value_reg[6]_1 ;
  output [0:0]\counter_value_reg[1]_1 ;
  output [0:0]\counter_value_reg[1]_2 ;
  output [3:0]\IMAGE_WIDTH[1]_0 ;
  output [0:0]\IMAGE_WIDTH[4] ;
  output [0:0]\counter_value_reg[0]_3 ;
  output [3:0]\counter_value_reg[2]_3 ;
  output [0:0]\counter_value_reg[0]_4 ;
  output [0:0]\counter_value_reg[0]_5 ;
  output [0:0]\counter_value_reg[0]_6 ;
  output \counter_value_reg[3]_5 ;
  input [1:0]\counter_value_reg[8]_0 ;
  input \counter_value_reg[4]_3 ;
  input [8:0]IMAGE_HEIGHT_IBUF;
  input [7:0]IMAGE_WIDTH_IBUF;
  input addr_C1__22_carry__0_i_1_0;
  input addr_C1__22_carry__0_i_1_1;
  input addr_B1__0_carry__0_i_5_0;
  input [1:0]O;
  input [0:0]addr_A1__35_carry__0_i_1_0;
  input addr_C1__35_carry__0_i_1_0;
  input [0:0]addr_B1__35_carry__0_i_1_0;
  input [1:0]addr_B1__35_carry__0_i_1_1;
  input [0:0]addr_C1__35_carry__0_i_1_1;
  input [1:0]addr_C1__35_carry__0_i_1_2;
  input addr_C1__22_carry_i_4_0;
  input addr_C1__35_carry__0;
  input [0:0]addr_B1__35_carry__0;
  input [0:0]addr_C1__35_carry__0_0;
  input [0:0]addr_A1__35_carry__0;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input [3:0]\counter_value_reg[6]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]DI;
  wire [0:0]E;
  wire [8:2]I;
  wire [8:0]IMAGE_HEIGHT_IBUF;
  wire [3:0]\IMAGE_WIDTH[1] ;
  wire [3:0]\IMAGE_WIDTH[1]_0 ;
  wire [2:0]\IMAGE_WIDTH[3] ;
  wire [0:0]\IMAGE_WIDTH[4] ;
  wire [7:0]IMAGE_WIDTH_IBUF;
  wire [1:0]O;
  wire [3:0]Q;
  wire [2:0]S;
  wire addr_A1__0_carry__0_i_10_n_0;
  wire addr_A1__0_carry__0_i_11_n_0;
  wire addr_A1__0_carry__0_i_8_n_0;
  wire addr_A1__0_carry__0_i_9_n_0;
  wire addr_A1__0_carry_i_8_n_0;
  wire addr_A1__22_carry__0_i_2_n_0;
  wire addr_A1__22_carry_i_8_n_0;
  wire [0:0]addr_A1__35_carry__0;
  wire [0:0]addr_A1__35_carry__0_i_1_0;
  wire addr_A1__35_carry__0_i_2_n_0;
  wire addr_B1__0_carry__0_i_10_n_0;
  wire addr_B1__0_carry__0_i_11_n_0;
  wire addr_B1__0_carry__0_i_12_n_0;
  wire addr_B1__0_carry__0_i_13_n_0;
  wire addr_B1__0_carry__0_i_14_n_0;
  wire addr_B1__0_carry__0_i_15_n_0;
  wire addr_B1__0_carry__0_i_5_0;
  wire addr_B1__0_carry__0_i_8_n_0;
  wire addr_B1__0_carry__0_i_9_n_0;
  wire addr_B1__0_carry_i_10_n_0;
  wire addr_B1__0_carry_i_8_n_0;
  wire addr_B1__0_carry_i_9_n_0;
  wire addr_B1__22_carry__0_i_2_n_0;
  wire addr_B1__22_carry_i_11_n_0;
  wire [0:0]addr_B1__35_carry__0;
  wire [0:0]addr_B1__35_carry__0_i_1_0;
  wire [1:0]addr_B1__35_carry__0_i_1_1;
  wire addr_B1__35_carry__0_i_2_n_0;
  wire addr_C1__0_carry__0_i_10_n_0;
  wire addr_C1__0_carry__0_i_12_n_0;
  wire addr_C1__0_carry__0_i_8_n_0;
  wire addr_C1__0_carry__0_i_9_n_0;
  wire addr_C1__22_carry__0_i_1_0;
  wire addr_C1__22_carry__0_i_1_1;
  wire addr_C1__22_carry__0_i_2_n_0;
  wire addr_C1__22_carry__0_i_3_n_0;
  wire addr_C1__22_carry_i_4_0;
  wire addr_C1__22_carry_i_8_n_0;
  wire addr_C1__35_carry__0;
  wire [0:0]addr_C1__35_carry__0_0;
  wire addr_C1__35_carry__0_i_1_0;
  wire [0:0]addr_C1__35_carry__0_i_1_1;
  wire [1:0]addr_C1__35_carry__0_i_1_2;
  wire addr_C1__35_carry__0_i_2_n_0;
  wire [3:0]\counter_value_reg[0]_0 ;
  wire [3:0]\counter_value_reg[0]_1 ;
  wire [0:0]\counter_value_reg[0]_2 ;
  wire [0:0]\counter_value_reg[0]_3 ;
  wire [0:0]\counter_value_reg[0]_4 ;
  wire [0:0]\counter_value_reg[0]_5 ;
  wire [0:0]\counter_value_reg[0]_6 ;
  wire [0:0]\counter_value_reg[1]_0 ;
  wire [0:0]\counter_value_reg[1]_1 ;
  wire [0:0]\counter_value_reg[1]_2 ;
  wire [3:0]\counter_value_reg[2]_0 ;
  wire [3:0]\counter_value_reg[2]_1 ;
  wire [3:0]\counter_value_reg[2]_2 ;
  wire [3:0]\counter_value_reg[2]_3 ;
  wire [2:0]\counter_value_reg[3]_0 ;
  wire [2:0]\counter_value_reg[3]_1 ;
  wire [2:0]\counter_value_reg[3]_2 ;
  wire [2:0]\counter_value_reg[3]_3 ;
  wire [2:0]\counter_value_reg[3]_4 ;
  wire \counter_value_reg[3]_5 ;
  wire \counter_value_reg[4]_0 ;
  wire [2:0]\counter_value_reg[4]_1 ;
  wire [2:0]\counter_value_reg[4]_2 ;
  wire \counter_value_reg[4]_3 ;
  wire [2:0]\counter_value_reg[6]_0 ;
  wire [3:0]\counter_value_reg[6]_1 ;
  wire [3:0]\counter_value_reg[6]_2 ;
  wire [1:0]\counter_value_reg[8]_0 ;
  wire iSubMax0_carry_i_4_n_0;
  wire iSubMax0_carry_i_5_n_0;
  wire iSubMax0_carry_i_6_n_0;
  wire iSubMax0_carry_i_7_n_0;
  wire [8:2]p_1_in;

  LUT6 #(
    .INIT(64'h040004004F440400)) 
    addr_A1__0_carry__0_i_1
       (.I0(addr_B1__0_carry_i_8_n_0),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(addr_B1__0_carry__0_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_9_n_0),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    addr_A1__0_carry__0_i_10
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(I[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[2]),
        .I5(I[4]),
        .O(addr_A1__0_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'hA802)) 
    addr_A1__0_carry__0_i_11
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(I[2]),
        .O(addr_A1__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h040004004F440400)) 
    addr_A1__0_carry__0_i_2
       (.I0(addr_B1__0_carry_i_9_n_0),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_8_n_0),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h002220F200002020)) 
    addr_A1__0_carry__0_i_3
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(addr_B1__0_carry_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry_i_10_n_0),
        .I4(addr_B1__0_carry_i_9_n_0),
        .I5(IMAGE_WIDTH_IBUF[2]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h002022F2FFDFDD0D)) 
    addr_A1__0_carry__0_i_4
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(addr_B1__0_carry__0_i_9_n_0),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(addr_B1__0_carry__0_i_8_n_0),
        .I4(addr_A1__0_carry__0_i_8_n_0),
        .I5(addr_A1__0_carry__0_i_9_n_0),
        .O(\IMAGE_WIDTH[1]_0 [3]));
  LUT6 #(
    .INIT(64'h9969996966969969)) 
    addr_A1__0_carry__0_i_5
       (.I0(DI[2]),
        .I1(addr_A1__0_carry__0_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry__0_i_9_n_0),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .I5(addr_B1__0_carry__0_i_8_n_0),
        .O(\IMAGE_WIDTH[1]_0 [2]));
  LUT6 #(
    .INIT(64'h6966696696996966)) 
    addr_A1__0_carry__0_i_6
       (.I0(DI[1]),
        .I1(addr_A1__0_carry__0_i_10_n_0),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_9_n_0),
        .O(\IMAGE_WIDTH[1]_0 [1]));
  LUT6 #(
    .INIT(64'h6966696696996966)) 
    addr_A1__0_carry__0_i_7
       (.I0(DI[0]),
        .I1(addr_A1__0_carry__0_i_11_n_0),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_8_n_0),
        .O(\IMAGE_WIDTH[1]_0 [0]));
  LUT3 #(
    .INIT(8'h9F)) 
    addr_A1__0_carry__0_i_8
       (.I0(iSubMax0_carry_i_4_n_0),
        .I1(Q[3]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .O(addr_A1__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hBB4B44B4BB4BBB4B)) 
    addr_A1__0_carry__0_i_9
       (.I0(addr_B1__0_carry__0_i_15_n_0),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry__0_i_11_n_0),
        .I4(addr_B1__0_carry__0_i_9_n_0),
        .I5(IMAGE_WIDTH_IBUF[2]),
        .O(addr_A1__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h44B444B4BB4B44B4)) 
    addr_A1__0_carry_i_1
       (.I0(addr_B1__0_carry_i_8_n_0),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry_i_9_n_0),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .I5(addr_B1__0_carry_i_10_n_0),
        .O(\counter_value_reg[3]_2 [2]));
  LUT4 #(
    .INIT(16'h88D2)) 
    addr_A1__0_carry_i_2
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(Q[1]),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(Q[0]),
        .O(\counter_value_reg[3]_2 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_A1__0_carry_i_3
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(Q[0]),
        .O(\counter_value_reg[3]_2 [0]));
  LUT6 #(
    .INIT(64'h966666993CCCCC3C)) 
    addr_A1__0_carry_i_4
       (.I0(I[2]),
        .I1(addr_A1__0_carry_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[1]),
        .O(\counter_value_reg[2]_1 [3]));
  LUT6 #(
    .INIT(64'h3C5AF069CCAA0066)) 
    addr_A1__0_carry_i_5
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(I[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[2]_1 [2]));
  LUT4 #(
    .INIT(16'h8B84)) 
    addr_A1__0_carry_i_6
       (.I0(Q[1]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(Q[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .O(\counter_value_reg[2]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_A1__0_carry_i_7
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(Q[0]),
        .O(\counter_value_reg[2]_1 [0]));
  LUT5 #(
    .INIT(32'hAAA80002)) 
    addr_A1__0_carry_i_8
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(I[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I[3]),
        .O(addr_A1__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h555559555959AA59)) 
    addr_A1__22_carry__0_i_1
       (.I0(addr_A1__22_carry__0_i_2_n_0),
        .I1(IMAGE_WIDTH_IBUF[4]),
        .I2(addr_B1__0_carry_i_9_n_0),
        .I3(IMAGE_WIDTH_IBUF[5]),
        .I4(addr_B1__0_carry_i_10_n_0),
        .I5(addr_A1__22_carry_i_8_n_0),
        .O(\IMAGE_WIDTH[4] ));
  LUT6 #(
    .INIT(64'hBB4B44B4BB4BBB4B)) 
    addr_A1__22_carry__0_i_2
       (.I0(addr_B1__0_carry__0_i_8_n_0),
        .I1(IMAGE_WIDTH_IBUF[3]),
        .I2(IMAGE_WIDTH_IBUF[4]),
        .I3(addr_B1__0_carry_i_8_n_0),
        .I4(addr_B1__0_carry_i_9_n_0),
        .I5(IMAGE_WIDTH_IBUF[5]),
        .O(addr_A1__22_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h22D222D2DD2D22D2)) 
    addr_A1__22_carry_i_1
       (.I0(IMAGE_WIDTH_IBUF[3]),
        .I1(addr_B1__0_carry_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[4]),
        .I3(addr_B1__0_carry_i_9_n_0),
        .I4(IMAGE_WIDTH_IBUF[5]),
        .I5(addr_B1__0_carry_i_10_n_0),
        .O(\IMAGE_WIDTH[3] [2]));
  LUT4 #(
    .INIT(16'h88D2)) 
    addr_A1__22_carry_i_2
       (.I0(IMAGE_WIDTH_IBUF[4]),
        .I1(Q[1]),
        .I2(IMAGE_WIDTH_IBUF[5]),
        .I3(Q[0]),
        .O(\IMAGE_WIDTH[3] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_A1__22_carry_i_3
       (.I0(IMAGE_WIDTH_IBUF[4]),
        .I1(Q[0]),
        .O(\IMAGE_WIDTH[3] [0]));
  LUT6 #(
    .INIT(64'h69999696C3333C33)) 
    addr_A1__22_carry_i_4
       (.I0(I[2]),
        .I1(addr_A1__22_carry_i_8_n_0),
        .I2(Q[0]),
        .I3(IMAGE_WIDTH_IBUF[5]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[4]),
        .O(\counter_value_reg[2]_2 [3]));
  LUT6 #(
    .INIT(64'h3C5AF069CCAA0066)) 
    addr_A1__22_carry_i_5
       (.I0(IMAGE_WIDTH_IBUF[5]),
        .I1(IMAGE_WIDTH_IBUF[4]),
        .I2(I[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[3]),
        .O(\counter_value_reg[2]_2 [2]));
  LUT4 #(
    .INIT(16'h8B84)) 
    addr_A1__22_carry_i_6
       (.I0(Q[1]),
        .I1(IMAGE_WIDTH_IBUF[3]),
        .I2(Q[0]),
        .I3(IMAGE_WIDTH_IBUF[4]),
        .O(\counter_value_reg[2]_2 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_A1__22_carry_i_7
       (.I0(IMAGE_WIDTH_IBUF[3]),
        .I1(Q[0]),
        .O(\counter_value_reg[2]_2 [0]));
  LUT5 #(
    .INIT(32'h01FEFFFF)) 
    addr_A1__22_carry_i_8
       (.I0(I[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(I[3]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .O(addr_A1__22_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h99696696)) 
    addr_A1__35_carry__0_i_1
       (.I0(O[1]),
        .I1(addr_A1__35_carry__0),
        .I2(IMAGE_WIDTH_IBUF[7]),
        .I3(Q[0]),
        .I4(addr_A1__35_carry__0_i_2_n_0),
        .O(\counter_value_reg[0]_3 ));
  LUT5 #(
    .INIT(32'h78878888)) 
    addr_A1__35_carry__0_i_2
       (.I0(O[0]),
        .I1(addr_A1__35_carry__0_i_1_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(IMAGE_WIDTH_IBUF[6]),
        .O(addr_A1__35_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    addr_A1__35_carry_i_2
       (.I0(addr_A1__35_carry__0_i_1_0),
        .I1(O[0]),
        .I2(Q[0]),
        .I3(IMAGE_WIDTH_IBUF[6]),
        .O(\counter_value_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0010100000751030)) 
    addr_B1__0_carry__0_i_1
       (.I0(addr_B1__0_carry__0_i_8_n_0),
        .I1(addr_B1__0_carry_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(IMAGE_WIDTH_IBUF[1]),
        .I5(addr_B1__0_carry__0_i_9_n_0),
        .O(\counter_value_reg[4]_1 [2]));
  LUT6 #(
    .INIT(64'h5555555400000001)) 
    addr_B1__0_carry__0_i_10
       (.I0(addr_B1__0_carry__0_i_5_0),
        .I1(I[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[2]),
        .I5(I[4]),
        .O(addr_B1__0_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    addr_B1__0_carry__0_i_11
       (.I0(Q[3]),
        .I1(iSubMax0_carry_i_4_n_0),
        .O(addr_B1__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hEED2EED2D1ED2E12)) 
    addr_B1__0_carry__0_i_12
       (.I0(addr_B1__0_carry__0_i_15_n_0),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry__0_i_11_n_0),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .I5(addr_B1__0_carry__0_i_9_n_0),
        .O(addr_B1__0_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'h55540001)) 
    addr_B1__0_carry__0_i_13
       (.I0(addr_B1__0_carry__0_i_5_0),
        .I1(I[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I[3]),
        .O(addr_B1__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h7878780000000078)) 
    addr_B1__0_carry__0_i_14
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I[2]),
        .O(addr_B1__0_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    addr_B1__0_carry__0_i_15
       (.I0(I[7]),
        .I1(Q[3]),
        .I2(iSubMax0_carry_i_4_n_0),
        .O(addr_B1__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0004040000044F44)) 
    addr_B1__0_carry__0_i_2
       (.I0(addr_B1__0_carry_i_9_n_0),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_8_n_0),
        .O(\counter_value_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'h00101151001000B0)) 
    addr_B1__0_carry__0_i_3
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(addr_B1__0_carry_i_8_n_0),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(addr_B1__0_carry_i_10_n_0),
        .I4(addr_B1__0_carry_i_9_n_0),
        .I5(IMAGE_WIDTH_IBUF[1]),
        .O(\counter_value_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'h101020F2EFEFDF0D)) 
    addr_B1__0_carry__0_i_4
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(addr_B1__0_carry__0_i_9_n_0),
        .I2(addr_B1__0_carry__0_i_10_n_0),
        .I3(addr_B1__0_carry__0_i_11_n_0),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_12_n_0),
        .O(\IMAGE_WIDTH[1] [3]));
  LUT6 #(
    .INIT(64'h5656659AA9A99A65)) 
    addr_B1__0_carry__0_i_5
       (.I0(\counter_value_reg[4]_1 [2]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(addr_B1__0_carry__0_i_11_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(addr_B1__0_carry__0_i_9_n_0),
        .I5(addr_B1__0_carry__0_i_10_n_0),
        .O(\IMAGE_WIDTH[1] [2]));
  LUT6 #(
    .INIT(64'h6669696666966999)) 
    addr_B1__0_carry__0_i_6
       (.I0(\counter_value_reg[4]_1 [1]),
        .I1(addr_B1__0_carry__0_i_13_n_0),
        .I2(addr_B1__0_carry__0_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(IMAGE_WIDTH_IBUF[1]),
        .I5(addr_B1__0_carry__0_i_9_n_0),
        .O(\IMAGE_WIDTH[1] [1]));
  LUT6 #(
    .INIT(64'h6669696666699699)) 
    addr_B1__0_carry__0_i_7
       (.I0(\counter_value_reg[4]_1 [0]),
        .I1(addr_B1__0_carry__0_i_14_n_0),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(addr_B1__0_carry__0_i_8_n_0),
        .O(\IMAGE_WIDTH[1] [0]));
  LUT5 #(
    .INIT(32'h55555556)) 
    addr_B1__0_carry__0_i_8
       (.I0(I[4]),
        .I1(I[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I[3]),
        .O(addr_B1__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    addr_B1__0_carry__0_i_9
       (.I0(Q[2]),
        .I1(I[4]),
        .I2(I[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(I[3]),
        .O(addr_B1__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h112D2E12112DD1ED)) 
    addr_B1__0_carry_i_1
       (.I0(addr_B1__0_carry_i_8_n_0),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(addr_B1__0_carry_i_9_n_0),
        .I4(addr_B1__0_carry_i_10_n_0),
        .I5(IMAGE_WIDTH_IBUF[2]),
        .O(\counter_value_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__0_carry_i_10
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(addr_B1__0_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h0AA0399C)) 
    addr_B1__0_carry_i_2
       (.I0(Q[1]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(Q[0]),
        .O(\counter_value_reg[3]_0 [1]));
  LUT3 #(
    .INIT(8'h06)) 
    addr_B1__0_carry_i_3
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(Q[0]),
        .O(\counter_value_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA99AAAAA)) 
    addr_B1__0_carry_i_4
       (.I0(\counter_value_reg[3]_0 [2]),
        .I1(Q[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .I5(Q[1]),
        .O(\counter_value_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h556600335A3CF069)) 
    addr_B1__0_carry_i_5
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(I[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'h03A9)) 
    addr_B1__0_carry_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[0]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    addr_B1__0_carry_i_7
       (.I0(Q[0]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'h5556)) 
    addr_B1__0_carry_i_8
       (.I0(I[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(I[2]),
        .O(addr_B1__0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    addr_B1__0_carry_i_9
       (.I0(I[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(addr_B1__0_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h00FF50AFC03F2BD4)) 
    addr_B1__22_carry__0_i_1
       (.I0(addr_B1__0_carry_i_10_n_0),
        .I1(addr_C1__22_carry__0_i_1_1),
        .I2(addr_B1__22_carry_i_11_n_0),
        .I3(addr_B1__22_carry__0_i_2_n_0),
        .I4(addr_C1__22_carry_i_4_0),
        .I5(addr_B1__0_carry_i_9_n_0),
        .O(\counter_value_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hE1EE)) 
    addr_B1__22_carry__0_i_2
       (.I0(addr_C1__22_carry__0_i_1_0),
        .I1(addr_B1__0_carry__0_i_8_n_0),
        .I2(addr_B1__0_carry_i_8_n_0),
        .I3(addr_C1__22_carry__0_i_1_1),
        .O(addr_B1__22_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h111EEEE1111E111E)) 
    addr_B1__22_carry_i_1
       (.I0(addr_C1__22_carry__0_i_1_0),
        .I1(addr_B1__0_carry_i_8_n_0),
        .I2(addr_C1__22_carry_i_4_0),
        .I3(addr_B1__0_carry_i_10_n_0),
        .I4(addr_B1__0_carry_i_9_n_0),
        .I5(addr_C1__22_carry__0_i_1_1),
        .O(\counter_value_reg[3]_3 [2]));
  LUT5 #(
    .INIT(32'h0000FE01)) 
    addr_B1__22_carry_i_11
       (.I0(I[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(I[3]),
        .I4(addr_C1__22_carry__0_i_1_0),
        .O(addr_B1__22_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h882D)) 
    addr_B1__22_carry_i_2
       (.I0(addr_C1__22_carry__0_i_1_1),
        .I1(Q[1]),
        .I2(addr_C1__22_carry_i_4_0),
        .I3(Q[0]),
        .O(\counter_value_reg[3]_3 [1]));
  LUT6 #(
    .INIT(64'h0999999990000000)) 
    addr_B1__22_carry_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .I5(IMAGE_WIDTH_IBUF[3]),
        .O(\counter_value_reg[3]_3 [0]));
  LUT6 #(
    .INIT(64'h66699669CCCC3CC3)) 
    addr_B1__22_carry_i_4
       (.I0(I[2]),
        .I1(addr_B1__22_carry_i_11_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(addr_C1__22_carry_i_4_0),
        .I5(addr_C1__22_carry__0_i_1_1),
        .O(\counter_value_reg[2]_3 [3]));
  LUT6 #(
    .INIT(64'hC3CC5A550F009996)) 
    addr_B1__22_carry_i_5
       (.I0(addr_C1__22_carry_i_4_0),
        .I1(addr_C1__22_carry__0_i_1_1),
        .I2(addr_C1__22_carry__0_i_1_0),
        .I3(I[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\counter_value_reg[2]_3 [2]));
  LUT4 #(
    .INIT(16'h4E41)) 
    addr_B1__22_carry_i_6
       (.I0(addr_C1__22_carry__0_i_1_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(addr_C1__22_carry__0_i_1_1),
        .O(\counter_value_reg[2]_3 [1]));
  LUT5 #(
    .INIT(32'h15554000)) 
    addr_B1__22_carry_i_7
       (.I0(Q[0]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .O(\counter_value_reg[2]_3 [0]));
  LUT6 #(
    .INIT(64'h09F6F6F6F6090909)) 
    addr_B1__35_carry__0_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(addr_C1__35_carry__0),
        .I3(addr_B1__35_carry__0),
        .I4(addr_B1__35_carry__0_i_1_1[0]),
        .I5(addr_B1__35_carry__0_i_2_n_0),
        .O(\counter_value_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h00A6FF59FF5900A6)) 
    addr_B1__35_carry__0_i_2
       (.I0(IMAGE_WIDTH_IBUF[7]),
        .I1(IMAGE_WIDTH_IBUF[6]),
        .I2(addr_C1__35_carry__0_i_1_0),
        .I3(Q[0]),
        .I4(addr_B1__35_carry__0_i_1_0),
        .I5(addr_B1__35_carry__0_i_1_1[1]),
        .O(addr_B1__35_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    addr_B1__35_carry_i_2
       (.I0(addr_B1__35_carry__0),
        .I1(addr_B1__35_carry__0_i_1_1[0]),
        .I2(addr_C1__35_carry__0),
        .I3(Q[0]),
        .O(\counter_value_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0E8C0A0008800000)) 
    addr_C1__0_carry__0_i_1
       (.I0(I[4]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(I[3]),
        .I5(Q[2]),
        .O(\counter_value_reg[4]_2 [2]));
  LUT4 #(
    .INIT(16'h2A80)) 
    addr_C1__0_carry__0_i_10
       (.I0(I[3]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .O(addr_C1__0_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    addr_C1__0_carry__0_i_12
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(I[3]),
        .O(addr_C1__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0080F88800808000)) 
    addr_C1__0_carry__0_i_2
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(I[2]),
        .I2(I[3]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(I[4]),
        .O(\counter_value_reg[4]_2 [1]));
  LUT6 #(
    .INIT(64'h0080F88800808000)) 
    addr_C1__0_carry__0_i_3
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(Q[1]),
        .I2(I[2]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(I[3]),
        .O(\counter_value_reg[4]_2 [0]));
  LUT6 #(
    .INIT(64'h3E222000C1DDDFFF)) 
    addr_C1__0_carry__0_i_4
       (.I0(Q[3]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(Q[2]),
        .I4(addr_C1__0_carry__0_i_8_n_0),
        .I5(addr_C1__0_carry__0_i_9_n_0),
        .O(\counter_value_reg[6]_1 [3]));
  LUT6 #(
    .INIT(64'h56A959A6A95659A6)) 
    addr_C1__0_carry__0_i_5
       (.I0(\counter_value_reg[4]_2 [2]),
        .I1(Q[3]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(addr_C1__0_carry__0_i_8_n_0),
        .I4(Q[2]),
        .I5(IMAGE_WIDTH_IBUF[1]),
        .O(\counter_value_reg[6]_1 [2]));
  LUT6 #(
    .INIT(64'h596AA6955995A66A)) 
    addr_C1__0_carry__0_i_6
       (.I0(\counter_value_reg[4]_2 [1]),
        .I1(I[4]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(addr_C1__0_carry__0_i_10_n_0),
        .I5(Q[2]),
        .O(\counter_value_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'h59A65959A659A6A6)) 
    addr_C1__0_carry__0_i_7
       (.I0(\counter_value_reg[4]_2 [0]),
        .I1(I[4]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(addr_B1__0_carry__0_i_5_0),
        .I4(I[2]),
        .I5(addr_C1__0_carry__0_i_12_n_0),
        .O(\counter_value_reg[6]_1 [0]));
  LUT4 #(
    .INIT(16'h2A80)) 
    addr_C1__0_carry__0_i_8
       (.I0(I[4]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .O(addr_C1__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hBB78BB8788877787)) 
    addr_C1__0_carry__0_i_9
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(Q[2]),
        .I2(I[7]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(Q[3]),
        .I5(IMAGE_WIDTH_IBUF[1]),
        .O(addr_C1__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h211D1E22DEE21E22)) 
    addr_C1__0_carry_i_1
       (.I0(I[3]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(I[2]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[2]),
        .O(\counter_value_reg[3]_4 [2]));
  LUT5 #(
    .INIT(32'h0C6A6AC0)) 
    addr_C1__0_carry_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(IMAGE_WIDTH_IBUF[1]),
        .O(\counter_value_reg[3]_4 [1]));
  LUT3 #(
    .INIT(8'h60)) 
    addr_C1__0_carry_i_3
       (.I0(IMAGE_WIDTH_IBUF[0]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(Q[0]),
        .O(\counter_value_reg[3]_4 [0]));
  LUT6 #(
    .INIT(64'h96AAAAAAAAAAAAAA)) 
    addr_C1__0_carry_i_4
       (.I0(\counter_value_reg[3]_4 [2]),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\counter_value_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'h3560953F35606AC0)) 
    addr_C1__0_carry_i_5
       (.I0(IMAGE_WIDTH_IBUF[1]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(I[2]),
        .O(\counter_value_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h0C6A)) 
    addr_C1__0_carry_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[0]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_C1__0_carry_i_7
       (.I0(Q[0]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .O(\counter_value_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'hC03F17E800FFA05F)) 
    addr_C1__22_carry__0_i_1
       (.I0(Q[1]),
        .I1(addr_C1__22_carry__0_i_1_1),
        .I2(addr_C1__22_carry__0_i_2_n_0),
        .I3(addr_C1__22_carry__0_i_3_n_0),
        .I4(addr_C1__22_carry_i_4_0),
        .I5(I[2]),
        .O(\counter_value_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    addr_C1__22_carry__0_i_2
       (.I0(I[3]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .O(addr_C1__22_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2DDD)) 
    addr_C1__22_carry__0_i_3
       (.I0(I[4]),
        .I1(addr_C1__22_carry__0_i_1_0),
        .I2(I[3]),
        .I3(addr_C1__22_carry__0_i_1_1),
        .O(addr_C1__22_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hB444B4444BBBB444)) 
    addr_C1__22_carry_i_1
       (.I0(addr_C1__22_carry__0_i_1_0),
        .I1(I[3]),
        .I2(addr_C1__22_carry__0_i_1_1),
        .I3(I[2]),
        .I4(Q[1]),
        .I5(addr_C1__22_carry_i_4_0),
        .O(\counter_value_reg[3]_1 [2]));
  LUT4 #(
    .INIT(16'h8878)) 
    addr_C1__22_carry_i_2
       (.I0(addr_C1__22_carry__0_i_1_1),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(addr_C1__22_carry_i_4_0),
        .O(\counter_value_reg[3]_1 [1]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    addr_C1__22_carry_i_3
       (.I0(Q[1]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .O(\counter_value_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'hA6A6F30C59A6F30C)) 
    addr_C1__22_carry_i_4
       (.I0(I[2]),
        .I1(I[3]),
        .I2(addr_C1__22_carry__0_i_1_0),
        .I3(addr_C1__22_carry_i_8_n_0),
        .I4(addr_C1__22_carry__0_i_1_1),
        .I5(Q[0]),
        .O(\counter_value_reg[2]_0 [3]));
  LUT6 #(
    .INIT(64'hB4444BBBB444B444)) 
    addr_C1__22_carry_i_5
       (.I0(addr_C1__22_carry_i_4_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(addr_C1__22_carry__0_i_1_1),
        .I4(addr_C1__22_carry__0_i_1_0),
        .I5(I[2]),
        .O(\counter_value_reg[2]_0 [2]));
  LUT4 #(
    .INIT(16'hB444)) 
    addr_C1__22_carry_i_6
       (.I0(addr_C1__22_carry__0_i_1_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(addr_C1__22_carry__0_i_1_1),
        .O(\counter_value_reg[2]_0 [1]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    addr_C1__22_carry_i_7
       (.I0(Q[0]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .O(\counter_value_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    addr_C1__22_carry_i_8
       (.I0(Q[1]),
        .I1(addr_C1__22_carry_i_4_0),
        .O(addr_C1__22_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h59A6A6A6)) 
    addr_C1__35_carry__0_i_1
       (.I0(addr_C1__35_carry__0_i_2_n_0),
        .I1(Q[1]),
        .I2(addr_C1__35_carry__0),
        .I3(addr_C1__35_carry__0_0),
        .I4(addr_C1__35_carry__0_i_1_2[0]),
        .O(\counter_value_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hA60059FF59FFA600)) 
    addr_C1__35_carry__0_i_2
       (.I0(IMAGE_WIDTH_IBUF[7]),
        .I1(IMAGE_WIDTH_IBUF[6]),
        .I2(addr_C1__35_carry__0_i_1_0),
        .I3(Q[0]),
        .I4(addr_C1__35_carry__0_i_1_1),
        .I5(addr_C1__35_carry__0_i_1_2[1]),
        .O(addr_C1__35_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    addr_C1__35_carry_i_2
       (.I0(addr_C1__35_carry__0_0),
        .I1(addr_C1__35_carry__0_i_1_2[0]),
        .I2(addr_C1__35_carry__0),
        .I3(Q[0]),
        .O(\counter_value_reg[0]_5 ));
  LUT5 #(
    .INIT(32'h01111000)) 
    \counter_value[2]_i_1 
       (.I0(\counter_value_reg[8]_0 [1]),
        .I1(\counter_value_reg[8]_0 [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0111111110000000)) 
    \counter_value[3]_i_1 
       (.I0(\counter_value_reg[8]_0 [1]),
        .I1(\counter_value_reg[8]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I[2]),
        .I5(I[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \counter_value[4]_i_1 
       (.I0(\counter_value_reg[4]_3 ),
        .I1(I[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[3]),
        .I5(I[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_value[5]_i_2__0 
       (.I0(I[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(I[2]),
        .I4(I[4]),
        .O(\counter_value_reg[3]_5 ));
  LUT5 #(
    .INIT(32'h11010010)) 
    \counter_value[7]_i_1 
       (.I0(\counter_value_reg[8]_0 [1]),
        .I1(\counter_value_reg[8]_0 [0]),
        .I2(Q[3]),
        .I3(\counter_value_reg[4]_0 ),
        .I4(I[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h1101111100100000)) 
    \counter_value[8]_i_2 
       (.I0(\counter_value_reg[8]_0 [1]),
        .I1(\counter_value_reg[8]_0 [0]),
        .I2(I[7]),
        .I3(\counter_value_reg[4]_0 ),
        .I4(Q[3]),
        .I5(I[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_value[8]_i_3__0 
       (.I0(I[4]),
        .I1(I[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[3]),
        .I5(Q[2]),
        .O(\counter_value_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\counter_value_reg[6]_2 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\counter_value_reg[6]_2 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(I[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(I[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(I[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\counter_value_reg[6]_2 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\counter_value_reg[6]_2 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(I[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[8]),
        .Q(I[8]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    iMax0_carry_i_1
       (.I0(Q[3]),
        .I1(IMAGE_HEIGHT_IBUF[6]),
        .I2(IMAGE_HEIGHT_IBUF[8]),
        .I3(I[8]),
        .I4(I[7]),
        .I5(IMAGE_HEIGHT_IBUF[7]),
        .O(\counter_value_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    iMax0_carry_i_2
       (.I0(Q[2]),
        .I1(IMAGE_HEIGHT_IBUF[5]),
        .I2(I[3]),
        .I3(IMAGE_HEIGHT_IBUF[3]),
        .I4(IMAGE_HEIGHT_IBUF[4]),
        .I5(I[4]),
        .O(\counter_value_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    iMax0_carry_i_3
       (.I0(IMAGE_HEIGHT_IBUF[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(IMAGE_HEIGHT_IBUF[0]),
        .I4(I[2]),
        .I5(IMAGE_HEIGHT_IBUF[2]),
        .O(\counter_value_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'h0008000041208241)) 
    iSubMax0_carry_i_1
       (.I0(IMAGE_HEIGHT_IBUF[6]),
        .I1(IMAGE_HEIGHT_IBUF[7]),
        .I2(I[7]),
        .I3(Q[3]),
        .I4(iSubMax0_carry_i_4_n_0),
        .I5(iSubMax0_carry_i_5_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h8200001800828200)) 
    iSubMax0_carry_i_2
       (.I0(iSubMax0_carry_i_6_n_0),
        .I1(I[4]),
        .I2(IMAGE_HEIGHT_IBUF[4]),
        .I3(iSubMax0_carry_i_7_n_0),
        .I4(I[3]),
        .I5(IMAGE_HEIGHT_IBUF[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h4100002800824100)) 
    iSubMax0_carry_i_3
       (.I0(IMAGE_HEIGHT_IBUF[0]),
        .I1(I[2]),
        .I2(IMAGE_HEIGHT_IBUF[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_HEIGHT_IBUF[1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    iSubMax0_carry_i_4
       (.I0(Q[2]),
        .I1(I[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(I[2]),
        .I5(I[4]),
        .O(iSubMax0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    iSubMax0_carry_i_5
       (.I0(IMAGE_HEIGHT_IBUF[8]),
        .I1(I[8]),
        .O(iSubMax0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    iSubMax0_carry_i_6
       (.I0(IMAGE_HEIGHT_IBUF[5]),
        .I1(Q[2]),
        .O(iSubMax0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    iSubMax0_carry_i_7
       (.I0(I[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(iSubMax0_carry_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module Counter_0
   (Q,
    \counter_value_reg[4]_0 ,
    S,
    \counter_value_reg[8]_0 ,
    DI,
    \counter_value_reg[5]_0 ,
    \counter_value_reg[7]_0 ,
    \counter_value_reg[7]_1 ,
    \counter_value_reg[3]_0 ,
    \base_input_addr[6] ,
    \counter_value_reg[2]_0 ,
    \counter_value_reg[3]_1 ,
    \counter_value_reg[2]_1 ,
    \counter_value_reg[2]_2 ,
    \counter_value_reg[3]_2 ,
    \counter_value_reg[2]_3 ,
    \counter_value_reg[6]_0 ,
    \counter_value_reg[6]_1 ,
    \counter_value_reg[6]_2 ,
    \counter_value_reg[8]_1 ,
    IMAGE_WIDTH_IBUF,
    base_input_addr_IBUF,
    p_0_in,
    addr_C0,
    addr_B0,
    base_output_addr_IBUF,
    \counter_value_reg[0]_0 ,
    CLK,
    AR,
    \counter_value_reg[7]_2 );
  output [5:0]Q;
  output \counter_value_reg[4]_0 ;
  output [2:0]S;
  output [2:0]\counter_value_reg[8]_0 ;
  output [2:0]DI;
  output [2:0]\counter_value_reg[5]_0 ;
  output [3:0]\counter_value_reg[7]_0 ;
  output [3:0]\counter_value_reg[7]_1 ;
  output \counter_value_reg[3]_0 ;
  output [3:0]\base_input_addr[6] ;
  output [3:0]\counter_value_reg[2]_0 ;
  output [3:0]\counter_value_reg[3]_1 ;
  output [3:0]\counter_value_reg[2]_1 ;
  output [3:0]\counter_value_reg[2]_2 ;
  output [3:0]\counter_value_reg[3]_2 ;
  output [3:0]\counter_value_reg[2]_3 ;
  output [3:0]\counter_value_reg[6]_0 ;
  output [3:0]\counter_value_reg[6]_1 ;
  output [3:0]\counter_value_reg[6]_2 ;
  input \counter_value_reg[8]_1 ;
  input [8:0]IMAGE_WIDTH_IBUF;
  input [7:0]base_input_addr_IBUF;
  input [7:0]p_0_in;
  input [7:0]addr_C0;
  input [7:0]addr_B0;
  input [7:0]base_output_addr_IBUF;
  input [0:0]\counter_value_reg[0]_0 ;
  input CLK;
  input [0:0]AR;
  input [5:0]\counter_value_reg[7]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]DI;
  wire [8:0]IMAGE_WIDTH_IBUF;
  wire [8:3]J;
  wire [5:0]Q;
  wire [2:0]S;
  wire addr_A__0_carry__0_i_8_n_0;
  wire addr_A__0_carry__0_i_9_n_0;
  wire addr_A__0_carry_i_8_n_0;
  wire [7:0]addr_B0;
  wire [7:0]addr_C0;
  wire addr_init0_carry__0_i_5_n_0;
  wire addr_init0_carry__0_i_6_n_0;
  wire [3:0]\base_input_addr[6] ;
  wire [7:0]base_input_addr_IBUF;
  wire [7:0]base_output_addr_IBUF;
  wire [0:0]\counter_value_reg[0]_0 ;
  wire [3:0]\counter_value_reg[2]_0 ;
  wire [3:0]\counter_value_reg[2]_1 ;
  wire [3:0]\counter_value_reg[2]_2 ;
  wire [3:0]\counter_value_reg[2]_3 ;
  wire \counter_value_reg[3]_0 ;
  wire [3:0]\counter_value_reg[3]_1 ;
  wire [3:0]\counter_value_reg[3]_2 ;
  wire \counter_value_reg[4]_0 ;
  wire [2:0]\counter_value_reg[5]_0 ;
  wire [3:0]\counter_value_reg[6]_0 ;
  wire [3:0]\counter_value_reg[6]_1 ;
  wire [3:0]\counter_value_reg[6]_2 ;
  wire [3:0]\counter_value_reg[7]_0 ;
  wire [3:0]\counter_value_reg[7]_1 ;
  wire [5:0]\counter_value_reg[7]_2 ;
  wire [2:0]\counter_value_reg[8]_0 ;
  wire \counter_value_reg[8]_1 ;
  wire jSubMax0_carry_i_4_n_0;
  wire jSubMax0_carry_i_5_n_0;
  wire jSubMax0_carry_i_6_n_0;
  wire jSubMax0_carry_i_7_n_0;
  wire [7:0]p_0_in;
  wire [8:3]p_1_in;

  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    addr_A__0_carry__0_i_1
       (.I0(p_0_in[5]),
        .I1(addr_init0_carry__0_i_6_n_0),
        .I2(base_input_addr_IBUF[5]),
        .O(\counter_value_reg[5]_0 [2]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    addr_A__0_carry__0_i_2
       (.I0(p_0_in[4]),
        .I1(addr_A__0_carry__0_i_8_n_0),
        .I2(base_input_addr_IBUF[4]),
        .O(\counter_value_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFEAAABAAA80002)) 
    addr_A__0_carry__0_i_3
       (.I0(base_input_addr_IBUF[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(J[3]),
        .I5(p_0_in[3]),
        .O(\counter_value_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h4DB2B24DB24D4DB2)) 
    addr_A__0_carry__0_i_4
       (.I0(base_input_addr_IBUF[6]),
        .I1(addr_init0_carry__0_i_5_n_0),
        .I2(p_0_in[6]),
        .I3(base_input_addr_IBUF[7]),
        .I4(p_0_in[7]),
        .I5(addr_A__0_carry__0_i_9_n_0),
        .O(\base_input_addr[6] [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    addr_A__0_carry__0_i_5
       (.I0(\counter_value_reg[5]_0 [2]),
        .I1(p_0_in[6]),
        .I2(addr_init0_carry__0_i_5_n_0),
        .I3(base_input_addr_IBUF[6]),
        .O(\base_input_addr[6] [2]));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    addr_A__0_carry__0_i_6
       (.I0(p_0_in[5]),
        .I1(addr_init0_carry__0_i_6_n_0),
        .I2(base_input_addr_IBUF[5]),
        .I3(\counter_value_reg[5]_0 [1]),
        .O(\base_input_addr[6] [1]));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    addr_A__0_carry__0_i_7
       (.I0(p_0_in[4]),
        .I1(addr_A__0_carry__0_i_8_n_0),
        .I2(base_input_addr_IBUF[4]),
        .I3(\counter_value_reg[5]_0 [0]),
        .O(\base_input_addr[6] [0]));
  LUT5 #(
    .INIT(32'h55555556)) 
    addr_A__0_carry__0_i_8
       (.I0(J[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(J[3]),
        .O(addr_A__0_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    addr_A__0_carry__0_i_9
       (.I0(jSubMax0_carry_i_5_n_0),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(addr_A__0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hE8E8E88E)) 
    addr_A__0_carry_i_1
       (.I0(base_input_addr_IBUF[2]),
        .I1(p_0_in[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(DI[2]));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hF990)) 
    addr_A__0_carry_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(base_input_addr_IBUF[1]),
        .I3(p_0_in[1]),
        .O(DI[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    addr_A__0_carry_i_3
       (.I0(base_input_addr_IBUF[0]),
        .I1(Q[0]),
        .I2(p_0_in[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    addr_A__0_carry_i_4
       (.I0(DI[2]),
        .I1(p_0_in[3]),
        .I2(addr_A__0_carry_i_8_n_0),
        .I3(base_input_addr_IBUF[3]),
        .O(\counter_value_reg[2]_3 [3]));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    addr_A__0_carry_i_5
       (.I0(DI[1]),
        .I1(base_input_addr_IBUF[2]),
        .I2(p_0_in[2]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\counter_value_reg[2]_3 [2]));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    addr_A__0_carry_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(base_input_addr_IBUF[1]),
        .I3(p_0_in[1]),
        .I4(DI[0]),
        .O(\counter_value_reg[2]_3 [1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    addr_A__0_carry_i_7
       (.I0(base_input_addr_IBUF[0]),
        .I1(Q[0]),
        .I2(p_0_in[0]),
        .O(\counter_value_reg[2]_3 [0]));
  LUT4 #(
    .INIT(16'h5556)) 
    addr_A__0_carry_i_8
       (.I0(J[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(addr_A__0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry__0_i_1
       (.I0(Q[5]),
        .I1(addr_B0[7]),
        .O(\counter_value_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry__0_i_2
       (.I0(addr_B0[6]),
        .I1(Q[4]),
        .O(\counter_value_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry__0_i_3
       (.I0(addr_B0[5]),
        .I1(Q[3]),
        .O(\counter_value_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry__0_i_4
       (.I0(addr_B0[4]),
        .I1(J[4]),
        .O(\counter_value_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry_i_1
       (.I0(addr_B0[3]),
        .I1(J[3]),
        .O(\counter_value_reg[3]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry_i_2
       (.I0(addr_B0[2]),
        .I1(Q[2]),
        .O(\counter_value_reg[3]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry_i_3
       (.I0(addr_B0[1]),
        .I1(Q[1]),
        .O(\counter_value_reg[3]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B_carry_i_4
       (.I0(Q[0]),
        .I1(addr_B0[0]),
        .O(\counter_value_reg[3]_2 [0]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    addr_C_carry__0_i_1
       (.I0(jSubMax0_carry_i_5_n_0),
        .I1(Q[4]),
        .I2(addr_C0[7]),
        .I3(Q[5]),
        .O(\counter_value_reg[6]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_C_carry__0_i_2
       (.I0(addr_C0[6]),
        .I1(addr_init0_carry__0_i_5_n_0),
        .O(\counter_value_reg[6]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_C_carry__0_i_3
       (.I0(addr_C0[5]),
        .I1(addr_init0_carry__0_i_6_n_0),
        .O(\counter_value_reg[6]_2 [1]));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    addr_C_carry__0_i_4
       (.I0(addr_C0[4]),
        .I1(J[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(J[4]),
        .O(\counter_value_reg[6]_2 [0]));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    addr_C_carry_i_1
       (.I0(addr_C0[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(J[3]),
        .O(\counter_value_reg[2]_2 [3]));
  LUT4 #(
    .INIT(16'h56A9)) 
    addr_C_carry_i_2
       (.I0(addr_C0[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\counter_value_reg[2]_2 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    addr_C_carry_i_3
       (.I0(addr_C0[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\counter_value_reg[2]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_C_carry_i_4
       (.I0(addr_C0[0]),
        .I1(Q[0]),
        .O(\counter_value_reg[2]_2 [0]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    addr_D_carry__0_i_1
       (.I0(jSubMax0_carry_i_5_n_0),
        .I1(Q[4]),
        .I2(addr_B0[7]),
        .I3(Q[5]),
        .O(\counter_value_reg[6]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_D_carry__0_i_2
       (.I0(addr_B0[6]),
        .I1(addr_init0_carry__0_i_5_n_0),
        .O(\counter_value_reg[6]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_D_carry__0_i_3
       (.I0(addr_B0[5]),
        .I1(addr_init0_carry__0_i_6_n_0),
        .O(\counter_value_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    addr_D_carry__0_i_4
       (.I0(addr_B0[4]),
        .I1(J[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(J[4]),
        .O(\counter_value_reg[6]_1 [0]));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    addr_D_carry_i_1
       (.I0(addr_B0[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(J[3]),
        .O(\counter_value_reg[2]_1 [3]));
  LUT4 #(
    .INIT(16'h56A9)) 
    addr_D_carry_i_2
       (.I0(addr_B0[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\counter_value_reg[2]_1 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    addr_D_carry_i_3
       (.I0(addr_B0[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\counter_value_reg[2]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_D_carry_i_4
       (.I0(addr_B0[0]),
        .I1(Q[0]),
        .O(\counter_value_reg[2]_1 [0]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    addr_init0_carry__0_i_1
       (.I0(jSubMax0_carry_i_5_n_0),
        .I1(Q[4]),
        .I2(base_output_addr_IBUF[7]),
        .I3(Q[5]),
        .O(\counter_value_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_init0_carry__0_i_2
       (.I0(base_output_addr_IBUF[6]),
        .I1(addr_init0_carry__0_i_5_n_0),
        .O(\counter_value_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_init0_carry__0_i_3
       (.I0(base_output_addr_IBUF[5]),
        .I1(addr_init0_carry__0_i_6_n_0),
        .O(\counter_value_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    addr_init0_carry__0_i_4
       (.I0(base_output_addr_IBUF[4]),
        .I1(J[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(J[4]),
        .O(\counter_value_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_init0_carry__0_i_5
       (.I0(Q[4]),
        .I1(jSubMax0_carry_i_5_n_0),
        .O(addr_init0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    addr_init0_carry__0_i_6
       (.I0(Q[3]),
        .I1(J[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(J[4]),
        .O(addr_init0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    addr_init0_carry_i_1
       (.I0(base_output_addr_IBUF[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(J[3]),
        .O(\counter_value_reg[2]_0 [3]));
  LUT4 #(
    .INIT(16'h56A9)) 
    addr_init0_carry_i_2
       (.I0(base_output_addr_IBUF[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\counter_value_reg[2]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    addr_init0_carry_i_3
       (.I0(base_output_addr_IBUF[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\counter_value_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    addr_init0_carry_i_4
       (.I0(base_output_addr_IBUF[0]),
        .I1(Q[0]),
        .O(\counter_value_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry__0_i_1
       (.I0(Q[5]),
        .I1(addr_C0[7]),
        .O(\counter_value_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry__0_i_2
       (.I0(addr_C0[6]),
        .I1(Q[4]),
        .O(\counter_value_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry__0_i_3
       (.I0(addr_C0[5]),
        .I1(Q[3]),
        .O(\counter_value_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry__0_i_4
       (.I0(addr_C0[4]),
        .I1(J[4]),
        .O(\counter_value_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry_i_1
       (.I0(addr_C0[3]),
        .I1(J[3]),
        .O(\counter_value_reg[3]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry_i_2
       (.I0(addr_C0[2]),
        .I1(Q[2]),
        .O(\counter_value_reg[3]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry_i_3
       (.I0(addr_C0[1]),
        .I1(Q[1]),
        .O(\counter_value_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_store_carry_i_4
       (.I0(Q[0]),
        .I1(addr_C0[0]),
        .O(\counter_value_reg[3]_1 [0]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter_value[3]_i_1__0 
       (.I0(\counter_value_reg[8]_1 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(J[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \counter_value[4]_i_1__0 
       (.I0(\counter_value_reg[8]_1 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(J[3]),
        .I5(J[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_value[5]_i_2 
       (.I0(J[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(J[4]),
        .O(\counter_value_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \counter_value[8]_i_2__0 
       (.I0(\counter_value_reg[8]_1 ),
        .I1(\counter_value_reg[4]_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(J[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_value[8]_i_4 
       (.I0(J[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(J[3]),
        .I5(Q[3]),
        .O(\counter_value_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[0] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[1] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[2] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[3] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(J[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[4] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(J[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[5] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[6] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[7] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_value_reg[7]_2 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_value_reg[8] 
       (.C(CLK),
        .CE(\counter_value_reg[0]_0 ),
        .CLR(AR),
        .D(p_1_in[8]),
        .Q(J[8]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    jMax0_carry_i_1
       (.I0(IMAGE_WIDTH_IBUF[8]),
        .I1(J[8]),
        .I2(Q[4]),
        .I3(IMAGE_WIDTH_IBUF[6]),
        .I4(Q[5]),
        .I5(IMAGE_WIDTH_IBUF[7]),
        .O(\counter_value_reg[8]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    jMax0_carry_i_2
       (.I0(J[3]),
        .I1(IMAGE_WIDTH_IBUF[3]),
        .I2(Q[3]),
        .I3(IMAGE_WIDTH_IBUF[5]),
        .I4(IMAGE_WIDTH_IBUF[4]),
        .I5(J[4]),
        .O(\counter_value_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    jMax0_carry_i_3
       (.I0(Q[0]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(IMAGE_WIDTH_IBUF[2]),
        .O(\counter_value_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h0024820082000082)) 
    jSubMax0_carry_i_1
       (.I0(jSubMax0_carry_i_4_n_0),
        .I1(IMAGE_WIDTH_IBUF[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(jSubMax0_carry_i_5_n_0),
        .I5(IMAGE_WIDTH_IBUF[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0000000882414120)) 
    jSubMax0_carry_i_2
       (.I0(IMAGE_WIDTH_IBUF[3]),
        .I1(IMAGE_WIDTH_IBUF[4]),
        .I2(J[4]),
        .I3(jSubMax0_carry_i_6_n_0),
        .I4(J[3]),
        .I5(jSubMax0_carry_i_7_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0009006090000900)) 
    jSubMax0_carry_i_3
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(Q[2]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(IMAGE_WIDTH_IBUF[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    jSubMax0_carry_i_4
       (.I0(J[8]),
        .I1(IMAGE_WIDTH_IBUF[8]),
        .O(jSubMax0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    jSubMax0_carry_i_5
       (.I0(Q[3]),
        .I1(J[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(J[4]),
        .O(jSubMax0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    jSubMax0_carry_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(jSubMax0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    jSubMax0_carry_i_7
       (.I0(Q[3]),
        .I1(IMAGE_WIDTH_IBUF[5]),
        .O(jSubMax0_carry_i_7_n_0));
endmodule

module Datapath
   (D,
    \counter_value_reg[6] ,
    \counter_value_reg[8] ,
    \counter_value_reg[7] ,
    CO,
    addr_D,
    addr_C,
    addr_B,
    addr_A,
    Q,
    \counter_value_reg[4] ,
    \counter_value_reg[7]_0 ,
    \counter_value_reg[4]_0 ,
    \counter_value_reg[3] ,
    \res_int_reg[7] ,
    \FSM_onehot_STATE_reg[1] ,
    \FSM_onehot_STATE_reg[1]_0 ,
    \FSM_onehot_STATE_reg[1]_1 ,
    \FSM_onehot_STATE_reg[1]_2 ,
    \FSM_onehot_STATE_reg[1]_3 ,
    \FSM_onehot_STATE_reg[1]_4 ,
    \FSM_onehot_STATE_reg[1]_5 ,
    \FSM_onehot_STATE_reg[1]_6 ,
    \FSM_onehot_STATE_reg[7] ,
    \counter_value_reg[3]_0 ,
    CLK,
    WE2_out,
    RE1_out,
    ADDRARDADDR,
    DIADI,
    base_output_addr_IBUF,
    \counter_value_reg[6]_0 ,
    \counter_value_reg[8]_0 ,
    \counter_value_reg[4]_1 ,
    \counter_value_reg[7]_1 ,
    \counter_value_reg[8]_1 ,
    IMAGE_HEIGHT_IBUF,
    IMAGE_WIDTH_IBUF,
    base_input_addr_IBUF,
    Start_IBUF,
    E,
    AR,
    \counter_value_reg[0] );
  output [15:0]D;
  output [0:0]\counter_value_reg[6] ;
  output [0:0]\counter_value_reg[8] ;
  output [0:0]\counter_value_reg[7] ;
  output [0:0]CO;
  output [7:0]addr_D;
  output [7:0]addr_C;
  output [7:0]addr_B;
  output [7:0]addr_A;
  output [3:0]Q;
  output \counter_value_reg[4] ;
  output [5:0]\counter_value_reg[7]_0 ;
  output \counter_value_reg[4]_0 ;
  output \counter_value_reg[3] ;
  output [7:0]\res_int_reg[7] ;
  output \FSM_onehot_STATE_reg[1] ;
  output \FSM_onehot_STATE_reg[1]_0 ;
  output \FSM_onehot_STATE_reg[1]_1 ;
  output \FSM_onehot_STATE_reg[1]_2 ;
  output \FSM_onehot_STATE_reg[1]_3 ;
  output \FSM_onehot_STATE_reg[1]_4 ;
  output \FSM_onehot_STATE_reg[1]_5 ;
  output \FSM_onehot_STATE_reg[1]_6 ;
  output [0:0]\FSM_onehot_STATE_reg[7] ;
  output \counter_value_reg[3]_0 ;
  input CLK;
  input WE2_out;
  input RE1_out;
  input [7:0]ADDRARDADDR;
  input [7:0]DIADI;
  input [7:0]base_output_addr_IBUF;
  input [3:0]\counter_value_reg[6]_0 ;
  input [9:0]\counter_value_reg[8]_0 ;
  input \counter_value_reg[4]_1 ;
  input [5:0]\counter_value_reg[7]_1 ;
  input \counter_value_reg[8]_1 ;
  input [8:0]IMAGE_HEIGHT_IBUF;
  input [8:0]IMAGE_WIDTH_IBUF;
  input [7:0]base_input_addr_IBUF;
  input Start_IBUF;
  input [0:0]E;
  input [0:0]AR;
  input [0:0]\counter_value_reg[0] ;

  wire [15:0]A;
  wire [7:0]ADDRARDADDR;
  wire [0:0]AR;
  wire [15:0]B;
  wire [14:0]C;
  wire CLK;
  wire [0:0]CO;
  wire COUNTER_I_n_10;
  wire COUNTER_I_n_11;
  wire COUNTER_I_n_12;
  wire COUNTER_I_n_13;
  wire COUNTER_I_n_14;
  wire COUNTER_I_n_15;
  wire COUNTER_I_n_16;
  wire COUNTER_I_n_17;
  wire COUNTER_I_n_18;
  wire COUNTER_I_n_19;
  wire COUNTER_I_n_20;
  wire COUNTER_I_n_21;
  wire COUNTER_I_n_22;
  wire COUNTER_I_n_23;
  wire COUNTER_I_n_24;
  wire COUNTER_I_n_25;
  wire COUNTER_I_n_26;
  wire COUNTER_I_n_27;
  wire COUNTER_I_n_28;
  wire COUNTER_I_n_29;
  wire COUNTER_I_n_30;
  wire COUNTER_I_n_31;
  wire COUNTER_I_n_32;
  wire COUNTER_I_n_33;
  wire COUNTER_I_n_34;
  wire COUNTER_I_n_35;
  wire COUNTER_I_n_36;
  wire COUNTER_I_n_37;
  wire COUNTER_I_n_38;
  wire COUNTER_I_n_39;
  wire COUNTER_I_n_40;
  wire COUNTER_I_n_41;
  wire COUNTER_I_n_42;
  wire COUNTER_I_n_43;
  wire COUNTER_I_n_44;
  wire COUNTER_I_n_45;
  wire COUNTER_I_n_46;
  wire COUNTER_I_n_47;
  wire COUNTER_I_n_48;
  wire COUNTER_I_n_49;
  wire COUNTER_I_n_5;
  wire COUNTER_I_n_50;
  wire COUNTER_I_n_51;
  wire COUNTER_I_n_52;
  wire COUNTER_I_n_53;
  wire COUNTER_I_n_54;
  wire COUNTER_I_n_55;
  wire COUNTER_I_n_56;
  wire COUNTER_I_n_57;
  wire COUNTER_I_n_58;
  wire COUNTER_I_n_59;
  wire COUNTER_I_n_6;
  wire COUNTER_I_n_60;
  wire COUNTER_I_n_61;
  wire COUNTER_I_n_62;
  wire COUNTER_I_n_63;
  wire COUNTER_I_n_64;
  wire COUNTER_I_n_65;
  wire COUNTER_I_n_66;
  wire COUNTER_I_n_67;
  wire COUNTER_I_n_68;
  wire COUNTER_I_n_69;
  wire COUNTER_I_n_7;
  wire COUNTER_I_n_70;
  wire COUNTER_I_n_71;
  wire COUNTER_I_n_72;
  wire COUNTER_I_n_73;
  wire COUNTER_I_n_74;
  wire COUNTER_I_n_75;
  wire COUNTER_I_n_76;
  wire COUNTER_I_n_77;
  wire COUNTER_I_n_78;
  wire COUNTER_I_n_79;
  wire COUNTER_I_n_8;
  wire COUNTER_I_n_80;
  wire COUNTER_I_n_81;
  wire COUNTER_I_n_82;
  wire COUNTER_I_n_9;
  wire COUNTER_J_n_10;
  wire COUNTER_J_n_11;
  wire COUNTER_J_n_12;
  wire COUNTER_J_n_13;
  wire COUNTER_J_n_14;
  wire COUNTER_J_n_15;
  wire COUNTER_J_n_16;
  wire COUNTER_J_n_17;
  wire COUNTER_J_n_18;
  wire COUNTER_J_n_19;
  wire COUNTER_J_n_20;
  wire COUNTER_J_n_21;
  wire COUNTER_J_n_22;
  wire COUNTER_J_n_23;
  wire COUNTER_J_n_24;
  wire COUNTER_J_n_25;
  wire COUNTER_J_n_26;
  wire COUNTER_J_n_28;
  wire COUNTER_J_n_29;
  wire COUNTER_J_n_30;
  wire COUNTER_J_n_31;
  wire COUNTER_J_n_32;
  wire COUNTER_J_n_33;
  wire COUNTER_J_n_34;
  wire COUNTER_J_n_35;
  wire COUNTER_J_n_36;
  wire COUNTER_J_n_37;
  wire COUNTER_J_n_38;
  wire COUNTER_J_n_39;
  wire COUNTER_J_n_40;
  wire COUNTER_J_n_41;
  wire COUNTER_J_n_42;
  wire COUNTER_J_n_43;
  wire COUNTER_J_n_44;
  wire COUNTER_J_n_45;
  wire COUNTER_J_n_46;
  wire COUNTER_J_n_47;
  wire COUNTER_J_n_48;
  wire COUNTER_J_n_49;
  wire COUNTER_J_n_50;
  wire COUNTER_J_n_51;
  wire COUNTER_J_n_52;
  wire COUNTER_J_n_53;
  wire COUNTER_J_n_54;
  wire COUNTER_J_n_55;
  wire COUNTER_J_n_56;
  wire COUNTER_J_n_57;
  wire COUNTER_J_n_58;
  wire COUNTER_J_n_59;
  wire COUNTER_J_n_60;
  wire COUNTER_J_n_61;
  wire COUNTER_J_n_62;
  wire COUNTER_J_n_63;
  wire COUNTER_J_n_64;
  wire COUNTER_J_n_65;
  wire COUNTER_J_n_66;
  wire COUNTER_J_n_67;
  wire COUNTER_J_n_7;
  wire COUNTER_J_n_8;
  wire COUNTER_J_n_9;
  wire [15:0]D;
  wire [7:0]DIADI;
  wire [15:0]D_0;
  wire [15:8]Din;
  wire [0:0]E;
  wire \FSM_onehot_STATE_reg[1] ;
  wire \FSM_onehot_STATE_reg[1]_0 ;
  wire \FSM_onehot_STATE_reg[1]_1 ;
  wire \FSM_onehot_STATE_reg[1]_2 ;
  wire \FSM_onehot_STATE_reg[1]_3 ;
  wire \FSM_onehot_STATE_reg[1]_4 ;
  wire \FSM_onehot_STATE_reg[1]_5 ;
  wire \FSM_onehot_STATE_reg[1]_6 ;
  wire [0:0]\FSM_onehot_STATE_reg[7] ;
  wire [8:0]IMAGE_HEIGHT_IBUF;
  wire [8:0]IMAGE_WIDTH_IBUF;
  wire Memory_ins_n_24;
  wire Memory_ins_n_25;
  wire Memory_ins_n_26;
  wire Memory_ins_n_27;
  wire Memory_ins_n_28;
  wire Memory_ins_n_29;
  wire Memory_ins_n_30;
  wire Memory_ins_n_31;
  wire [3:0]Q;
  wire RE1_out;
  wire REGA_n_0;
  wire REGA_n_17;
  wire REGB_n_0;
  wire REGB_n_17;
  wire REGB_n_18;
  wire REGC_n_0;
  wire REGD_n_10;
  wire REGD_n_11;
  wire REGD_n_12;
  wire REGD_n_13;
  wire REGD_n_14;
  wire REGD_n_15;
  wire REGD_n_16;
  wire REGD_n_17;
  wire REGD_n_18;
  wire REGD_n_19;
  wire REGD_n_20;
  wire REGD_n_21;
  wire REGD_n_22;
  wire REGD_n_23;
  wire REGD_n_24;
  wire REGD_n_25;
  wire REGD_n_26;
  wire REGD_n_27;
  wire REGD_n_28;
  wire REGD_n_29;
  wire REGD_n_30;
  wire REGD_n_31;
  wire REGD_n_5;
  wire REGD_n_6;
  wire REGD_n_7;
  wire REGD_n_8;
  wire REGD_n_9;
  wire Start_IBUF;
  wire WE2_out;
  wire [7:0]addr_A;
  wire addr_A1__0_carry__0_n_4;
  wire addr_A1__0_carry__0_n_5;
  wire addr_A1__0_carry__0_n_6;
  wire addr_A1__0_carry__0_n_7;
  wire addr_A1__0_carry_n_0;
  wire addr_A1__0_carry_n_4;
  wire addr_A1__22_carry__0_n_7;
  wire addr_A1__22_carry_n_0;
  wire addr_A1__22_carry_n_4;
  wire addr_A1__22_carry_n_5;
  wire addr_A1__22_carry_n_6;
  wire addr_A1__22_carry_n_7;
  wire addr_A1__35_carry_i_1_n_0;
  wire addr_A1__35_carry_i_3_n_0;
  wire addr_A1__35_carry_i_4_n_0;
  wire addr_A1__35_carry_i_5_n_0;
  wire addr_A1__35_carry_n_0;
  wire addr_A__0_carry_n_0;
  wire [7:0]addr_B;
  wire [7:0]addr_B0;
  wire addr_B0_carry_i_1_n_0;
  wire addr_B0_carry_i_2_n_0;
  wire addr_B0_carry_i_3_n_0;
  wire addr_B0_carry_i_4_n_0;
  wire addr_B0_carry_n_0;
  wire [7:0]addr_B1;
  wire addr_B1__0_carry__0_n_4;
  wire addr_B1__0_carry__0_n_5;
  wire addr_B1__0_carry__0_n_6;
  wire addr_B1__0_carry__0_n_7;
  wire addr_B1__0_carry_n_0;
  wire addr_B1__0_carry_n_4;
  wire addr_B1__22_carry__0_n_7;
  wire addr_B1__22_carry_i_10_n_0;
  wire addr_B1__22_carry_i_8_n_0;
  wire addr_B1__22_carry_i_9_n_0;
  wire addr_B1__22_carry_n_0;
  wire addr_B1__22_carry_n_4;
  wire addr_B1__22_carry_n_5;
  wire addr_B1__22_carry_n_6;
  wire addr_B1__22_carry_n_7;
  wire addr_B1__35_carry_i_1_n_0;
  wire addr_B1__35_carry_i_3_n_0;
  wire addr_B1__35_carry_i_4_n_0;
  wire addr_B1__35_carry_i_5_n_0;
  wire addr_B1__35_carry_i_6_n_0;
  wire addr_B1__35_carry_i_7_n_0;
  wire addr_B1__35_carry_n_0;
  wire addr_B_carry_n_0;
  wire [7:0]addr_C;
  wire [7:0]addr_C0;
  wire addr_C0_carry_i_1_n_0;
  wire addr_C0_carry_i_2_n_0;
  wire addr_C0_carry_i_3_n_0;
  wire addr_C0_carry_i_4_n_0;
  wire addr_C0_carry_n_0;
  wire [7:0]addr_C1;
  wire addr_C1__0_carry__0_i_11_n_0;
  wire addr_C1__0_carry__0_n_4;
  wire addr_C1__0_carry__0_n_5;
  wire addr_C1__0_carry__0_n_6;
  wire addr_C1__0_carry__0_n_7;
  wire addr_C1__0_carry_n_0;
  wire addr_C1__0_carry_n_4;
  wire addr_C1__22_carry__0_n_7;
  wire addr_C1__22_carry_n_0;
  wire addr_C1__22_carry_n_4;
  wire addr_C1__22_carry_n_5;
  wire addr_C1__22_carry_n_6;
  wire addr_C1__22_carry_n_7;
  wire addr_C1__35_carry_i_1_n_0;
  wire addr_C1__35_carry_i_3_n_0;
  wire addr_C1__35_carry_i_4_n_0;
  wire addr_C1__35_carry_i_5_n_0;
  wire addr_C1__35_carry_n_0;
  wire addr_C_carry_n_0;
  wire [7:0]addr_D;
  wire addr_D_carry_n_0;
  wire [7:0]addr_init0;
  wire addr_init0_carry_n_0;
  wire [7:0]addr_store;
  wire addr_store_carry_n_0;
  wire [7:0]base_input_addr_IBUF;
  wire [7:0]base_output_addr_IBUF;
  wire [0:0]\counter_value_reg[0] ;
  wire \counter_value_reg[3] ;
  wire \counter_value_reg[3]_0 ;
  wire \counter_value_reg[4] ;
  wire \counter_value_reg[4]_0 ;
  wire \counter_value_reg[4]_1 ;
  wire [0:0]\counter_value_reg[6] ;
  wire [3:0]\counter_value_reg[6]_0 ;
  wire [0:0]\counter_value_reg[7] ;
  wire [5:0]\counter_value_reg[7]_0 ;
  wire [5:0]\counter_value_reg[7]_1 ;
  wire [0:0]\counter_value_reg[8] ;
  wire [9:0]\counter_value_reg[8]_0 ;
  wire \counter_value_reg[8]_1 ;
  wire [7:0]p_0_in;
  wire [7:0]\res_int_reg[7] ;
  wire [2:0]NLW_addr_A1__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_A1__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_A1__22_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_A1__22_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_A1__22_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_A1__35_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_A1__35_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_A1__35_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_A__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_A__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_B0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_B0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_B1__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_B1__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_B1__22_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_B1__22_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_B1__22_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_B1__35_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_B1__35_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_B1__35_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_B_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_B_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_C0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_C0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_C1__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_C1__0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_C1__22_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_C1__22_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_C1__22_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_C1__35_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_C1__35_carry__0_CO_UNCONNECTED;
  wire [3:1]NLW_addr_C1__35_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_addr_C_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_C_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_D_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_D_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_init0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_init0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_addr_store_carry_CO_UNCONNECTED;
  wire [3:0]NLW_addr_store_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_iMax0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_iMax0_carry_O_UNCONNECTED;
  wire [3:0]NLW_iSubMax0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_iSubMax0_carry_O_UNCONNECTED;
  wire [3:0]NLW_jMax0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_jMax0_carry_O_UNCONNECTED;
  wire [3:0]NLW_jSubMax0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_jSubMax0_carry_O_UNCONNECTED;

  Counter COUNTER_I
       (.AR(AR),
        .CLK(CLK),
        .DI({COUNTER_I_n_11,COUNTER_I_n_12,COUNTER_I_n_13}),
        .E(E),
        .IMAGE_HEIGHT_IBUF(IMAGE_HEIGHT_IBUF),
        .\IMAGE_WIDTH[1] ({COUNTER_I_n_52,COUNTER_I_n_53,COUNTER_I_n_54,COUNTER_I_n_55}),
        .\IMAGE_WIDTH[1]_0 ({COUNTER_I_n_70,COUNTER_I_n_71,COUNTER_I_n_72,COUNTER_I_n_73}),
        .\IMAGE_WIDTH[3] ({COUNTER_I_n_49,COUNTER_I_n_50,COUNTER_I_n_51}),
        .\IMAGE_WIDTH[4] (COUNTER_I_n_74),
        .IMAGE_WIDTH_IBUF(IMAGE_WIDTH_IBUF[7:0]),
        .O({addr_A1__0_carry__0_n_4,addr_A1__0_carry__0_n_5}),
        .Q(Q),
        .S({COUNTER_I_n_5,COUNTER_I_n_6,COUNTER_I_n_7}),
        .addr_A1__35_carry__0(addr_A1__22_carry__0_n_7),
        .addr_A1__35_carry__0_i_1_0(addr_A1__22_carry_n_4),
        .addr_B1__0_carry__0_i_5_0(addr_C1__0_carry__0_i_11_n_0),
        .addr_B1__35_carry__0(addr_B1__22_carry_n_4),
        .addr_B1__35_carry__0_i_1_0(addr_B1__22_carry__0_n_7),
        .addr_B1__35_carry__0_i_1_1({addr_B1__0_carry__0_n_4,addr_B1__0_carry__0_n_5}),
        .addr_C1__22_carry__0_i_1_0(addr_B1__22_carry_i_8_n_0),
        .addr_C1__22_carry__0_i_1_1(addr_B1__22_carry_i_10_n_0),
        .addr_C1__22_carry_i_4_0(addr_B1__22_carry_i_9_n_0),
        .addr_C1__35_carry__0(addr_B1__35_carry_i_6_n_0),
        .addr_C1__35_carry__0_0(addr_C1__22_carry_n_4),
        .addr_C1__35_carry__0_i_1_0(addr_B1__35_carry_i_7_n_0),
        .addr_C1__35_carry__0_i_1_1(addr_C1__22_carry__0_n_7),
        .addr_C1__35_carry__0_i_1_2({addr_C1__0_carry__0_n_4,addr_C1__0_carry__0_n_5}),
        .\counter_value_reg[0]_0 ({COUNTER_I_n_30,COUNTER_I_n_31,COUNTER_I_n_32,COUNTER_I_n_33}),
        .\counter_value_reg[0]_1 ({COUNTER_I_n_34,COUNTER_I_n_35,COUNTER_I_n_36,COUNTER_I_n_37}),
        .\counter_value_reg[0]_2 (COUNTER_I_n_60),
        .\counter_value_reg[0]_3 (COUNTER_I_n_75),
        .\counter_value_reg[0]_4 (COUNTER_I_n_80),
        .\counter_value_reg[0]_5 (COUNTER_I_n_81),
        .\counter_value_reg[0]_6 (COUNTER_I_n_82),
        .\counter_value_reg[1]_0 (COUNTER_I_n_59),
        .\counter_value_reg[1]_1 (COUNTER_I_n_68),
        .\counter_value_reg[1]_2 (COUNTER_I_n_69),
        .\counter_value_reg[2]_0 ({COUNTER_I_n_26,COUNTER_I_n_27,COUNTER_I_n_28,COUNTER_I_n_29}),
        .\counter_value_reg[2]_1 ({COUNTER_I_n_41,COUNTER_I_n_42,COUNTER_I_n_43,COUNTER_I_n_44}),
        .\counter_value_reg[2]_2 ({COUNTER_I_n_45,COUNTER_I_n_46,COUNTER_I_n_47,COUNTER_I_n_48}),
        .\counter_value_reg[2]_3 ({COUNTER_I_n_76,COUNTER_I_n_77,COUNTER_I_n_78,COUNTER_I_n_79}),
        .\counter_value_reg[3]_0 ({COUNTER_I_n_20,COUNTER_I_n_21,COUNTER_I_n_22}),
        .\counter_value_reg[3]_1 ({COUNTER_I_n_23,COUNTER_I_n_24,COUNTER_I_n_25}),
        .\counter_value_reg[3]_2 ({COUNTER_I_n_38,COUNTER_I_n_39,COUNTER_I_n_40}),
        .\counter_value_reg[3]_3 ({COUNTER_I_n_56,COUNTER_I_n_57,COUNTER_I_n_58}),
        .\counter_value_reg[3]_4 ({COUNTER_I_n_61,COUNTER_I_n_62,COUNTER_I_n_63}),
        .\counter_value_reg[3]_5 (\counter_value_reg[3]_0 ),
        .\counter_value_reg[4]_0 (\counter_value_reg[4] ),
        .\counter_value_reg[4]_1 ({COUNTER_I_n_14,COUNTER_I_n_15,COUNTER_I_n_16}),
        .\counter_value_reg[4]_2 ({COUNTER_I_n_17,COUNTER_I_n_18,COUNTER_I_n_19}),
        .\counter_value_reg[4]_3 (\counter_value_reg[4]_1 ),
        .\counter_value_reg[6]_0 ({COUNTER_I_n_8,COUNTER_I_n_9,COUNTER_I_n_10}),
        .\counter_value_reg[6]_1 ({COUNTER_I_n_64,COUNTER_I_n_65,COUNTER_I_n_66,COUNTER_I_n_67}),
        .\counter_value_reg[6]_2 (\counter_value_reg[6]_0 ),
        .\counter_value_reg[8]_0 ({\counter_value_reg[8]_0 [9],\counter_value_reg[8]_0 [5]}));
  Counter_0 COUNTER_J
       (.AR(AR),
        .CLK(CLK),
        .DI({COUNTER_J_n_13,COUNTER_J_n_14,COUNTER_J_n_15}),
        .IMAGE_WIDTH_IBUF(IMAGE_WIDTH_IBUF),
        .Q(\counter_value_reg[7]_0 ),
        .S({COUNTER_J_n_7,COUNTER_J_n_8,COUNTER_J_n_9}),
        .addr_B0(addr_B0),
        .addr_C0(addr_C0),
        .\base_input_addr[6] ({COUNTER_J_n_28,COUNTER_J_n_29,COUNTER_J_n_30,COUNTER_J_n_31}),
        .base_input_addr_IBUF(base_input_addr_IBUF),
        .base_output_addr_IBUF(base_output_addr_IBUF),
        .\counter_value_reg[0]_0 (\counter_value_reg[0] ),
        .\counter_value_reg[2]_0 ({COUNTER_J_n_32,COUNTER_J_n_33,COUNTER_J_n_34,COUNTER_J_n_35}),
        .\counter_value_reg[2]_1 ({COUNTER_J_n_40,COUNTER_J_n_41,COUNTER_J_n_42,COUNTER_J_n_43}),
        .\counter_value_reg[2]_2 ({COUNTER_J_n_44,COUNTER_J_n_45,COUNTER_J_n_46,COUNTER_J_n_47}),
        .\counter_value_reg[2]_3 ({COUNTER_J_n_52,COUNTER_J_n_53,COUNTER_J_n_54,COUNTER_J_n_55}),
        .\counter_value_reg[3]_0 (\counter_value_reg[3] ),
        .\counter_value_reg[3]_1 ({COUNTER_J_n_36,COUNTER_J_n_37,COUNTER_J_n_38,COUNTER_J_n_39}),
        .\counter_value_reg[3]_2 ({COUNTER_J_n_48,COUNTER_J_n_49,COUNTER_J_n_50,COUNTER_J_n_51}),
        .\counter_value_reg[4]_0 (\counter_value_reg[4]_0 ),
        .\counter_value_reg[5]_0 ({COUNTER_J_n_16,COUNTER_J_n_17,COUNTER_J_n_18}),
        .\counter_value_reg[6]_0 ({COUNTER_J_n_56,COUNTER_J_n_57,COUNTER_J_n_58,COUNTER_J_n_59}),
        .\counter_value_reg[6]_1 ({COUNTER_J_n_60,COUNTER_J_n_61,COUNTER_J_n_62,COUNTER_J_n_63}),
        .\counter_value_reg[6]_2 ({COUNTER_J_n_64,COUNTER_J_n_65,COUNTER_J_n_66,COUNTER_J_n_67}),
        .\counter_value_reg[7]_0 ({COUNTER_J_n_19,COUNTER_J_n_20,COUNTER_J_n_21,COUNTER_J_n_22}),
        .\counter_value_reg[7]_1 ({COUNTER_J_n_23,COUNTER_J_n_24,COUNTER_J_n_25,COUNTER_J_n_26}),
        .\counter_value_reg[7]_2 (\counter_value_reg[7]_1 ),
        .\counter_value_reg[8]_0 ({COUNTER_J_n_10,COUNTER_J_n_11,COUNTER_J_n_12}),
        .\counter_value_reg[8]_1 (\counter_value_reg[8]_1 ),
        .p_0_in(p_0_in));
  Compute Cmpute
       (.AR(AR),
        .CLK(CLK),
        .DI({REGD_n_6,REGA_n_0,REGD_n_7,REGB_n_17}),
        .DIADI(Din),
        .S({REGD_n_19,REGA_n_17,REGD_n_20,REGB_n_0}),
        .Start_IBUF(Start_IBUF),
        .memory_reg(\counter_value_reg[8]_0 [1:0]),
        .\res_int_reg[11]_0 ({REGD_n_12,REGD_n_13,REGD_n_14,REGD_n_15}),
        .\res_int_reg[11]_1 ({REGD_n_25,REGD_n_26,REGD_n_27,REGD_n_28}),
        .\res_int_reg[15]_0 ({REGD_n_16,REGD_n_17,REGD_n_18}),
        .\res_int_reg[15]_1 ({REGB_n_18,REGD_n_29,REGD_n_30,REGD_n_31}),
        .\res_int_reg[7]_0 (\res_int_reg[7] ),
        .\res_int_reg[7]_1 ({REGD_n_8,REGD_n_9,REGD_n_10,REGD_n_11}),
        .\res_int_reg[7]_2 ({REGD_n_21,REGD_n_22,REGD_n_23,REGD_n_24}));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_STATE[8]_i_1 
       (.I0(CO),
        .I1(\counter_value_reg[8]_0 [3]),
        .I2(\counter_value_reg[7] ),
        .I3(\counter_value_reg[8]_0 [4]),
        .O(\FSM_onehot_STATE_reg[7] ));
  Memory Memory_ins
       (.ADDRARDADDR(ADDRARDADDR),
        .CLK(CLK),
        .D(D),
        .DIADI({Din,DIADI}),
        .\FSM_onehot_STATE_reg[1] (\FSM_onehot_STATE_reg[1] ),
        .\FSM_onehot_STATE_reg[1]_0 (\FSM_onehot_STATE_reg[1]_0 ),
        .\FSM_onehot_STATE_reg[1]_1 (\FSM_onehot_STATE_reg[1]_1 ),
        .\FSM_onehot_STATE_reg[1]_2 (\FSM_onehot_STATE_reg[1]_2 ),
        .\FSM_onehot_STATE_reg[1]_3 (\FSM_onehot_STATE_reg[1]_3 ),
        .\FSM_onehot_STATE_reg[1]_4 (\FSM_onehot_STATE_reg[1]_4 ),
        .\FSM_onehot_STATE_reg[1]_5 (\FSM_onehot_STATE_reg[1]_5 ),
        .\FSM_onehot_STATE_reg[1]_6 (\FSM_onehot_STATE_reg[1]_6 ),
        .RE1_out(RE1_out),
        .S({Memory_ins_n_24,Memory_ins_n_25,Memory_ins_n_26,Memory_ins_n_27}),
        .WE2_out(WE2_out),
        .addr_B0(addr_B0),
        .addr_B1(addr_B1[7:4]),
        .addr_C1(addr_C1[7:4]),
        .addr_init0(addr_init0),
        .addr_store(addr_store),
        .\base_output_addr[7] ({Memory_ins_n_28,Memory_ins_n_29,Memory_ins_n_30,Memory_ins_n_31}),
        .base_output_addr_IBUF(base_output_addr_IBUF[7:4]),
        .memory_reg_0({\counter_value_reg[8]_0 [3],\counter_value_reg[8]_0 [1]}));
  Regn REGA
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .DI(REGA_n_0),
        .Q(A),
        .\Q_reg[0]_0 (\counter_value_reg[8]_0 [7]),
        .S(REGA_n_17),
        .\res_int_reg[3] (D_0[1:0]),
        .\res_int_reg[3]_0 (C[1]),
        .\res_int_reg[3]_1 (B[1]),
        .\res_int_reg[3]_2 (REGD_n_5));
  Regn_1 REGB
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .DI(REGB_n_17),
        .Q(B),
        .\Q_reg[0]_0 (\counter_value_reg[8]_0 [8]),
        .\Q_reg[14]_0 (REGB_n_18),
        .S(REGB_n_0),
        .\res_int_reg[15] ({C[14:13],C[0]}),
        .\res_int_reg[15]_0 ({D_0[14:13],D_0[0]}),
        .\res_int_reg[15]_1 ({A[14],A[0]}),
        .\res_int_reg[15]_2 (REGC_n_0));
  Regn_2 REGC
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(C),
        .\Q_reg[0]_0 (\counter_value_reg[8]_0 [6]),
        .\Q_reg[15]_0 (REGC_n_0),
        .res_int0__0_carry__2_i_4(B[15]),
        .res_int0__0_carry__2_i_4_0(D_0[15]),
        .res_int0__0_carry__2_i_4_1(A[15]));
  Regn_3 REGD
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .DI({REGD_n_6,REGD_n_7}),
        .Q({D_0[15:13],D_0[1:0]}),
        .\Q_reg[0]_0 (\counter_value_reg[8]_0 [2]),
        .\Q_reg[10]_0 ({REGD_n_12,REGD_n_13,REGD_n_14,REGD_n_15}),
        .\Q_reg[11]_0 ({REGD_n_25,REGD_n_26,REGD_n_27,REGD_n_28}),
        .\Q_reg[13]_0 ({REGD_n_16,REGD_n_17,REGD_n_18}),
        .\Q_reg[14]_0 ({REGD_n_29,REGD_n_30,REGD_n_31}),
        .\Q_reg[2]_0 (REGD_n_5),
        .\Q_reg[6]_0 ({REGD_n_8,REGD_n_9,REGD_n_10,REGD_n_11}),
        .\Q_reg[7]_0 ({REGD_n_21,REGD_n_22,REGD_n_23,REGD_n_24}),
        .S({REGD_n_19,REGD_n_20}),
        .res_int0__0_carry__2_i_5_0(B[14:0]),
        .res_int0__0_carry__2_i_5_1(C),
        .\res_int_reg[15] (A[14:0]));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_A1__0_carry
       (.CI(1'b0),
        .CO({addr_A1__0_carry_n_0,NLW_addr_A1__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_38,COUNTER_I_n_39,COUNTER_I_n_40,1'b0}),
        .O({addr_A1__0_carry_n_4,p_0_in[2:0]}),
        .S({COUNTER_I_n_41,COUNTER_I_n_42,COUNTER_I_n_43,COUNTER_I_n_44}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_A1__0_carry__0
       (.CI(addr_A1__0_carry_n_0),
        .CO(NLW_addr_A1__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,COUNTER_I_n_11,COUNTER_I_n_12,COUNTER_I_n_13}),
        .O({addr_A1__0_carry__0_n_4,addr_A1__0_carry__0_n_5,addr_A1__0_carry__0_n_6,addr_A1__0_carry__0_n_7}),
        .S({COUNTER_I_n_70,COUNTER_I_n_71,COUNTER_I_n_72,COUNTER_I_n_73}));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_A1__22_carry
       (.CI(1'b0),
        .CO({addr_A1__22_carry_n_0,NLW_addr_A1__22_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_49,COUNTER_I_n_50,COUNTER_I_n_51,1'b0}),
        .O({addr_A1__22_carry_n_4,addr_A1__22_carry_n_5,addr_A1__22_carry_n_6,addr_A1__22_carry_n_7}),
        .S({COUNTER_I_n_45,COUNTER_I_n_46,COUNTER_I_n_47,COUNTER_I_n_48}));
  CARRY4 addr_A1__22_carry__0
       (.CI(addr_A1__22_carry_n_0),
        .CO(NLW_addr_A1__22_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_A1__22_carry__0_O_UNCONNECTED[3:1],addr_A1__22_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_74}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_A1__35_carry
       (.CI(1'b0),
        .CO({addr_A1__35_carry_n_0,NLW_addr_A1__35_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({addr_A1__35_carry_i_1_n_0,addr_A1__0_carry__0_n_6,addr_A1__0_carry__0_n_7,addr_A1__0_carry_n_4}),
        .O(p_0_in[6:3]),
        .S({COUNTER_I_n_82,addr_A1__35_carry_i_3_n_0,addr_A1__35_carry_i_4_n_0,addr_A1__35_carry_i_5_n_0}));
  CARRY4 addr_A1__35_carry__0
       (.CI(addr_A1__35_carry_n_0),
        .CO(NLW_addr_A1__35_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_A1__35_carry__0_O_UNCONNECTED[3:1],p_0_in[7]}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_75}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_A1__35_carry_i_1
       (.I0(addr_A1__0_carry__0_n_5),
        .I1(addr_A1__22_carry_n_4),
        .O(addr_A1__35_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_A1__35_carry_i_3
       (.I0(addr_A1__0_carry__0_n_6),
        .I1(addr_A1__22_carry_n_5),
        .O(addr_A1__35_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_A1__35_carry_i_4
       (.I0(addr_A1__0_carry__0_n_7),
        .I1(addr_A1__22_carry_n_6),
        .O(addr_A1__35_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_A1__35_carry_i_5
       (.I0(addr_A1__0_carry_n_4),
        .I1(addr_A1__22_carry_n_7),
        .O(addr_A1__35_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_A__0_carry
       (.CI(1'b0),
        .CO({addr_A__0_carry_n_0,NLW_addr_A__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_J_n_13,COUNTER_J_n_14,COUNTER_J_n_15,1'b0}),
        .O(addr_A[3:0]),
        .S({COUNTER_J_n_52,COUNTER_J_n_53,COUNTER_J_n_54,COUNTER_J_n_55}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_A__0_carry__0
       (.CI(addr_A__0_carry_n_0),
        .CO(NLW_addr_A__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,COUNTER_J_n_16,COUNTER_J_n_17,COUNTER_J_n_18}),
        .O(addr_A[7:4]),
        .S({COUNTER_J_n_28,COUNTER_J_n_29,COUNTER_J_n_30,COUNTER_J_n_31}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B0_carry
       (.CI(1'b0),
        .CO({addr_B0_carry_n_0,NLW_addr_B0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(base_output_addr_IBUF[3:0]),
        .O(addr_B0[3:0]),
        .S({addr_B0_carry_i_1_n_0,addr_B0_carry_i_2_n_0,addr_B0_carry_i_3_n_0,addr_B0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B0_carry__0
       (.CI(addr_B0_carry_n_0),
        .CO(NLW_addr_B0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,base_output_addr_IBUF[6:4]}),
        .O(addr_B0[7:4]),
        .S({Memory_ins_n_24,Memory_ins_n_25,Memory_ins_n_26,Memory_ins_n_27}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry_i_1
       (.I0(base_output_addr_IBUF[3]),
        .I1(addr_B1[3]),
        .O(addr_B0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry_i_2
       (.I0(base_output_addr_IBUF[2]),
        .I1(addr_B1[2]),
        .O(addr_B0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry_i_3
       (.I0(base_output_addr_IBUF[1]),
        .I1(addr_B1[1]),
        .O(addr_B0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry_i_4
       (.I0(base_output_addr_IBUF[0]),
        .I1(addr_B1[0]),
        .O(addr_B0_carry_i_4_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_B1__0_carry
       (.CI(1'b0),
        .CO({addr_B1__0_carry_n_0,NLW_addr_B1__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_20,COUNTER_I_n_21,COUNTER_I_n_22,1'b0}),
        .O({addr_B1__0_carry_n_4,addr_B1[2:0]}),
        .S({COUNTER_I_n_30,COUNTER_I_n_31,COUNTER_I_n_32,COUNTER_I_n_33}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B1__0_carry__0
       (.CI(addr_B1__0_carry_n_0),
        .CO(NLW_addr_B1__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,COUNTER_I_n_14,COUNTER_I_n_15,COUNTER_I_n_16}),
        .O({addr_B1__0_carry__0_n_4,addr_B1__0_carry__0_n_5,addr_B1__0_carry__0_n_6,addr_B1__0_carry__0_n_7}),
        .S({COUNTER_I_n_52,COUNTER_I_n_53,COUNTER_I_n_54,COUNTER_I_n_55}));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_B1__22_carry
       (.CI(1'b0),
        .CO({addr_B1__22_carry_n_0,NLW_addr_B1__22_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_56,COUNTER_I_n_57,COUNTER_I_n_58,1'b0}),
        .O({addr_B1__22_carry_n_4,addr_B1__22_carry_n_5,addr_B1__22_carry_n_6,addr_B1__22_carry_n_7}),
        .S({COUNTER_I_n_76,COUNTER_I_n_77,COUNTER_I_n_78,COUNTER_I_n_79}));
  CARRY4 addr_B1__22_carry__0
       (.CI(addr_B1__22_carry_n_0),
        .CO(NLW_addr_B1__22_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_B1__22_carry__0_O_UNCONNECTED[3:1],addr_B1__22_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_59}));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    addr_B1__22_carry_i_10
       (.I0(IMAGE_WIDTH_IBUF[4]),
        .I1(IMAGE_WIDTH_IBUF[3]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[2]),
        .O(addr_B1__22_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9555)) 
    addr_B1__22_carry_i_8
       (.I0(IMAGE_WIDTH_IBUF[3]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .O(addr_B1__22_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    addr_B1__22_carry_i_9
       (.I0(IMAGE_WIDTH_IBUF[5]),
        .I1(IMAGE_WIDTH_IBUF[4]),
        .I2(IMAGE_WIDTH_IBUF[2]),
        .I3(IMAGE_WIDTH_IBUF[1]),
        .I4(IMAGE_WIDTH_IBUF[0]),
        .I5(IMAGE_WIDTH_IBUF[3]),
        .O(addr_B1__22_carry_i_9_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B1__35_carry
       (.CI(1'b0),
        .CO({addr_B1__35_carry_n_0,NLW_addr_B1__35_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({addr_B1__35_carry_i_1_n_0,addr_B1__0_carry__0_n_6,addr_B1__0_carry__0_n_7,addr_B1__0_carry_n_4}),
        .O(addr_B1[6:3]),
        .S({COUNTER_I_n_80,addr_B1__35_carry_i_3_n_0,addr_B1__35_carry_i_4_n_0,addr_B1__35_carry_i_5_n_0}));
  CARRY4 addr_B1__35_carry__0
       (.CI(addr_B1__35_carry_n_0),
        .CO(NLW_addr_B1__35_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_B1__35_carry__0_O_UNCONNECTED[3:1],addr_B1[7]}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_60}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__35_carry_i_1
       (.I0(addr_B1__0_carry__0_n_5),
        .I1(addr_B1__22_carry_n_4),
        .O(addr_B1__35_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__35_carry_i_3
       (.I0(addr_B1__0_carry__0_n_6),
        .I1(addr_B1__22_carry_n_5),
        .O(addr_B1__35_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__35_carry_i_4
       (.I0(addr_B1__0_carry__0_n_7),
        .I1(addr_B1__22_carry_n_6),
        .O(addr_B1__35_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__35_carry_i_5
       (.I0(addr_B1__0_carry_n_4),
        .I1(addr_B1__22_carry_n_7),
        .O(addr_B1__35_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B1__35_carry_i_6
       (.I0(IMAGE_WIDTH_IBUF[6]),
        .I1(addr_B1__35_carry_i_7_n_0),
        .O(addr_B1__35_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    addr_B1__35_carry_i_7
       (.I0(IMAGE_WIDTH_IBUF[4]),
        .I1(IMAGE_WIDTH_IBUF[2]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .I3(IMAGE_WIDTH_IBUF[0]),
        .I4(IMAGE_WIDTH_IBUF[3]),
        .I5(IMAGE_WIDTH_IBUF[5]),
        .O(addr_B1__35_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B_carry
       (.CI(1'b0),
        .CO({addr_B_carry_n_0,NLW_addr_B_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(addr_B0[3:0]),
        .O(addr_B[3:0]),
        .S({COUNTER_J_n_48,COUNTER_J_n_49,COUNTER_J_n_50,COUNTER_J_n_51}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_B_carry__0
       (.CI(addr_B_carry_n_0),
        .CO(NLW_addr_B_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,addr_B0[6:4]}),
        .O(addr_B[7:4]),
        .S({COUNTER_J_n_23,COUNTER_J_n_24,COUNTER_J_n_25,COUNTER_J_n_26}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C0_carry
       (.CI(1'b0),
        .CO({addr_C0_carry_n_0,NLW_addr_C0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(base_output_addr_IBUF[3:0]),
        .O(addr_C0[3:0]),
        .S({addr_C0_carry_i_1_n_0,addr_C0_carry_i_2_n_0,addr_C0_carry_i_3_n_0,addr_C0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C0_carry__0
       (.CI(addr_C0_carry_n_0),
        .CO(NLW_addr_C0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,base_output_addr_IBUF[6:4]}),
        .O(addr_C0[7:4]),
        .S({Memory_ins_n_28,Memory_ins_n_29,Memory_ins_n_30,Memory_ins_n_31}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry_i_1
       (.I0(base_output_addr_IBUF[3]),
        .I1(addr_C1[3]),
        .O(addr_C0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry_i_2
       (.I0(base_output_addr_IBUF[2]),
        .I1(addr_C1[2]),
        .O(addr_C0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry_i_3
       (.I0(base_output_addr_IBUF[1]),
        .I1(addr_C1[1]),
        .O(addr_C0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry_i_4
       (.I0(base_output_addr_IBUF[0]),
        .I1(addr_C1[0]),
        .O(addr_C0_carry_i_4_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_C1__0_carry
       (.CI(1'b0),
        .CO({addr_C1__0_carry_n_0,NLW_addr_C1__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_61,COUNTER_I_n_62,COUNTER_I_n_63,1'b0}),
        .O({addr_C1__0_carry_n_4,addr_C1[2:0]}),
        .S({COUNTER_I_n_34,COUNTER_I_n_35,COUNTER_I_n_36,COUNTER_I_n_37}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C1__0_carry__0
       (.CI(addr_C1__0_carry_n_0),
        .CO(NLW_addr_C1__0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,COUNTER_I_n_17,COUNTER_I_n_18,COUNTER_I_n_19}),
        .O({addr_C1__0_carry__0_n_4,addr_C1__0_carry__0_n_5,addr_C1__0_carry__0_n_6,addr_C1__0_carry__0_n_7}),
        .S({COUNTER_I_n_64,COUNTER_I_n_65,COUNTER_I_n_66,COUNTER_I_n_67}));
  LUT3 #(
    .INIT(8'h95)) 
    addr_C1__0_carry__0_i_11
       (.I0(IMAGE_WIDTH_IBUF[2]),
        .I1(IMAGE_WIDTH_IBUF[0]),
        .I2(IMAGE_WIDTH_IBUF[1]),
        .O(addr_C1__0_carry__0_i_11_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 addr_C1__22_carry
       (.CI(1'b0),
        .CO({addr_C1__22_carry_n_0,NLW_addr_C1__22_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({COUNTER_I_n_23,COUNTER_I_n_24,COUNTER_I_n_25,1'b0}),
        .O({addr_C1__22_carry_n_4,addr_C1__22_carry_n_5,addr_C1__22_carry_n_6,addr_C1__22_carry_n_7}),
        .S({COUNTER_I_n_26,COUNTER_I_n_27,COUNTER_I_n_28,COUNTER_I_n_29}));
  CARRY4 addr_C1__22_carry__0
       (.CI(addr_C1__22_carry_n_0),
        .CO(NLW_addr_C1__22_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_C1__22_carry__0_O_UNCONNECTED[3:1],addr_C1__22_carry__0_n_7}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_68}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C1__35_carry
       (.CI(1'b0),
        .CO({addr_C1__35_carry_n_0,NLW_addr_C1__35_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({addr_C1__35_carry_i_1_n_0,addr_C1__0_carry__0_n_6,addr_C1__0_carry__0_n_7,addr_C1__0_carry_n_4}),
        .O(addr_C1[6:3]),
        .S({COUNTER_I_n_81,addr_C1__35_carry_i_3_n_0,addr_C1__35_carry_i_4_n_0,addr_C1__35_carry_i_5_n_0}));
  CARRY4 addr_C1__35_carry__0
       (.CI(addr_C1__35_carry_n_0),
        .CO(NLW_addr_C1__35_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_addr_C1__35_carry__0_O_UNCONNECTED[3:1],addr_C1[7]}),
        .S({1'b0,1'b0,1'b0,COUNTER_I_n_69}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C1__35_carry_i_1
       (.I0(addr_C1__0_carry__0_n_5),
        .I1(addr_C1__22_carry_n_4),
        .O(addr_C1__35_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C1__35_carry_i_3
       (.I0(addr_C1__0_carry__0_n_6),
        .I1(addr_C1__22_carry_n_5),
        .O(addr_C1__35_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C1__35_carry_i_4
       (.I0(addr_C1__0_carry__0_n_7),
        .I1(addr_C1__22_carry_n_6),
        .O(addr_C1__35_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C1__35_carry_i_5
       (.I0(addr_C1__0_carry_n_4),
        .I1(addr_C1__22_carry_n_7),
        .O(addr_C1__35_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C_carry
       (.CI(1'b0),
        .CO({addr_C_carry_n_0,NLW_addr_C_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(addr_C0[3:0]),
        .O(addr_C[3:0]),
        .S({COUNTER_J_n_44,COUNTER_J_n_45,COUNTER_J_n_46,COUNTER_J_n_47}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_C_carry__0
       (.CI(addr_C_carry_n_0),
        .CO(NLW_addr_C_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,addr_C0[6:4]}),
        .O(addr_C[7:4]),
        .S({COUNTER_J_n_64,COUNTER_J_n_65,COUNTER_J_n_66,COUNTER_J_n_67}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_D_carry
       (.CI(1'b0),
        .CO({addr_D_carry_n_0,NLW_addr_D_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(addr_B0[3:0]),
        .O(addr_D[3:0]),
        .S({COUNTER_J_n_40,COUNTER_J_n_41,COUNTER_J_n_42,COUNTER_J_n_43}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_D_carry__0
       (.CI(addr_D_carry_n_0),
        .CO(NLW_addr_D_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,addr_B0[6:4]}),
        .O(addr_D[7:4]),
        .S({COUNTER_J_n_60,COUNTER_J_n_61,COUNTER_J_n_62,COUNTER_J_n_63}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_init0_carry
       (.CI(1'b0),
        .CO({addr_init0_carry_n_0,NLW_addr_init0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(base_output_addr_IBUF[3:0]),
        .O(addr_init0[3:0]),
        .S({COUNTER_J_n_32,COUNTER_J_n_33,COUNTER_J_n_34,COUNTER_J_n_35}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_init0_carry__0
       (.CI(addr_init0_carry_n_0),
        .CO(NLW_addr_init0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,base_output_addr_IBUF[6:4]}),
        .O(addr_init0[7:4]),
        .S({COUNTER_J_n_56,COUNTER_J_n_57,COUNTER_J_n_58,COUNTER_J_n_59}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_store_carry
       (.CI(1'b0),
        .CO({addr_store_carry_n_0,NLW_addr_store_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(addr_C0[3:0]),
        .O(addr_store[3:0]),
        .S({COUNTER_J_n_36,COUNTER_J_n_37,COUNTER_J_n_38,COUNTER_J_n_39}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 addr_store_carry__0
       (.CI(addr_store_carry_n_0),
        .CO(NLW_addr_store_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,addr_C0[6:4]}),
        .O(addr_store[7:4]),
        .S({COUNTER_J_n_19,COUNTER_J_n_20,COUNTER_J_n_21,COUNTER_J_n_22}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 iMax0_carry
       (.CI(1'b0),
        .CO({NLW_iMax0_carry_CO_UNCONNECTED[3],\counter_value_reg[6] ,NLW_iMax0_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_iMax0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,COUNTER_I_n_8,COUNTER_I_n_9,COUNTER_I_n_10}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 iSubMax0_carry
       (.CI(1'b0),
        .CO({NLW_iSubMax0_carry_CO_UNCONNECTED[3],\counter_value_reg[7] ,NLW_iSubMax0_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_iSubMax0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,COUNTER_I_n_5,COUNTER_I_n_6,COUNTER_I_n_7}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 jMax0_carry
       (.CI(1'b0),
        .CO({NLW_jMax0_carry_CO_UNCONNECTED[3],\counter_value_reg[8] ,NLW_jMax0_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_jMax0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,COUNTER_J_n_10,COUNTER_J_n_11,COUNTER_J_n_12}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 jSubMax0_carry
       (.CI(1'b0),
        .CO({NLW_jSubMax0_carry_CO_UNCONNECTED[3],CO,NLW_jSubMax0_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_jSubMax0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,COUNTER_J_n_7,COUNTER_J_n_8,COUNTER_J_n_9}));
endmodule

(* ADDR_WIDTH = "16" *) (* DATA_WIDTH = "8" *) (* ECO_CHECKSUM = "10bad72f" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "2" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module IntegralImage
   (clk,
    rst,
    Start,
    Done,
    base_input_addr,
    base_output_addr,
    mem_addr,
    Data_in,
    Data_out,
    WE,
    RE,
    IMAGE_WIDTH,
    IMAGE_HEIGHT,
    size_error_o);
  input clk;
  input rst;
  input Start;
  output Done;
  input [15:0]base_input_addr;
  input [15:0]base_output_addr;
  input [15:0]mem_addr;
  input [7:0]Data_in;
  output [15:0]Data_out;
  input WE;
  input RE;
  input [8:0]IMAGE_WIDTH;
  input [8:0]IMAGE_HEIGHT;
  output size_error_o;

  wire [7:0]ADDR;
  wire CONTROLLER_INST_n_19;
  wire CONTROLLER_INST_n_21;
  wire CONTROLLER_INST_n_22;
  wire CONTROLLER_INST_n_23;
  wire CONTROLLER_INST_n_24;
  wire CONTROLLER_INST_n_35;
  wire CONTROLLER_INST_n_36;
  wire CONTROLLER_INST_n_8;
  wire [6:0]\COUNTER_I/p_1_in ;
  wire [7:0]\COUNTER_J/p_1_in ;
  wire DATAPATH_INST_n_56;
  wire DATAPATH_INST_n_63;
  wire DATAPATH_INST_n_64;
  wire DATAPATH_INST_n_73;
  wire DATAPATH_INST_n_74;
  wire DATAPATH_INST_n_75;
  wire DATAPATH_INST_n_76;
  wire DATAPATH_INST_n_77;
  wire DATAPATH_INST_n_78;
  wire DATAPATH_INST_n_79;
  wire DATAPATH_INST_n_80;
  wire DATAPATH_INST_n_81;
  wire DATAPATH_INST_n_82;
  wire [7:0]Data_in;
  wire [7:0]Data_in_IBUF;
  wire [15:0]Data_out;
  wire [15:0]Data_out_OBUF;
  wire [7:0]Data_store;
  wire [7:0]Din;
  wire Done;
  wire En_A;
  wire En_B;
  wire En_C;
  wire En_Compute;
  wire En_D;
  wire [6:0]I;
  wire [8:0]IMAGE_HEIGHT;
  wire [8:0]IMAGE_HEIGHT_IBUF;
  wire [8:0]IMAGE_WIDTH;
  wire [8:0]IMAGE_WIDTH_IBUF;
  wire [7:0]J;
  wire RE;
  wire RE1_out;
  wire RE_IBUF;
  wire Start;
  wire Start_IBUF;
  wire WE;
  wire WE2_out;
  wire WE_IBUF;
  wire [7:0]addr_A;
  wire [7:0]addr_B;
  wire [7:0]addr_C;
  wire [7:0]addr_D;
  wire addr_store_sel;
  wire [15:0]base_input_addr;
  wire [7:0]base_input_addr_IBUF;
  wire [15:0]base_output_addr;
  wire [7:0]base_output_addr_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire iMax;
  wire iSubMax;
  wire init_sel;
  wire jMax;
  wire jSubMax;
  wire lopt;
  wire [15:0]mem_addr;
  wire [7:0]mem_addr_IBUF;
  wire p_1_in;
  wire p_1_in5_in;
  wire rst;
  wire rst_IBUF;
  wire size_error_o;
  wire size_error_o_OBUF;
  wire [3:3]\NLW_CONTROLLER_INST_FSM_onehot_STATE_reg[19]_0_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_IntegralImage_time_impl.sdf",,,,"tool_control");
end
  Controller CONTROLLER_INST
       (.ADDRARDADDR(ADDR),
        .AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(jSubMax),
        .D({\COUNTER_I/p_1_in [6:5],\COUNTER_I/p_1_in [1:0]}),
        .DIADI(Din),
        .Data_in_IBUF(Data_in_IBUF),
        .E(CONTROLLER_INST_n_21),
        .\FSM_onehot_STATE_reg[10]_0 (jMax),
        .\FSM_onehot_STATE_reg[11]_0 (CONTROLLER_INST_n_24),
        .\FSM_onehot_STATE_reg[19]_0 ({p_1_in,En_B,En_A,En_C,CONTROLLER_INST_n_8,p_1_in5_in,init_sel,\NLW_CONTROLLER_INST_FSM_onehot_STATE_reg[19]_0_UNCONNECTED [3],En_D,addr_store_sel,En_Compute}),
        .\FSM_onehot_STATE_reg[19]_1 (CONTROLLER_INST_n_23),
        .\FSM_onehot_STATE_reg[19]_2 (iSubMax),
        .\FSM_onehot_STATE_reg[6]_0 (iMax),
        .\FSM_onehot_STATE_reg[8]_0 (CONTROLLER_INST_n_22),
        .\FSM_onehot_STATE_reg[8]_1 (DATAPATH_INST_n_81),
        .\FSM_onehot_STATE_reg[9]_0 ({\COUNTER_J/p_1_in [7:5],\COUNTER_J/p_1_in [2],CONTROLLER_INST_n_19,\COUNTER_J/p_1_in [0]}),
        .\IMAGE_HEIGHT[2] (CONTROLLER_INST_n_35),
        .IMAGE_HEIGHT_IBUF(IMAGE_HEIGHT_IBUF),
        .\IMAGE_WIDTH[4] (CONTROLLER_INST_n_36),
        .IMAGE_WIDTH_IBUF(IMAGE_WIDTH_IBUF),
        .Q({I[6:5],I[1:0]}),
        .RE1_out(RE1_out),
        .RE_IBUF(RE_IBUF),
        .Start_IBUF(Start_IBUF),
        .WE2_out(WE2_out),
        .WE_IBUF(WE_IBUF),
        .addr_A(addr_A),
        .addr_B(addr_B),
        .addr_C(addr_C),
        .addr_D(addr_D),
        .\counter_value_reg[5] (DATAPATH_INST_n_82),
        .\counter_value_reg[5]_0 (DATAPATH_INST_n_64),
        .\counter_value_reg[6] (DATAPATH_INST_n_56),
        .\counter_value_reg[6]_0 (DATAPATH_INST_n_63),
        .\counter_value_reg[7] ({J[7:5],J[2:0]}),
        .lopt(lopt),
        .mem_addr_IBUF(mem_addr_IBUF),
        .memory_reg(DATAPATH_INST_n_80),
        .memory_reg_0(DATAPATH_INST_n_79),
        .memory_reg_1(DATAPATH_INST_n_78),
        .memory_reg_2(DATAPATH_INST_n_77),
        .memory_reg_3(DATAPATH_INST_n_76),
        .memory_reg_4(DATAPATH_INST_n_75),
        .memory_reg_5(DATAPATH_INST_n_74),
        .memory_reg_6(DATAPATH_INST_n_73),
        .memory_reg_7(Data_store));
  Datapath DATAPATH_INST
       (.ADDRARDADDR(ADDR),
        .AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(jSubMax),
        .D(Data_out_OBUF),
        .DIADI(Din),
        .E(CONTROLLER_INST_n_22),
        .\FSM_onehot_STATE_reg[1] (DATAPATH_INST_n_73),
        .\FSM_onehot_STATE_reg[1]_0 (DATAPATH_INST_n_74),
        .\FSM_onehot_STATE_reg[1]_1 (DATAPATH_INST_n_75),
        .\FSM_onehot_STATE_reg[1]_2 (DATAPATH_INST_n_76),
        .\FSM_onehot_STATE_reg[1]_3 (DATAPATH_INST_n_77),
        .\FSM_onehot_STATE_reg[1]_4 (DATAPATH_INST_n_78),
        .\FSM_onehot_STATE_reg[1]_5 (DATAPATH_INST_n_79),
        .\FSM_onehot_STATE_reg[1]_6 (DATAPATH_INST_n_80),
        .\FSM_onehot_STATE_reg[7] (DATAPATH_INST_n_81),
        .IMAGE_HEIGHT_IBUF(IMAGE_HEIGHT_IBUF),
        .IMAGE_WIDTH_IBUF(IMAGE_WIDTH_IBUF),
        .Q({I[6:5],I[1:0]}),
        .RE1_out(RE1_out),
        .Start_IBUF(Start_IBUF),
        .WE2_out(WE2_out),
        .addr_A(addr_A),
        .addr_B(addr_B),
        .addr_C(addr_C),
        .addr_D(addr_D),
        .base_input_addr_IBUF(base_input_addr_IBUF),
        .base_output_addr_IBUF(base_output_addr_IBUF),
        .\counter_value_reg[0] (CONTROLLER_INST_n_21),
        .\counter_value_reg[3] (DATAPATH_INST_n_64),
        .\counter_value_reg[3]_0 (DATAPATH_INST_n_82),
        .\counter_value_reg[4] (DATAPATH_INST_n_56),
        .\counter_value_reg[4]_0 (DATAPATH_INST_n_63),
        .\counter_value_reg[4]_1 (CONTROLLER_INST_n_24),
        .\counter_value_reg[6] (iMax),
        .\counter_value_reg[6]_0 ({\COUNTER_I/p_1_in [6:5],\COUNTER_I/p_1_in [1:0]}),
        .\counter_value_reg[7] (iSubMax),
        .\counter_value_reg[7]_0 ({J[7:5],J[2:0]}),
        .\counter_value_reg[7]_1 ({\COUNTER_J/p_1_in [7:5],\COUNTER_J/p_1_in [2],CONTROLLER_INST_n_19,\COUNTER_J/p_1_in [0]}),
        .\counter_value_reg[8] (jMax),
        .\counter_value_reg[8]_0 ({p_1_in,En_B,En_A,En_C,CONTROLLER_INST_n_8,p_1_in5_in,init_sel,En_D,addr_store_sel,En_Compute}),
        .\counter_value_reg[8]_1 (CONTROLLER_INST_n_23),
        .\res_int_reg[7] (Data_store));
  IBUF \Data_in_IBUF[0]_inst 
       (.I(Data_in[0]),
        .O(Data_in_IBUF[0]));
  IBUF \Data_in_IBUF[1]_inst 
       (.I(Data_in[1]),
        .O(Data_in_IBUF[1]));
  IBUF \Data_in_IBUF[2]_inst 
       (.I(Data_in[2]),
        .O(Data_in_IBUF[2]));
  IBUF \Data_in_IBUF[3]_inst 
       (.I(Data_in[3]),
        .O(Data_in_IBUF[3]));
  IBUF \Data_in_IBUF[4]_inst 
       (.I(Data_in[4]),
        .O(Data_in_IBUF[4]));
  IBUF \Data_in_IBUF[5]_inst 
       (.I(Data_in[5]),
        .O(Data_in_IBUF[5]));
  IBUF \Data_in_IBUF[6]_inst 
       (.I(Data_in[6]),
        .O(Data_in_IBUF[6]));
  IBUF \Data_in_IBUF[7]_inst 
       (.I(Data_in[7]),
        .O(Data_in_IBUF[7]));
  OBUF \Data_out_OBUF[0]_inst 
       (.I(Data_out_OBUF[0]),
        .O(Data_out[0]));
  OBUF \Data_out_OBUF[10]_inst 
       (.I(Data_out_OBUF[10]),
        .O(Data_out[10]));
  OBUF \Data_out_OBUF[11]_inst 
       (.I(Data_out_OBUF[11]),
        .O(Data_out[11]));
  OBUF \Data_out_OBUF[12]_inst 
       (.I(Data_out_OBUF[12]),
        .O(Data_out[12]));
  OBUF \Data_out_OBUF[13]_inst 
       (.I(Data_out_OBUF[13]),
        .O(Data_out[13]));
  OBUF \Data_out_OBUF[14]_inst 
       (.I(Data_out_OBUF[14]),
        .O(Data_out[14]));
  OBUF \Data_out_OBUF[15]_inst 
       (.I(Data_out_OBUF[15]),
        .O(Data_out[15]));
  OBUF \Data_out_OBUF[1]_inst 
       (.I(Data_out_OBUF[1]),
        .O(Data_out[1]));
  OBUF \Data_out_OBUF[2]_inst 
       (.I(Data_out_OBUF[2]),
        .O(Data_out[2]));
  OBUF \Data_out_OBUF[3]_inst 
       (.I(Data_out_OBUF[3]),
        .O(Data_out[3]));
  OBUF \Data_out_OBUF[4]_inst 
       (.I(Data_out_OBUF[4]),
        .O(Data_out[4]));
  OBUF \Data_out_OBUF[5]_inst 
       (.I(Data_out_OBUF[5]),
        .O(Data_out[5]));
  OBUF \Data_out_OBUF[6]_inst 
       (.I(Data_out_OBUF[6]),
        .O(Data_out[6]));
  OBUF \Data_out_OBUF[7]_inst 
       (.I(Data_out_OBUF[7]),
        .O(Data_out[7]));
  OBUF \Data_out_OBUF[8]_inst 
       (.I(Data_out_OBUF[8]),
        .O(Data_out[8]));
  OBUF \Data_out_OBUF[9]_inst 
       (.I(Data_out_OBUF[9]),
        .O(Data_out[9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF Done_OBUF_inst
       (.I(lopt),
        .O(Done));
  IBUF \IMAGE_HEIGHT_IBUF[0]_inst 
       (.I(IMAGE_HEIGHT[0]),
        .O(IMAGE_HEIGHT_IBUF[0]));
  IBUF \IMAGE_HEIGHT_IBUF[1]_inst 
       (.I(IMAGE_HEIGHT[1]),
        .O(IMAGE_HEIGHT_IBUF[1]));
  IBUF \IMAGE_HEIGHT_IBUF[2]_inst 
       (.I(IMAGE_HEIGHT[2]),
        .O(IMAGE_HEIGHT_IBUF[2]));
  IBUF \IMAGE_HEIGHT_IBUF[3]_inst 
       (.I(IMAGE_HEIGHT[3]),
        .O(IMAGE_HEIGHT_IBUF[3]));
  IBUF \IMAGE_HEIGHT_IBUF[4]_inst 
       (.I(IMAGE_HEIGHT[4]),
        .O(IMAGE_HEIGHT_IBUF[4]));
  IBUF \IMAGE_HEIGHT_IBUF[5]_inst 
       (.I(IMAGE_HEIGHT[5]),
        .O(IMAGE_HEIGHT_IBUF[5]));
  IBUF \IMAGE_HEIGHT_IBUF[6]_inst 
       (.I(IMAGE_HEIGHT[6]),
        .O(IMAGE_HEIGHT_IBUF[6]));
  IBUF \IMAGE_HEIGHT_IBUF[7]_inst 
       (.I(IMAGE_HEIGHT[7]),
        .O(IMAGE_HEIGHT_IBUF[7]));
  IBUF \IMAGE_HEIGHT_IBUF[8]_inst 
       (.I(IMAGE_HEIGHT[8]),
        .O(IMAGE_HEIGHT_IBUF[8]));
  IBUF \IMAGE_WIDTH_IBUF[0]_inst 
       (.I(IMAGE_WIDTH[0]),
        .O(IMAGE_WIDTH_IBUF[0]));
  IBUF \IMAGE_WIDTH_IBUF[1]_inst 
       (.I(IMAGE_WIDTH[1]),
        .O(IMAGE_WIDTH_IBUF[1]));
  IBUF \IMAGE_WIDTH_IBUF[2]_inst 
       (.I(IMAGE_WIDTH[2]),
        .O(IMAGE_WIDTH_IBUF[2]));
  IBUF \IMAGE_WIDTH_IBUF[3]_inst 
       (.I(IMAGE_WIDTH[3]),
        .O(IMAGE_WIDTH_IBUF[3]));
  IBUF \IMAGE_WIDTH_IBUF[4]_inst 
       (.I(IMAGE_WIDTH[4]),
        .O(IMAGE_WIDTH_IBUF[4]));
  IBUF \IMAGE_WIDTH_IBUF[5]_inst 
       (.I(IMAGE_WIDTH[5]),
        .O(IMAGE_WIDTH_IBUF[5]));
  IBUF \IMAGE_WIDTH_IBUF[6]_inst 
       (.I(IMAGE_WIDTH[6]),
        .O(IMAGE_WIDTH_IBUF[6]));
  IBUF \IMAGE_WIDTH_IBUF[7]_inst 
       (.I(IMAGE_WIDTH[7]),
        .O(IMAGE_WIDTH_IBUF[7]));
  IBUF \IMAGE_WIDTH_IBUF[8]_inst 
       (.I(IMAGE_WIDTH[8]),
        .O(IMAGE_WIDTH_IBUF[8]));
  IBUF RE_IBUF_inst
       (.I(RE),
        .O(RE_IBUF));
  IBUF Start_IBUF_inst
       (.I(Start),
        .O(Start_IBUF));
  IBUF WE_IBUF_inst
       (.I(WE),
        .O(WE_IBUF));
  IBUF \base_input_addr_IBUF[0]_inst 
       (.I(base_input_addr[0]),
        .O(base_input_addr_IBUF[0]));
  IBUF \base_input_addr_IBUF[1]_inst 
       (.I(base_input_addr[1]),
        .O(base_input_addr_IBUF[1]));
  IBUF \base_input_addr_IBUF[2]_inst 
       (.I(base_input_addr[2]),
        .O(base_input_addr_IBUF[2]));
  IBUF \base_input_addr_IBUF[3]_inst 
       (.I(base_input_addr[3]),
        .O(base_input_addr_IBUF[3]));
  IBUF \base_input_addr_IBUF[4]_inst 
       (.I(base_input_addr[4]),
        .O(base_input_addr_IBUF[4]));
  IBUF \base_input_addr_IBUF[5]_inst 
       (.I(base_input_addr[5]),
        .O(base_input_addr_IBUF[5]));
  IBUF \base_input_addr_IBUF[6]_inst 
       (.I(base_input_addr[6]),
        .O(base_input_addr_IBUF[6]));
  IBUF \base_input_addr_IBUF[7]_inst 
       (.I(base_input_addr[7]),
        .O(base_input_addr_IBUF[7]));
  IBUF \base_output_addr_IBUF[0]_inst 
       (.I(base_output_addr[0]),
        .O(base_output_addr_IBUF[0]));
  IBUF \base_output_addr_IBUF[1]_inst 
       (.I(base_output_addr[1]),
        .O(base_output_addr_IBUF[1]));
  IBUF \base_output_addr_IBUF[2]_inst 
       (.I(base_output_addr[2]),
        .O(base_output_addr_IBUF[2]));
  IBUF \base_output_addr_IBUF[3]_inst 
       (.I(base_output_addr[3]),
        .O(base_output_addr_IBUF[3]));
  IBUF \base_output_addr_IBUF[4]_inst 
       (.I(base_output_addr[4]),
        .O(base_output_addr_IBUF[4]));
  IBUF \base_output_addr_IBUF[5]_inst 
       (.I(base_output_addr[5]),
        .O(base_output_addr_IBUF[5]));
  IBUF \base_output_addr_IBUF[6]_inst 
       (.I(base_output_addr[6]),
        .O(base_output_addr_IBUF[6]));
  IBUF \base_output_addr_IBUF[7]_inst 
       (.I(base_output_addr[7]),
        .O(base_output_addr_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \mem_addr_IBUF[0]_inst 
       (.I(mem_addr[0]),
        .O(mem_addr_IBUF[0]));
  IBUF \mem_addr_IBUF[1]_inst 
       (.I(mem_addr[1]),
        .O(mem_addr_IBUF[1]));
  IBUF \mem_addr_IBUF[2]_inst 
       (.I(mem_addr[2]),
        .O(mem_addr_IBUF[2]));
  IBUF \mem_addr_IBUF[3]_inst 
       (.I(mem_addr[3]),
        .O(mem_addr_IBUF[3]));
  IBUF \mem_addr_IBUF[4]_inst 
       (.I(mem_addr[4]),
        .O(mem_addr_IBUF[4]));
  IBUF \mem_addr_IBUF[5]_inst 
       (.I(mem_addr[5]),
        .O(mem_addr_IBUF[5]));
  IBUF \mem_addr_IBUF[6]_inst 
       (.I(mem_addr[6]),
        .O(mem_addr_IBUF[6]));
  IBUF \mem_addr_IBUF[7]_inst 
       (.I(mem_addr[7]),
        .O(mem_addr_IBUF[7]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF size_error_o_OBUF_inst
       (.I(size_error_o_OBUF),
        .O(size_error_o));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFD0000)) 
    size_error_o_OBUF_inst_i_1
       (.I0(CONTROLLER_INST_n_36),
        .I1(IMAGE_WIDTH_IBUF[1]),
        .I2(IMAGE_WIDTH_IBUF[0]),
        .I3(IMAGE_WIDTH_IBUF[2]),
        .I4(IMAGE_WIDTH_IBUF[8]),
        .I5(CONTROLLER_INST_n_35),
        .O(size_error_o_OBUF));
endmodule

module Memory
   (D,
    \FSM_onehot_STATE_reg[1] ,
    \FSM_onehot_STATE_reg[1]_0 ,
    \FSM_onehot_STATE_reg[1]_1 ,
    \FSM_onehot_STATE_reg[1]_2 ,
    \FSM_onehot_STATE_reg[1]_3 ,
    \FSM_onehot_STATE_reg[1]_4 ,
    \FSM_onehot_STATE_reg[1]_5 ,
    \FSM_onehot_STATE_reg[1]_6 ,
    S,
    \base_output_addr[7] ,
    CLK,
    WE2_out,
    RE1_out,
    ADDRARDADDR,
    DIADI,
    addr_store,
    memory_reg_0,
    addr_init0,
    addr_B0,
    addr_B1,
    base_output_addr_IBUF,
    addr_C1);
  output [15:0]D;
  output \FSM_onehot_STATE_reg[1] ;
  output \FSM_onehot_STATE_reg[1]_0 ;
  output \FSM_onehot_STATE_reg[1]_1 ;
  output \FSM_onehot_STATE_reg[1]_2 ;
  output \FSM_onehot_STATE_reg[1]_3 ;
  output \FSM_onehot_STATE_reg[1]_4 ;
  output \FSM_onehot_STATE_reg[1]_5 ;
  output \FSM_onehot_STATE_reg[1]_6 ;
  output [3:0]S;
  output [3:0]\base_output_addr[7] ;
  input CLK;
  input WE2_out;
  input RE1_out;
  input [7:0]ADDRARDADDR;
  input [15:0]DIADI;
  input [7:0]addr_store;
  input [1:0]memory_reg_0;
  input [7:0]addr_init0;
  input [7:0]addr_B0;
  input [3:0]addr_B1;
  input [3:0]base_output_addr_IBUF;
  input [3:0]addr_C1;

  wire [7:0]ADDRARDADDR;
  wire CLK;
  wire [15:0]D;
  wire [15:0]DIADI;
  wire \FSM_onehot_STATE_reg[1] ;
  wire \FSM_onehot_STATE_reg[1]_0 ;
  wire \FSM_onehot_STATE_reg[1]_1 ;
  wire \FSM_onehot_STATE_reg[1]_2 ;
  wire \FSM_onehot_STATE_reg[1]_3 ;
  wire \FSM_onehot_STATE_reg[1]_4 ;
  wire \FSM_onehot_STATE_reg[1]_5 ;
  wire \FSM_onehot_STATE_reg[1]_6 ;
  wire RE1_out;
  wire [3:0]S;
  wire WE2_out;
  wire [7:0]addr_B0;
  wire [3:0]addr_B1;
  wire [3:0]addr_C1;
  wire [7:0]addr_init0;
  wire [7:0]addr_store;
  wire [3:0]\base_output_addr[7] ;
  wire [3:0]base_output_addr_IBUF;
  wire [1:0]memory_reg_0;
  wire [15:0]NLW_memory_reg_DOADO_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_memory_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry__0_i_1
       (.I0(addr_B1[3]),
        .I1(base_output_addr_IBUF[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry__0_i_2
       (.I0(base_output_addr_IBUF[2]),
        .I1(addr_B1[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry__0_i_3
       (.I0(base_output_addr_IBUF[1]),
        .I1(addr_B1[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_B0_carry__0_i_4
       (.I0(base_output_addr_IBUF[0]),
        .I1(addr_B1[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry__0_i_1
       (.I0(base_output_addr_IBUF[3]),
        .I1(addr_C1[3]),
        .O(\base_output_addr[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry__0_i_2
       (.I0(base_output_addr_IBUF[2]),
        .I1(addr_C1[2]),
        .O(\base_output_addr[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry__0_i_3
       (.I0(base_output_addr_IBUF[1]),
        .I1(addr_C1[1]),
        .O(\base_output_addr[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    addr_C0_carry__0_i_4
       (.I0(base_output_addr_IBUF[0]),
        .I1(addr_C1[0]),
        .O(\base_output_addr[7] [0]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "3216" *) 
  (* RTL_RAM_NAME = "DATAPATH_INST/Memory_ins/memory" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    memory_reg
       (.ADDRARDADDR({1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI(DIADI),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_memory_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO(D),
        .DOPADOP(NLW_memory_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_memory_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(WE2_out),
        .ENBWREN(RE1_out),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_27
       (.I0(addr_store[7]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[7]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[7]),
        .O(\FSM_onehot_STATE_reg[1] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_31
       (.I0(addr_store[6]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[6]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[6]),
        .O(\FSM_onehot_STATE_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_34
       (.I0(addr_store[5]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[5]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[5]),
        .O(\FSM_onehot_STATE_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_37
       (.I0(addr_store[4]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[4]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[4]),
        .O(\FSM_onehot_STATE_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_40
       (.I0(addr_store[3]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[3]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[3]),
        .O(\FSM_onehot_STATE_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_43
       (.I0(addr_store[2]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[2]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[2]),
        .O(\FSM_onehot_STATE_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_46
       (.I0(addr_store[1]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[1]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[1]),
        .O(\FSM_onehot_STATE_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    memory_reg_i_49
       (.I0(addr_store[0]),
        .I1(memory_reg_0[0]),
        .I2(addr_init0[0]),
        .I3(memory_reg_0[1]),
        .I4(addr_B0[0]),
        .O(\FSM_onehot_STATE_reg[1]_6 ));
endmodule

module Regn
   (DI,
    Q,
    S,
    \res_int_reg[3] ,
    \res_int_reg[3]_0 ,
    \res_int_reg[3]_1 ,
    \res_int_reg[3]_2 ,
    \Q_reg[0]_0 ,
    D,
    CLK,
    AR);
  output [0:0]DI;
  output [15:0]Q;
  output [0:0]S;
  input [1:0]\res_int_reg[3] ;
  input [0:0]\res_int_reg[3]_0 ;
  input [0:0]\res_int_reg[3]_1 ;
  input \res_int_reg[3]_2 ;
  input [0:0]\Q_reg[0]_0 ;
  input [15:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]S;
  wire [1:0]\res_int_reg[3] ;
  wire [0:0]\res_int_reg[3]_0 ;
  wire [0:0]\res_int_reg[3]_1 ;
  wire \res_int_reg[3]_2 ;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h20BABA20BA2020BA)) 
    res_int0__0_carry_i_2
       (.I0(Q[1]),
        .I1(\res_int_reg[3] [0]),
        .I2(Q[0]),
        .I3(\res_int_reg[3]_0 ),
        .I4(\res_int_reg[3]_1 ),
        .I5(\res_int_reg[3] [1]),
        .O(DI));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry_i_6
       (.I0(DI),
        .I1(\res_int_reg[3]_2 ),
        .I2(Q[2]),
        .I3(\res_int_reg[3]_1 ),
        .I4(\res_int_reg[3]_0 ),
        .I5(\res_int_reg[3] [1]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_1
   (S,
    Q,
    DI,
    \Q_reg[14]_0 ,
    \res_int_reg[15] ,
    \res_int_reg[15]_0 ,
    \res_int_reg[15]_1 ,
    \res_int_reg[15]_2 ,
    \Q_reg[0]_0 ,
    D,
    CLK,
    AR);
  output [0:0]S;
  output [15:0]Q;
  output [0:0]DI;
  output [0:0]\Q_reg[14]_0 ;
  input [2:0]\res_int_reg[15] ;
  input [2:0]\res_int_reg[15]_0 ;
  input [1:0]\res_int_reg[15]_1 ;
  input \res_int_reg[15]_2 ;
  input [0:0]\Q_reg[0]_0 ;
  input [15:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [0:0]DI;
  wire [15:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[14]_0 ;
  wire [0:0]S;
  wire res_int0__0_carry__2_i_10_n_0;
  wire [2:0]\res_int_reg[15] ;
  wire [2:0]\res_int_reg[15]_0 ;
  wire [1:0]\res_int_reg[15]_1 ;
  wire \res_int_reg[15]_2 ;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'h8E)) 
    res_int0__0_carry__2_i_10
       (.I0(Q[13]),
        .I1(\res_int_reg[15] [1]),
        .I2(\res_int_reg[15]_0 [1]),
        .O(res_int0__0_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h871E1E78E187871E)) 
    res_int0__0_carry__2_i_4
       (.I0(res_int0__0_carry__2_i_10_n_0),
        .I1(\res_int_reg[15]_1 [1]),
        .I2(\res_int_reg[15]_2 ),
        .I3(Q[14]),
        .I4(\res_int_reg[15] [2]),
        .I5(\res_int_reg[15]_0 [2]),
        .O(\Q_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    res_int0__0_carry_i_4
       (.I0(Q[0]),
        .I1(\res_int_reg[15] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h6996)) 
    res_int0__0_carry_i_8
       (.I0(Q[0]),
        .I1(\res_int_reg[15] [0]),
        .I2(\res_int_reg[15]_0 [0]),
        .I3(\res_int_reg[15]_1 [0]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_2
   (\Q_reg[15]_0 ,
    Q,
    res_int0__0_carry__2_i_4,
    res_int0__0_carry__2_i_4_0,
    res_int0__0_carry__2_i_4_1,
    \Q_reg[0]_0 ,
    D,
    CLK,
    AR);
  output \Q_reg[15]_0 ;
  output [14:0]Q;
  input [0:0]res_int0__0_carry__2_i_4;
  input [0:0]res_int0__0_carry__2_i_4_0;
  input [0:0]res_int0__0_carry__2_i_4_1;
  input [0:0]\Q_reg[0]_0 ;
  input [15:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire [15:15]C;
  wire CLK;
  wire [15:0]D;
  wire [14:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[15]_0 ;
  wire [0:0]res_int0__0_carry__2_i_4;
  wire [0:0]res_int0__0_carry__2_i_4_0;
  wire [0:0]res_int0__0_carry__2_i_4_1;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[15]),
        .Q(C));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'h9669)) 
    res_int0__0_carry__2_i_11
       (.I0(C),
        .I1(res_int0__0_carry__2_i_4),
        .I2(res_int0__0_carry__2_i_4_0),
        .I3(res_int0__0_carry__2_i_4_1),
        .O(\Q_reg[15]_0 ));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_3
   (Q,
    \Q_reg[2]_0 ,
    DI,
    \Q_reg[6]_0 ,
    \Q_reg[10]_0 ,
    \Q_reg[13]_0 ,
    S,
    \Q_reg[7]_0 ,
    \Q_reg[11]_0 ,
    \Q_reg[14]_0 ,
    res_int0__0_carry__2_i_5_0,
    res_int0__0_carry__2_i_5_1,
    \res_int_reg[15] ,
    \Q_reg[0]_0 ,
    D,
    CLK,
    AR);
  output [4:0]Q;
  output \Q_reg[2]_0 ;
  output [1:0]DI;
  output [3:0]\Q_reg[6]_0 ;
  output [3:0]\Q_reg[10]_0 ;
  output [2:0]\Q_reg[13]_0 ;
  output [1:0]S;
  output [3:0]\Q_reg[7]_0 ;
  output [3:0]\Q_reg[11]_0 ;
  output [2:0]\Q_reg[14]_0 ;
  input [14:0]res_int0__0_carry__2_i_5_0;
  input [14:0]res_int0__0_carry__2_i_5_1;
  input [14:0]\res_int_reg[15] ;
  input [0:0]\Q_reg[0]_0 ;
  input [15:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [1:0]DI;
  wire [12:2]D_0;
  wire [4:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [3:0]\Q_reg[10]_0 ;
  wire [3:0]\Q_reg[11]_0 ;
  wire [2:0]\Q_reg[13]_0 ;
  wire [2:0]\Q_reg[14]_0 ;
  wire \Q_reg[2]_0 ;
  wire [3:0]\Q_reg[6]_0 ;
  wire [3:0]\Q_reg[7]_0 ;
  wire [1:0]S;
  wire res_int0__0_carry__0_i_10_n_0;
  wire res_int0__0_carry__0_i_11_n_0;
  wire res_int0__0_carry__0_i_12_n_0;
  wire res_int0__0_carry__0_i_9_n_0;
  wire res_int0__0_carry__1_i_10_n_0;
  wire res_int0__0_carry__1_i_11_n_0;
  wire res_int0__0_carry__1_i_12_n_0;
  wire res_int0__0_carry__1_i_9_n_0;
  wire res_int0__0_carry__2_i_12_n_0;
  wire [14:0]res_int0__0_carry__2_i_5_0;
  wire [14:0]res_int0__0_carry__2_i_5_1;
  wire res_int0__0_carry__2_i_8_n_0;
  wire res_int0__0_carry__2_i_9_n_0;
  wire res_int0__0_carry_i_10_n_0;
  wire res_int0__0_carry_i_11_n_0;
  wire [14:0]\res_int_reg[15] ;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[10]),
        .Q(D_0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[11]),
        .Q(D_0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[12]),
        .Q(D_0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(D_0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(D_0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(D_0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(D_0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(D_0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(D_0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[8]),
        .Q(D_0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(\Q_reg[0]_0 ),
        .CLR(AR),
        .D(D[9]),
        .Q(D_0[9]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__0_i_1
       (.I0(\res_int_reg[15] [6]),
        .I1(res_int0__0_carry__0_i_9_n_0),
        .I2(D_0[5]),
        .I3(res_int0__0_carry__2_i_5_1[5]),
        .I4(res_int0__0_carry__2_i_5_0[5]),
        .O(\Q_reg[6]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__0_i_10
       (.I0(D_0[5]),
        .I1(res_int0__0_carry__2_i_5_0[5]),
        .I2(res_int0__0_carry__2_i_5_1[5]),
        .O(res_int0__0_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__0_i_11
       (.I0(D_0[4]),
        .I1(res_int0__0_carry__2_i_5_0[4]),
        .I2(res_int0__0_carry__2_i_5_1[4]),
        .O(res_int0__0_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__0_i_12
       (.I0(D_0[7]),
        .I1(res_int0__0_carry__2_i_5_0[7]),
        .I2(res_int0__0_carry__2_i_5_1[7]),
        .O(res_int0__0_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__0_i_2
       (.I0(\res_int_reg[15] [5]),
        .I1(res_int0__0_carry__0_i_10_n_0),
        .I2(D_0[4]),
        .I3(res_int0__0_carry__2_i_5_1[4]),
        .I4(res_int0__0_carry__2_i_5_0[4]),
        .O(\Q_reg[6]_0 [2]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__0_i_3
       (.I0(\res_int_reg[15] [4]),
        .I1(res_int0__0_carry__0_i_11_n_0),
        .I2(D_0[3]),
        .I3(res_int0__0_carry__2_i_5_1[3]),
        .I4(res_int0__0_carry__2_i_5_0[3]),
        .O(\Q_reg[6]_0 [1]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__0_i_4
       (.I0(\res_int_reg[15] [3]),
        .I1(res_int0__0_carry_i_10_n_0),
        .I2(D_0[2]),
        .I3(res_int0__0_carry__2_i_5_1[2]),
        .I4(res_int0__0_carry__2_i_5_0[2]),
        .O(\Q_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__0_i_5
       (.I0(\Q_reg[6]_0 [3]),
        .I1(res_int0__0_carry__0_i_12_n_0),
        .I2(\res_int_reg[15] [7]),
        .I3(res_int0__0_carry__2_i_5_0[6]),
        .I4(res_int0__0_carry__2_i_5_1[6]),
        .I5(D_0[6]),
        .O(\Q_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__0_i_6
       (.I0(\Q_reg[6]_0 [2]),
        .I1(res_int0__0_carry__0_i_9_n_0),
        .I2(\res_int_reg[15] [6]),
        .I3(res_int0__0_carry__2_i_5_0[5]),
        .I4(res_int0__0_carry__2_i_5_1[5]),
        .I5(D_0[5]),
        .O(\Q_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__0_i_7
       (.I0(\Q_reg[6]_0 [1]),
        .I1(res_int0__0_carry__0_i_10_n_0),
        .I2(\res_int_reg[15] [5]),
        .I3(res_int0__0_carry__2_i_5_0[4]),
        .I4(res_int0__0_carry__2_i_5_1[4]),
        .I5(D_0[4]),
        .O(\Q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__0_i_8
       (.I0(\Q_reg[6]_0 [0]),
        .I1(res_int0__0_carry__0_i_11_n_0),
        .I2(\res_int_reg[15] [4]),
        .I3(res_int0__0_carry__2_i_5_0[3]),
        .I4(res_int0__0_carry__2_i_5_1[3]),
        .I5(D_0[3]),
        .O(\Q_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__0_i_9
       (.I0(D_0[6]),
        .I1(res_int0__0_carry__2_i_5_0[6]),
        .I2(res_int0__0_carry__2_i_5_1[6]),
        .O(res_int0__0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__1_i_1
       (.I0(\res_int_reg[15] [10]),
        .I1(res_int0__0_carry__1_i_9_n_0),
        .I2(D_0[9]),
        .I3(res_int0__0_carry__2_i_5_1[9]),
        .I4(res_int0__0_carry__2_i_5_0[9]),
        .O(\Q_reg[10]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__1_i_10
       (.I0(D_0[9]),
        .I1(res_int0__0_carry__2_i_5_0[9]),
        .I2(res_int0__0_carry__2_i_5_1[9]),
        .O(res_int0__0_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__1_i_11
       (.I0(D_0[8]),
        .I1(res_int0__0_carry__2_i_5_0[8]),
        .I2(res_int0__0_carry__2_i_5_1[8]),
        .O(res_int0__0_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__1_i_12
       (.I0(D_0[11]),
        .I1(res_int0__0_carry__2_i_5_0[11]),
        .I2(res_int0__0_carry__2_i_5_1[11]),
        .O(res_int0__0_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__1_i_2
       (.I0(\res_int_reg[15] [9]),
        .I1(res_int0__0_carry__1_i_10_n_0),
        .I2(D_0[8]),
        .I3(res_int0__0_carry__2_i_5_1[8]),
        .I4(res_int0__0_carry__2_i_5_0[8]),
        .O(\Q_reg[10]_0 [2]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__1_i_3
       (.I0(\res_int_reg[15] [8]),
        .I1(res_int0__0_carry__1_i_11_n_0),
        .I2(D_0[7]),
        .I3(res_int0__0_carry__2_i_5_1[7]),
        .I4(res_int0__0_carry__2_i_5_0[7]),
        .O(\Q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__1_i_4
       (.I0(\res_int_reg[15] [7]),
        .I1(res_int0__0_carry__0_i_12_n_0),
        .I2(D_0[6]),
        .I3(res_int0__0_carry__2_i_5_1[6]),
        .I4(res_int0__0_carry__2_i_5_0[6]),
        .O(\Q_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__1_i_5
       (.I0(\Q_reg[10]_0 [3]),
        .I1(res_int0__0_carry__1_i_12_n_0),
        .I2(\res_int_reg[15] [11]),
        .I3(res_int0__0_carry__2_i_5_0[10]),
        .I4(res_int0__0_carry__2_i_5_1[10]),
        .I5(D_0[10]),
        .O(\Q_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__1_i_6
       (.I0(\Q_reg[10]_0 [2]),
        .I1(res_int0__0_carry__1_i_9_n_0),
        .I2(\res_int_reg[15] [10]),
        .I3(res_int0__0_carry__2_i_5_0[9]),
        .I4(res_int0__0_carry__2_i_5_1[9]),
        .I5(D_0[9]),
        .O(\Q_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__1_i_7
       (.I0(\Q_reg[10]_0 [1]),
        .I1(res_int0__0_carry__1_i_10_n_0),
        .I2(\res_int_reg[15] [9]),
        .I3(res_int0__0_carry__2_i_5_0[8]),
        .I4(res_int0__0_carry__2_i_5_1[8]),
        .I5(D_0[8]),
        .O(\Q_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__1_i_8
       (.I0(\Q_reg[10]_0 [0]),
        .I1(res_int0__0_carry__1_i_11_n_0),
        .I2(\res_int_reg[15] [8]),
        .I3(res_int0__0_carry__2_i_5_0[7]),
        .I4(res_int0__0_carry__2_i_5_1[7]),
        .I5(D_0[7]),
        .O(\Q_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__1_i_9
       (.I0(D_0[10]),
        .I1(res_int0__0_carry__2_i_5_0[10]),
        .I2(res_int0__0_carry__2_i_5_1[10]),
        .O(res_int0__0_carry__1_i_9_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__2_i_1
       (.I0(\res_int_reg[15] [13]),
        .I1(res_int0__0_carry__2_i_8_n_0),
        .I2(D_0[12]),
        .I3(res_int0__0_carry__2_i_5_1[12]),
        .I4(res_int0__0_carry__2_i_5_0[12]),
        .O(\Q_reg[13]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__2_i_12
       (.I0(Q[3]),
        .I1(res_int0__0_carry__2_i_5_0[14]),
        .I2(res_int0__0_carry__2_i_5_1[14]),
        .O(res_int0__0_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__2_i_2
       (.I0(\res_int_reg[15] [12]),
        .I1(res_int0__0_carry__2_i_9_n_0),
        .I2(D_0[11]),
        .I3(res_int0__0_carry__2_i_5_1[11]),
        .I4(res_int0__0_carry__2_i_5_0[11]),
        .O(\Q_reg[13]_0 [1]));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry__2_i_3
       (.I0(\res_int_reg[15] [11]),
        .I1(res_int0__0_carry__1_i_12_n_0),
        .I2(D_0[10]),
        .I3(res_int0__0_carry__2_i_5_1[10]),
        .I4(res_int0__0_carry__2_i_5_0[10]),
        .O(\Q_reg[13]_0 [0]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__2_i_5
       (.I0(\Q_reg[13]_0 [2]),
        .I1(res_int0__0_carry__2_i_12_n_0),
        .I2(\res_int_reg[15] [14]),
        .I3(res_int0__0_carry__2_i_5_0[13]),
        .I4(res_int0__0_carry__2_i_5_1[13]),
        .I5(Q[2]),
        .O(\Q_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__2_i_6
       (.I0(\Q_reg[13]_0 [1]),
        .I1(res_int0__0_carry__2_i_8_n_0),
        .I2(\res_int_reg[15] [13]),
        .I3(res_int0__0_carry__2_i_5_0[12]),
        .I4(res_int0__0_carry__2_i_5_1[12]),
        .I5(D_0[12]),
        .O(\Q_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry__2_i_7
       (.I0(\Q_reg[13]_0 [0]),
        .I1(res_int0__0_carry__2_i_9_n_0),
        .I2(\res_int_reg[15] [12]),
        .I3(res_int0__0_carry__2_i_5_0[11]),
        .I4(res_int0__0_carry__2_i_5_1[11]),
        .I5(D_0[11]),
        .O(\Q_reg[14]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__2_i_8
       (.I0(Q[2]),
        .I1(res_int0__0_carry__2_i_5_0[13]),
        .I2(res_int0__0_carry__2_i_5_1[13]),
        .O(res_int0__0_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry__2_i_9
       (.I0(D_0[12]),
        .I1(res_int0__0_carry__2_i_5_0[12]),
        .I2(res_int0__0_carry__2_i_5_1[12]),
        .O(res_int0__0_carry__2_i_9_n_0));
  LUT5 #(
    .INIT(32'hEE8E8E88)) 
    res_int0__0_carry_i_1
       (.I0(\res_int_reg[15] [2]),
        .I1(\Q_reg[2]_0 ),
        .I2(Q[1]),
        .I3(res_int0__0_carry__2_i_5_1[1]),
        .I4(res_int0__0_carry__2_i_5_0[1]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry_i_10
       (.I0(D_0[3]),
        .I1(res_int0__0_carry__2_i_5_0[3]),
        .I2(res_int0__0_carry__2_i_5_1[3]),
        .O(res_int0__0_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry_i_11
       (.I0(Q[1]),
        .I1(res_int0__0_carry__2_i_5_0[1]),
        .I2(res_int0__0_carry__2_i_5_1[1]),
        .O(res_int0__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h9669966969969669)) 
    res_int0__0_carry_i_3
       (.I0(res_int0__0_carry__2_i_5_1[1]),
        .I1(res_int0__0_carry__2_i_5_0[1]),
        .I2(Q[1]),
        .I3(\res_int_reg[15] [1]),
        .I4(\res_int_reg[15] [0]),
        .I5(Q[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    res_int0__0_carry_i_5
       (.I0(DI[1]),
        .I1(res_int0__0_carry_i_10_n_0),
        .I2(\res_int_reg[15] [3]),
        .I3(res_int0__0_carry__2_i_5_0[2]),
        .I4(res_int0__0_carry__2_i_5_1[2]),
        .I5(D_0[2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hB44BB44BB44B4BB4)) 
    res_int0__0_carry_i_7
       (.I0(Q[0]),
        .I1(\res_int_reg[15] [0]),
        .I2(\res_int_reg[15] [1]),
        .I3(res_int0__0_carry_i_11_n_0),
        .I4(res_int0__0_carry__2_i_5_0[0]),
        .I5(res_int0__0_carry__2_i_5_1[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h69)) 
    res_int0__0_carry_i_9
       (.I0(D_0[2]),
        .I1(res_int0__0_carry__2_i_5_0[2]),
        .I2(res_int0__0_carry__2_i_5_1[2]),
        .O(\Q_reg[2]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
