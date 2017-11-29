library verilog;
use verilog.vl_types.all;
entity forwarding_unit is
    port(
        EX_MEM_regwrite : in     vl_logic;
        MEM_WB_regwrite : in     vl_logic;
        IF_ID_rs        : in     vl_logic_vector(4 downto 0);
        IF_ID_rt        : in     vl_logic_vector(4 downto 0);
        ID_EX_rs        : in     vl_logic_vector(4 downto 0);
        ID_EX_rt        : in     vl_logic_vector(4 downto 0);
        EX_MEM_writereg : in     vl_logic_vector(4 downto 0);
        MEM_WB_writereg : in     vl_logic_vector(4 downto 0);
        ForwardC        : out    vl_logic_vector(1 downto 0);
        ForwardD        : out    vl_logic_vector(1 downto 0);
        ForwardA        : out    vl_logic;
        ForwardB        : out    vl_logic
    );
end forwarding_unit;
