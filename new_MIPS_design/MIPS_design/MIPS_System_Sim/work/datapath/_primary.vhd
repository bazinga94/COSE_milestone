library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        signext         : in     vl_logic;
        shiftl16        : in     vl_logic;
        memtoreg        : in     vl_logic;
        pcsrc           : in     vl_logic;
        alusrc          : in     vl_logic;
        regdst          : in     vl_logic;
        regwrite        : in     vl_logic;
        jump            : in     vl_logic;
        alucontrol      : in     vl_logic_vector(2 downto 0);
        EX_MEM_zero     : out    vl_logic;
        pc              : out    vl_logic_vector(31 downto 0);
        instr           : in     vl_logic_vector(31 downto 0);
        EX_MEM_aluout   : out    vl_logic_vector(31 downto 0);
        EX_MEM_writedata: out    vl_logic_vector(31 downto 0);
        readdata        : in     vl_logic_vector(31 downto 0);
        IF_ID_rs        : out    vl_logic_vector(4 downto 0);
        IF_ID_rt        : out    vl_logic_vector(4 downto 0);
        ID_EX_rs        : out    vl_logic_vector(4 downto 0);
        ID_EX_rt        : out    vl_logic_vector(4 downto 0);
        stall           : in     vl_logic;
        flush           : in     vl_logic;
        ForwardA        : in     vl_logic;
        ForwardB        : in     vl_logic;
        ForwardC        : in     vl_logic_vector(1 downto 0);
        ForwardD        : in     vl_logic_vector(1 downto 0);
        EX_MEM_writereg : out    vl_logic_vector(4 downto 0);
        MEM_WB_writereg : out    vl_logic_vector(4 downto 0);
        IF_ID_instr     : out    vl_logic_vector(31 downto 0)
    );
end datapath;
