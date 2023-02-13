library verilog;
use verilog.vl_types.all;
entity full_adder1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        sum             : out    vl_logic;
        c_out           : out    vl_logic;
        c_in            : in     vl_logic;
        haC0            : out    vl_logic;
        haC1            : out    vl_logic;
        haS0            : out    vl_logic
    );
end full_adder1;
