`timescale 1ns/1ps
`define mydelay 1

//--------------------------------------------------------------
// mips.v
// David_Harris@hmc.edu and Sarah_Harris@hmc.edu 23 October 2005
// Single-cycle MIPS processor
//--------------------------------------------------------------

// single-cycle MIPS processor
module mips(input         clk, reset,
            output [31:0] pc,
            input  [31:0] instr,
            output        memwrite,
            output [31:0] memaddr,
            output [31:0] memwritedata,
            input  [31:0] memreaddata);

  wire        signext, shiftl16, memtoreg, branch;
  wire        pcsrc, zero;
  wire        alusrc, regdst, regwrite, jump;
  wire [2:0]  alucontrol;
  wire [31:0] IF_ID_inst_out;  //add f.f wire

  // Instantiate Controller
  controller c(
  // ###### jongho lee: Start #######
      .op         (IF_ID_inst_out[31:26]), 
		.funct      (IF_ID_inst_out[5:0]),//errror!!
  // ###### jongho lee: End #######
		.zero       (zero),
		.signext    (signext),
		.shiftl16   (shiftl16),
		.memtoreg   (memtoreg),
		.memwrite   (memwrite),
		.pcsrc      (pcsrc),
		.alusrc     (alusrc),
		.regdst     (regdst),
		.regwrite   (regwrite),
		.jump       (jump),
		.alucontrol (alucontrol));

  // Instantiate Datapath
  datapath dp(
    .clk        (clk),
    .reset      (reset),
    .signext    (signext),
    .shiftl16   (shiftl16),
    .memtoreg   (memtoreg),
    .pcsrc      (pcsrc),
    .alusrc     (alusrc),
    .regdst     (regdst),
    .regwrite   (regwrite),
    .jump       (jump),
    .alucontrol (alucontrol),
    .zero       (zero),
    .pc         (pc),
	 .instr		 (instr),
    .IF_ID_inst_out      (IF_ID_inst_out),  //add f.f wire  //why error?????
    .aluout     (memaddr), 
    .ID_EX_rd2_out  (memwritedata),  //writedata change
    .readdata   (memreaddata));

endmodule

module controller(input  [5:0] op, funct,
                  input        zero,
                  output       signext,
                  output       shiftl16,
                  output       memtoreg, memwrite,
                  output       pcsrc, alusrc,
                  output       regdst, regwrite,
                  output       jump,
                  output [2:0] alucontrol);

  wire [1:0] aluop;
  wire       branch;

  maindec md(
    .op       (op),
	 .funct	  (funct),   //add funct
    .signext  (signext),
    .shiftl16 (shiftl16),
    .memtoreg (memtoreg),
    .memwrite (memwrite),
    .branch   (branch),
    .alusrc   (alusrc),
    .regdst   (regdst),
    .regwrite (regwrite),
    .jump     (jump),
    .aluop    (aluop));

  aludec ad( 
    .funct      (ID_EX_inst_3_out),
    .aluop      (ID_EX_C_aluop_out),  //change input aluop
    .alucontrol (alucontrol));
	 
  flopr #(2) ID_EX_C_aluop (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (aluop[1:0]), 
	 .q     (ID_EX_C_aluop_out));  //control aluop f.f add
	 
  flopr #(32) ID_EX_inst_3 (
    .clk   (clk), 
	 .reset (reset), 
	 .d     (funct), 
	 .q     (ID_EX_inst_3_out)); 

  assign pcsrc = op[0] ? (branch & ~zero) : (branch & zero); //bne!!!!!! beq -> op[0]=0, bne -> op[0]=1
  
endmodule


module maindec(input  [5:0] op, funct,  //add funct to Distinguish jr
               output       signext,
               output       shiftl16,
               output       memtoreg, memwrite,
               output       branch, alusrc,
               output       regdst, regwrite,
               output       jump,
               output [1:0] aluop);

  reg [10:0] controls;

  assign {signext, shiftl16, regwrite, regdst, alusrc, branch, memwrite,
          memtoreg, jump, aluop} = controls;

  always @(*)
    case(op)
      6'b000000:
		if (funct == 6'b001000)
			controls <= #`mydelay 11'b00000000100;// JR
      else
			controls <= #`mydelay 11'b00110000011; // Rtype
      6'b100011: controls <= #`mydelay 11'b10101001000; // LW
      6'b101011: controls <= #`mydelay 11'b10001010000; // SW
      6'b000100: controls <= #`mydelay 11'b10000100001; // BEQ 
		6'b000101: controls <= #`mydelay 11'b10000100001; // BNE
      6'b001000, 
      6'b001001: controls <= #`mydelay 11'b10101000000; // ADDI, ADDIU: only difference is exception
      6'b001101: controls <= #`mydelay 11'b00101000010; // ORI
      6'b001111: controls <= #`mydelay 11'b01101000000; // LUI
      6'b000010: controls <= #`mydelay 11'b00000000100; // J
		6'b000011: controls <= #`mydelay 11'b00100000100; // JAL
		//6'b000000: controls <= #`mydelay 11'b00000000100; // JR 000000 already in case
      default:   controls <= #`mydelay 11'bxxxxxxxxxxx; // ???
    endcase
	 

endmodule

module aludec(input      [5:0] funct,
              input      [1:0] aluop,
              output reg [2:0] alucontrol);

  always @(*)
    case(aluop)
      2'b00: alucontrol <= #`mydelay 3'b010;  // add
      2'b01: alucontrol <= #`mydelay 3'b110;  // sub
      2'b10: alucontrol <= #`mydelay 3'b001;  // or
      default: case(funct)          // RTYPE
          6'b100000,
          6'b100001: alucontrol <= #`mydelay 3'b010; // ADD, ADDU: only difference is exception
          6'b100010,
          6'b100011: alucontrol <= #`mydelay 3'b110; // SUB, SUBU: only difference is exception
          6'b100100: alucontrol <= #`mydelay 3'b000; // AND
          6'b100101: alucontrol <= #`mydelay 3'b001; // OR
			 6'b101010: alucontrol <= #`mydelay 3'b111; // SLT
          6'b101011: alucontrol <= #`mydelay 3'b111; // SLTU!!!
          default:   alucontrol <= #`mydelay 3'bxxx; // ???
        endcase
    endcase
    
endmodule

module datapath(input         clk, reset,
                input         signext,
                input         shiftl16,
                input         memtoreg, pcsrc,
                input         alusrc, regdst,
                input         regwrite, jump,
                input  [2:0]  alucontrol,
                output        zero,
                output [31:0] pc,
                input  [31:0] instr,
					 output [31:0] IF_ID_inst_out,    //add f.f wire
                output [31:0] aluout, ID_EX_rd2_out,  //add f.f(wirtedata) wire
                input  [31:0] readdata);

  wire [4:0]  writereg, wa_mux_result;
  wire [31:0] pcnext, pcnextbr, pcplus4, pcbranch;
  wire [31:0] signimm, signimmsh, shiftedimm;
  wire [31:0] srca, srcb;
  wire [31:0] result, jr_pc_result, ra1_mux_result, wd_mux_result;
  wire        shift;
  
  // ###### jongho lee: Start ####### 
  wire [31:0] IF_ID_pcplus4_out;    //add f.f wire
  //wire [31:0] ID_EX_rd2_out;
  // ###### jongho lee: End #######
  
  // next PC logic
  flopr #(32) pcreg(
    .clk   (clk),
    .reset (reset),
    .d     (pcnext),
    .q     (pc));

  adder pcadd1(
    .a (pc),
    .b (32'b100),
    .y (pcplus4));      // insult IF_ID_pcplus4_out

  sl2 immsh(
    .a (ID_EX_signimm_out),  //f.f
    .y (signimmsh));
				 
  adder pcadd2(
    .a (ID_EX_pcplus4_out),  // after ID_EX f.f
    .b (signimmsh),
    .y (pcbranch));

  mux2 #(32) pcbrmux(
    .d0  (IF_ID_pcplus4_out),
    .d1  (pcbranch),
    .s   (pcsrc),
    .y   (pcnextbr));

  mux2 #(32) pcmux(
    .d0   (pcnextbr),
    .d1   (jr_pc_result),
    .s    (jump),
    .y    (pcnext));

  // register file logic
  regfile rf(
    .clk     (clk),
    .we      (regwrite),
    .ra1     (IF_ID_inst_out[25:21]),
    .ra2     (ra1_mux_result),
    .wa      (wa_mux_result),
    .wd      (wd_mux_result),
    .rd1     (srca),
    .rd2     (writedata));

  mux2 #(5) wrmux(
    .d0  (ID_EX_inst_1_out),
    .d1  (ID_EX_inst_2_out),
    .s   (ID_EX_C_regdst_out),
    .y   (writereg));

  mux2 #(32) resmux(
    .d0 (aluout),
    .d1 (readdata),
    .s  (memtoreg),
    .y  (result));

  sign_zero_ext sze(
    .a       (IF_ID_inst_out[15:0]),
    .signext (signext),
    .y       (signimm[31:0]));

  shift_left_16 sl16(
    .a         (ID_EX_signimm_out),
    .shiftl16  (shiftl16),
    .y         (shiftedimm[31:0]));

  // ALU logic
  mux2 #(32) srcbmux(
    .d0 (ID_EX_rd2_out),
    .d1 (shiftedimm[31:0]),
    .s  (ID_EX_C_alusrc_out),    //after ID_EX f.f
    .y  (srcb));

  alu alu(
    .a       (ID_EX_rd1_out),
    .b       (srcb),
    .alucont (alucontrol),
    .result  (aluout),
    .zero    (zero));
    
	 mux2 #(32) wd_mux(
    .d0 (result),
    .d1 (IF_ID_pcplus4_out),
    .s  (jump),
    .y  (wd_mux_result)); //before wd
	 
	 mux2 #(5) wa_mux(
    .d0 (writereg),
    .d1 (5'b11111),
    .s  (jump),
    .y  (wa_mux_result));  //before wd
	 
	 mux2 #(5) ra1_mux(
    .d0 (IF_ID_inst_out[20:16]),
    .d1 (5'b11111),
    .s  (~IF_ID_inst_out[31] & ~IF_ID_inst_out[30] & ~IF_ID_inst_out[29] & ~IF_ID_inst_out[28] & ~IF_ID_inst_out[27] & ~IF_ID_inst_out[26] & ~IF_ID_inst_out[0] & ~IF_ID_inst_out[1] & ~IF_ID_inst_out[2] & IF_ID_inst_out[3] & ~IF_ID_inst_out[4] & ~IF_ID_inst_out[5]),  //~instr[31] & ~instr[30] & ~instr[29] & ~instr[28] & ~instr[27] & ~instr[26] & ~instr[0] & ~instr[1] & ~instr[2] & instr[3] & ~instr[4] & ~instr[5]
    .y  (ra1_mux_result));  //after ra2
	 
	 mux2 #(32) jr_pc_mux(
    .d0 ({IF_ID_pcplus4_out[31:28], IF_ID_inst_out[25:0], 2'b00}),
    .d1 (ID_EX_rd2_out),
    .s  (~IF_ID_inst_out[31] & ~IF_ID_inst_out[30] & ~IF_ID_inst_out[29] & ~IF_ID_inst_out[28] & ~IF_ID_inst_out[27] & ~IF_ID_inst_out[26] & ~IF_ID_inst_out[0] & ~IF_ID_inst_out[1] & ~IF_ID_inst_out[2] & IF_ID_inst_out[3] & ~IF_ID_inst_out[4] & ~IF_ID_inst_out[5]),
    .y  (jr_pc_result));  //after rd2
	 
	 // ###### Jongho Lee: Start #######
	 flopenr #(32) IF_ID_inst(
    .clk   (clk),
    .reset (reset),
	 .en	  (~stall),
    .d     (instr[31:0]),
    .q     (IF_ID_inst_out));
	 
	 flopenr #(32) IF_ID_pcplus4 (
	 .clk   (clk), 
	 .reset (reset),
	 .en    (~stall),
	 .d     (pcplus4),
	 .q     (IF_ID_pcplus4_out));
	 
	 wire [31:0] ID_EX_pcplus4_out;
    flopr #(32) ID_EX_pcplus4 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_pcplus4_out), 
	 .q     (ID_EX_pcplus4_out));	
	 
	 wire [31:0] ID_EX_signimm_out;
	 flopr #(32) ID_EX_signimm (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (signimm[31:0]), 
	 .q     (ID_EX_signimm_out));
	 
	 flopr #(32) ID_EX_inst_1 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_inst_out[20:16]), 
	 .q     (ID_EX_inst_1_out));
	 
	 flopr #(32) ID_EX_inst_2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_inst_out[15:11]), 
	 .q     (ID_EX_inst_2_out));
	 
	 //wire [31:0] ID_EX_shiftedimm_out; 
	 //flopr #(32) ID_EX_shiftedimm (
	 //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (shiftedimm[31:0]), 
	 //.q     (ID_EX_shiftedimm_out));
	 
	 flopr #(1) ID_EX_C_signext (   //control start
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (signext), 
	 .q     (ID_EX_C_signext_out));
	 
	 flopr #(1) ID_EX_C_shiftl16 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (shiftl16), 
	 .q     (ID_EX_C_shiftl16_out));
	 
	 flopr #(1) ID_EX_C_regwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (regwrite), 
	 .q     (ID_EX_C_regwrite_out));
	 
	 flopr #(1) ID_EX_C_regdst (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (regdst), 
	 .q     (ID_EX_C_regdst_out));
	 
	 flopr #(1) ID_EX_C_alusrc (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (alusrc), 
	 .q     (ID_EX_C_alusrc_out));
	 
	 flopr #(1) ID_EX_C_branch (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (branch), 
	 .q     (ID_EX_C_branch_out));
	 
	 flopr #(1) ID_EX_C_memwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (memwrite), 
	 .q     (ID_EX_C_memwrite_out));
	 
	 flopr #(1) ID_EX_C_memtoreg (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (memtoreg), 
	 .q     (ID_EX_C_memtoreg_out));
	 
	 flopr #(1) ID_EX_C_jump (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (jump), 
	 .q     (ID_EX_C_jump_out));
	 
	 //flopr #(2) ID_EX_C_aluop (
	 //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (aluop[1:0]), 
	 //.q     (ID_EX_C_aluop_out));  //control end
	 
	 flopr #(32) ID_EX_rd1 (    //read data start
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (srca), 
	 .q     (ID_EX_rd1_out));
	 
	 flopr #(32) ID_EX_rd2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (writedata), 
	 .q     (ID_EX_rd2_out));    //read data end
	 // ###### Jongho Lee: End #######
endmodule
