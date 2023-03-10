library verilog;
use verilog.vl_types.all;
entity half_adder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        sum             : out    vl_logic;
        c_out           : out    vl_logic
    );
end half_adder;
