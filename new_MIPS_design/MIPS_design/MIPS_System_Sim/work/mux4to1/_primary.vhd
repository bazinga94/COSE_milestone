library verilog;
use verilog.vl_types.all;
entity mux4to1 is
    generic(
        WIDTH           : integer := 8
    );
    port(
        d0              : in     vl_logic_vector;
        d1              : in     vl_logic_vector;
        d2              : in     vl_logic_vector;
        d3              : in     vl_logic_vector;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end mux4to1;
