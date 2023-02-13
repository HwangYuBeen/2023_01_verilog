library verilog;
use verilog.vl_types.all;
entity half_subtractor is
    port(
        X               : in     vl_logic;
        Y               : in     vl_logic;
        D               : out    vl_logic;
        b_out           : out    vl_logic
    );
end half_subtractor;
