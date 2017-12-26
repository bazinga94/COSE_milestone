library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        stall           : in     vl_logic;
        flush           : in     vl_logic;
        op              : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        signext         : out    vl_logic;
        shiftl16        : out    vl_logic;
        MEM_WB_memtoreg : out    vl_logic;
        EX_MEM_memwrite : out    vl_logic;
        pcsrc           : out    vl_logic;
        ID_EX_alusrc    : out    vl_logic;
        ID_EX_regdst    : out    vl_logic;
        MEM_WB_regwrite : out    vl_logic;
        ID_EX_jump      : out    vl_logic;
        alucontrol      : out    vl_logic_vector(2 downto 0);
        ID_EX_memtoreg  : out    vl_logic;
        EX_MEM_regwrite : out    vl_logic
    );
end controller;
