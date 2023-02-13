library verilog;
use verilog.vl_types.all;
entity full_subtractor1 is
    port(
        X               : in     vl_logic;
        Y               : in     vl_logic;
        b_in            : in     vl_logic;
        b_out           : out    vl_logic;
        D               : out    vl_logic;
        hsB0            : out    vl_logic;
        hsB1            : out    vl_logic;
        hsD0            : out    vl_logic
    );
end full_subtractor1;
