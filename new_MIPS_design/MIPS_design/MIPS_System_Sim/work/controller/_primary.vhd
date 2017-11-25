library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        op              : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        signext         : out    vl_logic;
        hz_shiftl16     : out    vl_logic;
        hz_memtoreg     : out    vl_logic;
        hz_memwrite     : out    vl_logic;
        pcsrc           : out    vl_logic;
        hz_alusrc       : out    vl_logic;
        hz_regdst       : out    vl_logic;
        hz_regwrite     : out    vl_logic;
        jump            : out    vl_logic;
        alucontrol      : out    vl_logic_vector(2 downto 0)
    );
end controller;
