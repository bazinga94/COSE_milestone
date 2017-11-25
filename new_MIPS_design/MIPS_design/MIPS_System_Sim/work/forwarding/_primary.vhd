library verilog;
use verilog.vl_types.all;
entity forwarding is
    port(
        EX_MEM_C_regwrite_out: in     vl_logic;
        MEM_WB_C_regwrite_out: in     vl_logic;
        ID_EX_inst_1_out: in     vl_logic_vector(4 downto 0);
        MEM_WB_wrmux_out: in     vl_logic_vector(4 downto 0);
        ID_EX_inst_3_out: in     vl_logic_vector(4 downto 0);
        EX_MEM_wrmux_out: in     vl_logic_vector(4 downto 0);
        instr_IFID_out_ra1: in     vl_logic_vector(4 downto 0);
        instr_IFID_out_ra2: in     vl_logic_vector(4 downto 0);
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0);
        ForwardC        : out    vl_logic_vector(1 downto 0)
    );
end forwarding;
