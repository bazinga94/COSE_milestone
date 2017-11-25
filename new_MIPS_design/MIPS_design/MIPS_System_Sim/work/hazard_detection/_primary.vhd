library verilog;
use verilog.vl_types.all;
entity hazard_detection is
    port(
        ID_EX_C_memtoreg_out: in     vl_logic;
        ID_EX_inst_1_out: in     vl_logic_vector(4 downto 0);
        IF_ID_inst_rs   : in     vl_logic_vector(4 downto 0);
        IF_ID_inst_rt   : in     vl_logic_vector(4 downto 0);
        stall           : out    vl_logic
    );
end hazard_detection;
