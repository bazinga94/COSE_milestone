library verilog;
use verilog.vl_types.all;
entity hazard_detection is
    port(
        reset           : in     vl_logic;
        ID_EX_memtoreg  : in     vl_logic;
        ID_EX_rt        : in     vl_logic_vector(4 downto 0);
        IF_ID_rs        : in     vl_logic_vector(4 downto 0);
        IF_ID_rt        : in     vl_logic_vector(4 downto 0);
        pcsrc           : in     vl_logic;
        jump            : in     vl_logic;
        stall           : out    vl_logic;
        flush           : out    vl_logic
    );
end hazard_detection;
