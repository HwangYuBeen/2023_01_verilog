library verilog;
use verilog.vl_types.all;
entity carry_lookahead_addition_1bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : out    vl_logic;
        G               : out    vl_logic;
        P               : out    vl_logic
    );
end carry_lookahead_addition_1bit;
