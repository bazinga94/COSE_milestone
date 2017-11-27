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

  wire        signext, hz_shiftl16, hz_memtoreg, branch;
  wire        pcsrc, zero;
  wire        hz_alusrc, hz_regdst, hz_regwrite, jump;
  wire [2:0]  alucontrol;
  wire [31:0] IF_ID_inst_out;  //add f.f wire
  wire		  hz_memwrite;
  wire		  EX_MEM_C_regwrite_out, MEM_WB_C_regwrite_out;
  wire [4:0]  EX_MEM_wrmux_out, ID_EX_inst_1_out, ID_EX_inst_3_out;
  wire [4:0]  MEM_WB_wrmux_out;
  wire 		  ID_EX_C_memtoreg_out;
  wire		  stall;
  wire [1:0]  ForwardA, ForwardB, ForwardC;	
  wire [1:0]  aluop, hz_aluop;  
  wire [5:0]  ID_EX_signimm_out;
  
  // Instantiate Controller
  controller c(
  // ###### jongho lee: Start #######
      .clk        (clk),
      .reset      (reset),
      .op         (IF_ID_inst_out[31:26]), 
		.funct      (IF_ID_inst_out[5:0]),//errror!!
  // ###### jongho lee: End #######
		.zero       (zero),
		.signext    (signext),
		.hz_shiftl16   (hz_shiftl16),
		.hz_memtoreg   (hz_memtoreg),
		.hz_memwrite   (hz_memwrite),
		.pcsrc      (pcsrc),
		.hz_alusrc     (hz_alusrc),
		.hz_regdst     (hz_regdst),
		.hz_regwrite   (hz_regwrite),
		.hz_aluop      (hz_aluop),
		.aluop_in         (aluop),
		.jump       (jump),
		.alucontrol (alucontrol),
		.ID_EX_signimm_out   (ID_EX_signimm_out));

  // Instantiate Datapath
  datapath dp(
    .clk        (clk),
    .reset      (reset),
    .signext    (signext),
    .hz_shiftl16   (hz_shiftl16),
    .hz_memtoreg   (hz_memtoreg),
    .pcsrc      (pcsrc),
    .hz_alusrc     (hz_alusrc),
    .hz_regdst     (hz_regdst),
    .hz_regwrite   (hz_regwrite),
	 .hz_memwrite   (hz_memwrite),
	 .hz_aluop      (hz_aluop),
	 .aluop         (aluop),
    .jump       (jump),
    .alucontrol (alucontrol),
    .EX_MEM_alu_zero_out       (zero),
    .pc         (pc),
	 .instr		 (instr),
    .IF_ID_inst_out      (IF_ID_inst_out),  //add f.f wire  //why error?????
    .EX_MEM_alu_out     (memaddr), 
    .EX_MEM_rd2_out  (memwritedata),  //writedata change
    .readdata   (memreaddata),
	 .EX_MEM_C_memwrite_out   (memwrite),
	 .ID_EX_C_memtoreg_out     (ID_EX_C_memtoreg_out),	      //for hazard_detection
	 .ID_EX_inst_1_out 			(ID_EX_inst_1_out),				//for hazard_detection
	 .stall				(stall),
	 .EX_MEM_C_regwrite_out		(EX_MEM_C_regwrite_out), 		//for forwading
	 .MEM_WB_C_regwrite_out		(MEM_WB_C_regwrite_out),		//...
    //.ID_EX_inst_1_out			(ID_EX_inst_1_out), 
	 .MEM_WB_wrmux_out			(MEM_WB_wrmux_out), 
	 .ID_EX_inst_3_out			(ID_EX_inst_3_out), 				//...
	 .EX_MEM_wrmux_out			(EX_MEM_wrmux_out),				//for forwading
	 .ForwardA	(ForwardA),
    .ForwardB	(ForwardB),
    .ForwardC	(ForwardC),
	 .ID_EX_signimm_out   (ID_EX_signimm_out),
	 );
	       
	 hazard_detection hd(
    .ID_EX_C_memtoreg_out	(ID_EX_C_memtoreg_out), 
	 .ID_EX_inst_1_out	   (ID_EX_inst_1_out), 
	 .IF_ID_inst_rs	(IF_ID_inst_out[25:21]), 
	 .IF_ID_inst_rt	(IF_ID_inst_out[20:16]),
    .stall				   (stall));    
	 
	 forwarding fw(
    .EX_MEM_C_regwrite_out	(EX_MEM_C_regwrite_out), 
    .MEM_WB_C_regwrite_out	(MEM_WB_C_regwrite_out),
	 .ID_EX_inst_1_out	(ID_EX_inst_1_out),		//[20:16]
	 .EX_MEM_wrmux_out	(EX_MEM_wrmux_out), 			//wrmux output
	 .ID_EX_inst_3_out	(ID_EX_inst_3_out),      //[25:21]
	 .MEM_WB_wrmux_out	(MEM_WB_wrmux_out),
	 .ForwardA			(ForwardA),
	 .ForwardB			(ForwardB),
	 .ForwardC			(ForwardC),
	 .instr_IFID_out_ra1		(IF_ID_inst_out[25:21]),
	 .instr_IFID_out_ra2		(IF_ID_inst_out[20:16])    //no modify name
    );
endmodule

module forwarding (
						input EX_MEM_C_regwrite_out, MEM_WB_C_regwrite_out,
						input [4:0] ID_EX_inst_1_out, MEM_WB_wrmux_out, ID_EX_inst_3_out, EX_MEM_wrmux_out,
						input [4:0] instr_IFID_out_ra1, instr_IFID_out_ra2,
						output reg [1:0] ForwardA, ForwardB, ForwardC
                        );
  // ForwardA
  always @(*)
  if(EX_MEM_C_regwrite_out & (EX_MEM_wrmux_out == ID_EX_inst_3_out))
	ForwardA = 2'b10;
 
  else if(MEM_WB_C_regwrite_out & (MEM_WB_wrmux_out == ID_EX_inst_3_out))
	ForwardA = 2'b01;
	
  else if(MEM_WB_C_regwrite_out & ~(EX_MEM_C_regwrite_out & (EX_MEM_wrmux_out != ID_EX_inst_3_out)) & (MEM_WB_wrmux_out == ID_EX_inst_3_out))
	ForwardA = 2'b01;
  
  else
  	ForwardA = 2'b00;
  
  // ForwardB
  always @(*)
 if(EX_MEM_C_regwrite_out & (EX_MEM_wrmux_out == ID_EX_inst_1_out))
	ForwardB = 2'b10;
 
  else if(MEM_WB_C_regwrite_out & (MEM_WB_wrmux_out == ID_EX_inst_1_out))
	ForwardB = 2'b01;
	
 
  else if(MEM_WB_C_regwrite_out & ~(EX_MEM_C_regwrite_out & (EX_MEM_wrmux_out != ID_EX_inst_1_out)) & (MEM_WB_wrmux_out == ID_EX_inst_1_out))
	ForwardB = 2'b01;
  else
  	ForwardB = 2'b00;	
  	
  // ForwardC
  always @(*)
  if(MEM_WB_C_regwrite_out & (MEM_WB_wrmux_out == instr_IFID_out_ra1))
	ForwardC = 2'b10;
  else if(MEM_WB_C_regwrite_out & (MEM_WB_wrmux_out == instr_IFID_out_ra2))
	ForwardC = 2'b01;
  else
	ForwardC = 2'b00;
  	
endmodule

module hazard_detection (
								input ID_EX_C_memtoreg_out,
								input [4:0] ID_EX_inst_1_out,  IF_ID_inst_rs, IF_ID_inst_rt,
								output reg stall 
								);
  always @(*)
  begin
  if((ID_EX_C_memtoreg_out==1) & (IF_ID_inst_rs== ID_EX_inst_1_out))
	stall = 1'b1;
  else if ((ID_EX_C_memtoreg_out==1) & (IF_ID_inst_rt == ID_EX_inst_1_out))
	stall = 1'b1;
  else
	stall = 1'b0;
  end
 endmodule


module controller(input        clk, reset,  //add clk, reset
						input  [5:0] op, funct,
                  input        zero,
						input	 [1:0] aluop_in,
                  output       signext,
                  output       hz_shiftl16,
                  output       hz_memtoreg, hz_memwrite,
                  output       pcsrc, hz_alusrc,
                  output       hz_regdst, hz_regwrite,
                  output       jump,
                  output [2:0] alucontrol,
						output [1:0] hz_aluop,
						input [5:0] ID_EX_signimm_out);

  //wire [1:0] aluop;
  wire       branch;
  wire[5:0] ID_EX_inst_3_out;
  wire [1:0] ID_EX_C_aluop_out;	
  maindec md(
    .op       (op),
	 .funct	  (funct),   //add funct
    .signext  (signext),
    .shiftl16 (hz_shiftl16),
    .memtoreg (hz_memtoreg),
    .memwrite (hz_memwrite),
    .branch   (branch),
    .alusrc   (hz_alusrc),
    .regdst   (hz_regdst),
    .regwrite (hz_regwrite),
    .jump     (jump),
    .aluop    (hz_aluop));

  aludec ad( 
    .funct      (ID_EX_signimm_out[5:0]),   // bit should pass ID_EX
    .aluop      (ID_EX_C_aluop_out),  //change input aluop
    .alucontrol (alucontrol));
	 
  flopr #(2) ID_EX_C_aluop (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (aluop_in[1:0]), 
	 .q     (ID_EX_C_aluop_out));  //control aluop f.f add?????
	 
  //flopr #(6) ID_EX_inst_3 (
    //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (ID_EX_signimm_out[5:0]), 
	 //.q     (ID_EX_inst_3_out[5:0])); 		//no need
	 
  wire ID_EX_C_branch_out;	 
  flopr #(1) ID_EX_C_branch (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (branch), 
	 .q     (ID_EX_C_branch_out));
  wire EX_MEM_C_branch_out;
  flopr #(1) EX_MEM_C_branch (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (ID_EX_C_branch_out), 
	 .q     (EX_MEM_C_branch_out));

  assign pcsrc = op[0] ? (EX_MEM_C_branch_out & ~zero) : (EX_MEM_C_branch_out & zero); //bne!!!!!! beq -> op[0]=0, bne -> op[0]=1
  
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
					 input			stall,
                input         signext,
                input         hz_shiftl16,
                input         hz_memtoreg, pcsrc,
                input         hz_alusrc, hz_regdst,
                input         hz_regwrite, jump,
					 input			hz_memwrite, 				//add input memwrite
					 input  [1:0]  hz_aluop,
					 output [1:0]  aluop,
					 output			EX_MEM_C_memwrite_out,
                input  [2:0]  alucontrol,
                output        EX_MEM_alu_zero_out,  //add EX_MEM f.f
                output [31:0] pc,
                input  [31:0] instr,
					 output [31:0] IF_ID_inst_out,    //add f.f wire
                output [31:0] EX_MEM_alu_out, EX_MEM_rd2_out,  //add f.f(wirtedata) wire
                input  [31:0] readdata,
					 output ID_EX_C_memtoreg_out,	      //for hazard_detection
	             output [4:0]  ID_EX_inst_1_out,				//for hazard_detection + forwarding
					 output EX_MEM_C_regwrite_out, MEM_WB_C_regwrite_out,		//for forwading
				    output [4:0] MEM_WB_wrmux_out, ID_EX_inst_3_out, EX_MEM_wrmux_out,	//for forwarding
					 input  [1:0]  ForwardA, ForwardB, ForwardC,  //reg problem???
					 output [5:0] ID_EX_signimm_out  //to aludec
					 );

  wire [4:0]  writereg, wa_mux_result;
  wire [31:0] pcnext, pcnextbr, pcplus4, pcbranch;
  wire [31:0] signimm, signimmsh, shiftedimm;
  wire [31:0] srca, srcb, writedata;  //WB_ID_fwd_2 mistake!!!!
  wire [31:0] result, jr_pc_result, wd_mux_result;
  wire [4:0] ra1_mux_result; //5 wires !!!
  //wire        shift; there is no shift......
  wire zero;
  wire memtoreg, regwrite, memwrite, alusrc, regdst, shiftl16;
  //wire [2:0] alucontrol; 
  wire [31:0] IF_ID_pcplus4_out;    //add f.f wire
  wire [31:0] ID_EX_rd2_out, aluout;
  wire [31:0] ID_EX_pcplus4_out;
  //wire [31:0] ID_EX_signimm_out;  //add  ??? because output??
  wire [4:0] ID_EX_inst_2_out;  //add
  wire ID_EX_C_shiftl16_out;
  wire ID_EX_C_regwrite_out;
  wire ID_EX_C_regdst_out;
  wire ID_EX_C_alusrc_out;
  wire ID_EX_C_jump_out;
  wire ID_EX_C_memwrite_out;
  wire [31:0] ID_EX_rd1_out;
  wire [31:0] EX_MEM_pcadd2_out;
  wire EX_MEM_C_memtoreg_out;
  wire [31:0] MEM_WB_readdata_out;
  wire [31:0] MEM_WB_alu_out;
  wire MEM_WB_C_memtoreg_out;
  wire [31:0] EX_MEM_fwd_1_out;
  wire [31:0] MEM_WB_fwd_1_out;
  wire [31:0] EX_MEM_fwd_2_out;
  wire [31:0] MEM_WB_fwd_2_out;
  wire [31:0] WB_ID_fwd_1_out;
  wire [31:0] WB_ID_fwd_2_out;
  
  // next PC logic
  flopenr #(32) pcreg(   //for stall pc
    .clk   (clk),
    .reset (reset),
	 .en	  (~stall),
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
    .d1  (EX_MEM_pcadd2_out),
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
    .we      (MEM_WB_C_regwrite_out),
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
    .d0 (MEM_WB_alu_out),
    .d1 (MEM_WB_readdata_out),
    .s  (MEM_WB_C_memtoreg_out),
    .y  (result));

  sign_zero_ext sze(
    .a       (IF_ID_inst_out[15:0]),
    .signext (signext),
    .y       (signimm[31:0]));

  shift_left_16 sl16(
    .a         (ID_EX_signimm_out),
    .shiftl16  (ID_EX_C_shiftl16_out),
    .y         (shiftedimm[31:0]));

  // ALU logic
  mux2 #(32) srcbmux(
    .d0 (MEM_WB_fwd_2_out),      //forwarding
    .d1 (shiftedimm[31:0]),
    .s  (ID_EX_C_alusrc_out),    //after ID_EX f.f
    .y  (srcb));

  alu alu(
    .a       (MEM_WB_fwd_1_out),  //forwarding
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
    .d0 (MEM_WB_wrmux_out),
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
	 
	 //wire [31:0] ID_EX_pcplus4_out;  //add
    flopr #(32) ID_EX_pcplus4 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_pcplus4_out), 
	 .q     (ID_EX_pcplus4_out));	
	 
	 flopr #(32) ID_EX_signimm (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (signimm[31:0]), 
	 .q     (ID_EX_signimm_out));    //aludec!!!!!!
	 
	 flopr #(5) ID_EX_inst_1 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_inst_out[20:16]), 
	 .q     (ID_EX_inst_1_out));
	 
	 flopr #(5) ID_EX_inst_2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_inst_out[15:11]), 
	 .q     (ID_EX_inst_2_out));
	 
	 flopr #(5) ID_EX_inst_3 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (IF_ID_inst_out[25:21]), 
	 .q     (ID_EX_inst_3_out));
	 
	 //wire [31:0] ID_EX_shiftedimm_out; 
	 //flopr #(32) ID_EX_shiftedimm (
	 //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (shiftedimm[31:0]), 
	 //.q     (ID_EX_shiftedimm_out));
	 
	 //flopr #(1) ID_EX_C_signext (   //control start
	 //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (signext), 
	 //.q     (ID_EX_C_signext_out));  //no need
	 
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
	 
	 //wire ID_EX_C_memtoreg_out; //output
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
	 
	 flopr #(1) ID_EX_C_memwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (memwrite), 
	 .q     (ID_EX_C_memwrite_out));
	 
	 //flopr #(2) ID_EX_C_aluop (
	 //.clk   (clk), 
	 //.reset (reset), 
	 //.d     (aluop[1:0]), 
	 //.q     (ID_EX_C_aluop_out));  //control end
	 
	 flopr #(32) ID_EX_rd1 (    //read data start
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (WB_ID_fwd_1_out),   //forwarding
	 .q     (ID_EX_rd1_out));
	 
	 flopr #(32) ID_EX_rd2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (WB_ID_fwd_2_out), 
	 .q     (ID_EX_rd2_out));    //read data end
	 
	 flopr #(32) EX_MEM_pcadd2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (pcbranch), 
	 .q     (EX_MEM_pcadd2_out));
	 
	 flopr #(32) EX_MEM_alu (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (aluout), 
	 .q     (EX_MEM_alu_out));
	 
	 flopr #(1) EX_MEM_alu_zero (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (zero), 
	 .q     (EX_MEM_alu_zero_out));
	 
	 flopr #(32) EX_MEM_rd2 (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (ID_EX_rd2_out), 
	 .q     (EX_MEM_rd2_out));
	 
	 flopr #(5) EX_MEM_wrmux (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (writereg), 
	 .q     (EX_MEM_wrmux_out));
	 
	 flopr #(1) EX_MEM_C_regwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (ID_EX_C_regwrite_out), 
	 .q     (EX_MEM_C_regwrite_out));
	 
	 flopr #(1) EX_MEM_C_memtoreg (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (ID_EX_C_memtoreg_out), 
	 .q     (EX_MEM_C_memtoreg_out));
	 
	 flopr #(1) EX_MEM_C_memwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (ID_EX_C_memwrite_out), 
	 .q     (EX_MEM_C_memwrite_out));
	 
	 flopr #(32) MEM_WB_readdata (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (readdata), 
	 .q     (MEM_WB_readdata_out));
	 
	 flopr #(32) MEM_WB_alu (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (EX_MEM_alu_out), 
	 .q     (MEM_WB_alu_out));
	 
	 flopr #(5) MEM_WB_wrmux (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (EX_MEM_wrmux_out), 
	 .q     (MEM_WB_wrmux_out));
	 
	 flopr #(1) MEM_WB_C_regwrite (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (EX_MEM_C_regwrite_out), 
	 .q     (MEM_WB_C_regwrite_out));
	 
	 flopr #(1) MEM_WB_C_memtoreg (
	 .clk   (clk), 
	 .reset (reset), 
	 .d     (EX_MEM_C_memtoreg_out), 
	 .q     (MEM_WB_C_memtoreg_out));
	 
	 mux2  #(8)  hzmux( 
	 .d0    ({hz_memtoreg, hz_regwrite, hz_memwrite, hz_alusrc, hz_regdst, hz_shiftl16, hz_aluop[1:0]}),
    .d1    (8'b0),
    .s     (stall),
    .y     ({memtoreg, regwrite, memwrite, alusrc, regdst, shiftl16, aluop[1:0]}));   //aluop????? jump X.... why...
	 
	 // Before ALU MUX
    mux2 #(32)  EX_MEM_fwd_1(
	 .d0 (ID_EX_rd1_out), 		
    .d1 (EX_MEM_alu_out), 
	 .s  (ForwardA[1]), 
	 .y  (EX_MEM_fwd_1_out));
  
    mux2 #(32) MEM_WB_fwd_1(
	 .d0 (EX_MEM_fwd_1_out), 
	 .d1 (result), 
	 .s  (ForwardA[0]), 
	 .y  (MEM_WB_fwd_1_out));							
								
    mux2 #(32)  EX_MEM_fwd_2(
	 .d0 (ID_EX_rd2_out), 
	 .d1 (EX_MEM_alu_out), 
	 .s  (ForwardB[1]), 
	 .y  (EX_MEM_fwd_2_out));	
							
    mux2 #(32)  MEM_WB_fwd_2(
	 .d0 (EX_MEM_fwd_2_out), 
	 .d1 (result), 
	 .s  (ForwardB[0]), 
	 .y  (MEM_WB_fwd_2_out));
	
	 mux2 #(32)  WB_ID_fwd_1(
	 .d0 (srca), 
	 .d1 (result), 
	 .s  (ForwardC[1]), 
	 .y  (WB_ID_fwd_1_out));
    
    mux2 #(32)  WB_ID_fwd_2(
	 .d0 (writedata), 
	 .d1 (result), 
	 .s  (ForwardC[0]), 
	 .y  (WB_ID_fwd_2_out));
	 // ###### Jongho Lee: End #######
endmodule
