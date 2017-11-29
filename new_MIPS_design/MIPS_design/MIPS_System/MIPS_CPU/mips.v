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
  //add new wire
  wire 		  stall;
  wire ID_EX_memtoreg;
  wire [4:0] ID_EX_rs, ID_EX_rt, IF_ID_rs, IF_ID_rt;
  wire EX_MEM_regwrite;  //for fwd
  wire [1:0] ForwardC, ForwardD;
  wire ForwardA, ForwardB;
  wire [4:0] EX_MEM_writereg, MEM_WB_writereg;
  wire [31:0] IF_ID_instr;

  // Instantiate Controller
  controller c(
    .stall     (stall),
    .clk       (clk),
	 .reset     (reset),		//add clk, reset, stall
    .op         (IF_ID_instr[31:26]), 
		.funct      (IF_ID_instr[5:0]), 
		.zero       (zero),
		.signext    (signext),
		.shiftl16   (shiftl16),
		.MEM_WB_memtoreg   (memtoreg),
		.EX_MEM_memwrite   (memwrite),
		.pcsrc      (pcsrc),
		.ID_EX_alusrc     (alusrc),
		.ID_EX_regdst     (regdst),
		.MEM_WB_regwrite   (regwrite),
		.EX_MEM_regwrite   (EX_MEM_regwrite),
		.jump       (jump),
		.alucontrol (alucontrol),
		.ID_EX_memtoreg  (ID_EX_memtoreg));

  // Instantiate Datapath
  datapath dp(
    .stall      (stall),   //add stall
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
    .EX_MEM_zero       (zero),  //zero out, to controler
    .pc         (pc),
    .instr      (instr),
    .EX_MEM_aluout     (memaddr), 
    .EX_MEM_writedata  (memwritedata),
    .readdata   (memreaddata),
	  
	 .IF_ID_instr (IF_ID_instr),
	 .IF_ID_rs   (IF_ID_rs), 
	 .IF_ID_rt   (IF_ID_rt), 
	 .ID_EX_rt   (ID_EX_rt),
	 .ID_EX_rs   (ID_EX_rs),
	 .ForwardA   (ForwardA),
	 .ForwardB   (ForwardB),
	 .ForwardC   (ForwardC),
	 .ForwardD   (ForwardD),
	 .EX_MEM_writereg (EX_MEM_writereg), 
	 .MEM_WB_writereg (MEM_WB_writereg));
	 
	hazard_detection hz (
	.reset      (reset),
	.stall      (stall),
	.ID_EX_memtoreg  (ID_EX_memtoreg),
	.IF_ID_rs   (IF_ID_rs), 
	.IF_ID_rt   (IF_ID_rt), 
	.ID_EX_rt   (ID_EX_rt));
	
	forwarding_unit fwd (
	.EX_MEM_regwrite  (EX_MEM_regwrite),
	.MEM_WB_regwrite  (regwrite),
	.IF_ID_rs         (IF_ID_rs),
	.IF_ID_rt         (IF_ID_rt),
	.ID_EX_rs         (ID_EX_rs),
	.ID_EX_rt         (ID_EX_rt),
	.EX_MEM_writereg  (EX_MEM_writereg),
	.MEM_WB_writereg  (MEM_WB_writereg),
	.ForwardA         (ForwardA),
	.ForwardB         (ForwardB),
	.ForwardC         (ForwardC),
	.ForwardD         (ForwardD));

endmodule

module forwarding_unit (
						input            EX_MEM_regwrite, MEM_WB_regwrite,
                  input      [4:0] IF_ID_rs, IF_ID_rt, ID_EX_rs, ID_EX_rt, EX_MEM_writereg, MEM_WB_writereg,
                  output reg [1:0] ForwardC, ForwardD,
						output reg ForwardA, ForwardB);
						
  always @(*) 
  begin
    if (MEM_WB_regwrite & MEM_WB_writereg == IF_ID_rs) 
		ForwardA = 1'b1;
    else 
		ForwardA = 1'b0;
		
    if (MEM_WB_regwrite & MEM_WB_writereg == IF_ID_rt) 
		ForwardB = 1'b1;
    else 
		ForwardB = 1'b0;
		
    if (EX_MEM_regwrite & EX_MEM_writereg == ID_EX_rs) 
		ForwardC[1:0] = 2'b01;
    else if (MEM_WB_regwrite & MEM_WB_writereg == ID_EX_rs) 
		ForwardC[1:0] = 2'b10;
    else 
		ForwardC[1:0] = 2'b00;
		
    if (EX_MEM_regwrite & EX_MEM_writereg == ID_EX_rt) 
		ForwardD[1:0] = 2'b01;
    else if (MEM_WB_regwrite & MEM_WB_writereg == ID_EX_rt) 
		ForwardD[1:0] = 2'b10;
    else 
		ForwardD[1:0] = 2'b00;
  end

endmodule


module hazard_detection (
								input reset,
								input ID_EX_memtoreg,  //if LW -> memtoreg = 1
								input [4:0] ID_EX_rt,  IF_ID_rs, IF_ID_rt,
								output reg stall 
								);
  always @(*)
  begin
  if (reset == 1)
   stall = 1'b0;
  else if((ID_EX_memtoreg==1) & (IF_ID_rs== ID_EX_rt))
	stall = 1'b1;
  else if ((ID_EX_memtoreg==1) & (IF_ID_rt == ID_EX_rt))
	stall = 1'b1;
  else
	stall = 1'b0;
  end
endmodule

module controller(input clk, reset, stall,     //add clk, reset

						input  [5:0] op, funct,
                  input        zero,
                  output       signext,
                  output       shiftl16,
                  output       MEM_WB_memtoreg, EX_MEM_memwrite,
                  output       pcsrc, ID_EX_alusrc,
                  output       ID_EX_regdst, MEM_WB_regwrite,
                  output       jump,
                  output [2:0] alucontrol,
						// add
						output ID_EX_memtoreg,
						output EX_MEM_regwrite
						
						);

  wire [1:0] aluop;
  wire       branch;
  
  wire [1:0] hz_aluop;
  wire hz_memtoreg, hz_memwrite, hz_branch, hz_alusrc, hz_regdst, hz_regwrite;
  wire ID_EX_memwrite, ID_EX_branch, ID_EX_regwrite;  //ID_EX_memtoreg no wire???
  wire [5:0] ID_EX_funct;
  wire [1:0] ID_EX_aluop;
  wire EX_MEM_memtoreg, EX_MEM_branch; //EX_MEM_regwrite
  //wire EX_MEM_zero;
  
  
  mux2 #(8) hazard (
    .d0 ({memtoreg, memwrite, branch, alusrc, regdst, regwrite, aluop}),
    .d1 (8'b0),
    .s  (stall),
    .y  ({hz_memtoreg, hz_memwrite, hz_branch, hz_alusrc, hz_regdst, hz_regwrite, hz_aluop}));
	 
  flopr #(14) ID_EX (
    .clk (clk),
    .reset (reset),
    .d  ({hz_memtoreg, hz_memwrite, hz_branch, hz_alusrc, hz_regdst, hz_regwrite, hz_aluop, funct}),
    .q  ({ID_EX_memtoreg, ID_EX_memwrite, ID_EX_branch, ID_EX_alusrc, ID_EX_regdst, ID_EX_regwrite, ID_EX_aluop, ID_EX_funct}));
	 
  flopr #(4) EX_MEM (
    .clk (clk),
	 .reset (reset),
	 .d  ({ID_EX_memtoreg, ID_EX_memwrite, ID_EX_branch, ID_EX_regwrite}),
	 .q  ({EX_MEM_memtoreg, EX_MEM_memwrite, EX_MEM_branch, EX_MEM_regwrite}));
	 
  flopr #(2) MEM_WB (
    .clk (clk),
	 .reset (reset),
	 .d  ({EX_MEM_regwrite, EX_MEM_memtoreg}),
	 .q  ({MEM_WB_regwrite, MEM_WB_memtoreg}));
	 
  

	 
	 
	 
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
    .funct      (ID_EX_funct),
    .aluop      (ID_EX_aluop), 
    .alucontrol (alucontrol));

  assign pcsrc = op[0] ? (EX_MEM_branch & ~zero) : (EX_MEM_branch & zero); //bne!!!!!! beq -> op[0]=0, bne -> op[0]=1
  
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
                output        EX_MEM_zero,
                output [31:0] pc,
                input  [31:0] instr,
                output [31:0] EX_MEM_aluout, EX_MEM_writedata,
                input  [31:0] readdata,
					 //add
					 output [4:0] IF_ID_rs, IF_ID_rt, ID_EX_rs, ID_EX_rt,
					 input stall,
					 input ForwardA, ForwardB,
					 input [1:0] ForwardC, ForwardD,
					 output [4:0] EX_MEM_writereg, MEM_WB_writereg,
					 output [31:0] IF_ID_instr);

  wire [4:0]  writereg, wa_mux_result;
  wire [31:0] pcnext, pcnextbr, pcplus4, pcbranch;
  wire [31:0] signimm, signimmsh, shiftedimm;
  wire [31:0] srca, srcb;
  wire [31:0] result, jr_pc_result, wd_mux_result;
  wire        shift;
  wire [4:0] ra1_mux_result;
  wire [31:0] MEM_WB_readdata ,MEM_WB_aluout; //MEM_WB_writereg;
  wire [31:0] aluout; //EX_MEM_writedata; //EX_MEM_writereg, EX_MEM_aluout;
  wire [31:0] ID_EX_pcplus4_out;
  wire [31:0] ID_EX_srca, ID_EX_writedata, ID_EX_shiftedimm;
  wire [31:0] IF_ID_pcplus4_out;
  //wire [31:0] IF_ID_instr;
  wire [31:0] fwd_srca, fwd_writedata;
  wire [31:0] fwd_srca2, fwd_writedata2;
  wire [4:0]  IF_ID_rd, ID_EX_rd;
  wire [31:0] writedata;
  
  assign IF_ID_rs = IF_ID_instr[25:21];
  assign IF_ID_rt = IF_ID_instr[20:16];
  assign IF_ID_rd = IF_ID_instr[15:11];
  
  // next PC logic
  flopenr #(32) pcreg(
    .clk   (clk),
    .reset (reset),
	 .en    (~stall),
    .d     (pcnext),
    .q     (pc));

  adder pcadd1(
    .a (pc),
    .b (32'b100),
    .y (pcplus4));

  sl2 immsh(
    .a (signimm),
    .y (signimmsh));
				 
  adder pcadd2(
    .a (ID_EX_pcplus4_out),
    .b (signimmsh),
    .y (pcbranch));

  mux2 #(32) pcbrmux(
    .d0  (pcplus4),
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
    .ra1     (IF_ID_instr[25:21]),
    .ra2     (ra1_mux_result),
    .wa      (wa_mux_result),
    .wd      (wd_mux_result),
    .rd1     (srca),
    .rd2     (writedata));

  mux2 #(5) wrmux(
    .d0  (ID_EX_rt),
    .d1  (ID_EX_rd),
    .s   (regdst),
    .y   (writereg));

  mux2 #(32) resmux(
    .d0 (MEM_WB_aluout),
    .d1 (MEM_WB_readdata),
    .s  (memtoreg),
    .y  (result));

  sign_zero_ext sze(
    .a       (IF_ID_instr[15:0]),
    .signext (signext),
    .y       (signimm[31:0]));

  shift_left_16 sl16(
    .a         (signimm[31:0]),
    .shiftl16  (shiftl16),
    .y         (shiftedimm[31:0]));

  // ALU logic
  mux2 #(32) srcbmux(
    .d0 (fwd_writedata2),
    .d1 (ID_EX_shiftedimm[31:0]),
    .s  (alusrc),
    .y  (srcb));

  alu alu(
    .a       (fwd_srca2),
    .b       (srcb),
    .alucont (alucontrol),
    .result  (aluout),
    .zero    (zero));
    
	 //@@@@@@@@@@@@add new mux
	 mux2 #(32) wd_mux(
    .d0 (result),
    .d1 (IF_ID_pcplus4_out),
    .s  (jump),
    .y  (wd_mux_result)); //before wd
	 
	 mux2 #(5) wa_mux(
    .d0 (MEM_WB_writereg),
    .d1 (5'b11111),
    .s  (jump),
    .y  (wa_mux_result));  //before wd
	 
	 mux2 #(5) ra1_mux(
    .d0 (IF_ID_instr[20:16]),
    .d1 (5'b11111),
    .s  (~IF_ID_instr[31] & ~IF_ID_instr[30] & ~IF_ID_instr[29] & ~IF_ID_instr[28] & ~IF_ID_instr[27] & ~IF_ID_instr[26] & ~IF_ID_instr[0] & ~IF_ID_instr[1] & ~IF_ID_instr[2] & IF_ID_instr[3] & ~IF_ID_instr[4] & ~IF_ID_instr[5]),  
    .y  (ra1_mux_result));  //after ra2
	 
	 mux2 #(32) jr_pc_mux(
    .d0 ({IF_ID_pcplus4_out[31:28], IF_ID_instr[25:0], 2'b00}),
    .d1 (writedata),
    .s  (~IF_ID_instr[31] & ~IF_ID_instr[30] & ~IF_ID_instr[29] & ~IF_ID_instr[28] & ~IF_ID_instr[27] & ~IF_ID_instr[26] & ~IF_ID_instr[0] & ~IF_ID_instr[1] & ~IF_ID_instr[2] & IF_ID_instr[3] & ~IF_ID_instr[4] & ~IF_ID_instr[5]),
    .y  (jr_pc_result));  //after rd2
	 
	 flopenr #(32) IF_ID(
    .clk   (clk),
    .reset (reset),
    .en    (~stall),
    .d     ({instr}),
    .q     ({IF_ID_instr}));
	 
	 flopenr #(32) IF_ID_pcplus4 (  //for j, branch
	 .clk   (clk), 
	 .reset (reset),
	 .en    (~stall),
	 .d     (pcplus4),
	 .q     (IF_ID_pcplus4_out));
	 
	 flopr #(111) ID_EX(   //32*3 + 5*3 = 111
    .clk   (clk),
    .reset (reset),
    .d     ({fwd_srca, fwd_writedata, shiftedimm, IF_ID_rs, IF_ID_rt, IF_ID_rd}),
    .q     ({ID_EX_srca, ID_EX_writedata, ID_EX_shiftedimm, ID_EX_rs, ID_EX_rt, ID_EX_rd}));
	 
	 flopr #(32) ID_EX_pcplus4 (
	 .clk   (clk), 
	 .reset (reset),
	 .d     (IF_ID_pcplus4_out),
	 .q     (ID_EX_pcplus4_out));
	 
	 flopr #(70) EX_MEM(    
    .clk   (clk),
    .reset (reset),
    .d     ({aluout, fwd_writedata2, writereg, zero}),  //zero!!!!!!!!!!!
    .q     ({EX_MEM_aluout, EX_MEM_writedata, EX_MEM_writereg, EX_MEM_zero}));
	 
	 flopr #(69) MEM_WB(
    .clk   (clk),
    .reset (reset),
    .d     ({readdata, EX_MEM_aluout, EX_MEM_writereg}),
    .q     ({MEM_WB_readdata, MEM_WB_aluout, MEM_WB_writereg}));
	 
	 mux2 #(32) fwd_before_srca(
    .d0 (srca),
    .d1 (result),
    .s  (ForwardA),
    .y  (fwd_srca));
	 
	 mux2 #(32) fwd_before_writedata(
    .d0 (writedata),
    .d1 (result),
    .s  (ForwardB),
    .y  (fwd_writedata));
	 
	 mux4to1 #(32) fwd_after_srca(
    .d0 (ID_EX_srca),
    .d1 (EX_MEM_aluout),
    .d2 (result),
    .d3 (32'b0),
    .s0 (ForwardC[0]),
	 .s1 (ForwardC[1]),
    .y  (fwd_srca2));
	 
	 mux4to1 #(32) fwd_after_writedata(
    .d0 (ID_EX_writedata),
    .d1 (EX_MEM_aluout),
    .d2 (result),
    .d3 (32'b0),
    .s0 (ForwardD[0]),
	 .s1 (ForwardD[1]),
    .y  (fwd_writedata2));
endmodule