library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        stall           : in     vl_logic;
        signext         : in     vl_logic;
        hz_shiftl16     : in     vl_logic;
        hz_memtoreg     : in     vl_logic;
        pcsrc           : in     vl_logic;
        hz_alusrc       : in     vl_logic;
        hz_regdst       : in     vl_logic;
        hz_regwrite     : in     vl_logic;
        jump            : in     vl_logic;
        hz_memwrite     : in     vl_logic;
        EX_MEM_C_memwrite_out: out    vl_logic;
        alucontrol      : in     vl_logic_vector(2 downto 0);
        EX_MEM_alu_zero_out: out    vl_logic;
        pc              : out    vl_logic_vector(31 downto 0);
        instr           : in     vl_logic_vector(31 downto 0);
        IF_ID_inst_out  : out    vl_logic_vector(31 downto 0);
        EX_MEM_alu_out  : out    vl_logic_vector(31 downto 0);
        EX_MEM_rd2_out  : out    vl_logic_vector(31 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0);
        ID_EX_C_memtoreg_out: out    vl_logic;
        ID_EX_inst_1_out: out    vl_logic_vector(4 downto 0);
        EX_MEM_C_regwrite_out: out    vl_logic;
        MEM_WB_C_regwrite_out: out    vl_logic;
        MEM_WB_wrmux_out: out    vl_logic_vector(4 downto 0);
        ID_EX_inst_3_out: out    vl_logic_vector(4 downto 0);
        EX_MEM_wrmux_out: out    vl_logic_vector(4 downto 0);
        ForwardA        : in     vl_logic_vector(1 downto 0);
        ForwardB        : in     vl_logic_vector(1 downto 0);
        ForwardC        : in     vl_logic_vector(1 downto 0)
    );
end datapath;
