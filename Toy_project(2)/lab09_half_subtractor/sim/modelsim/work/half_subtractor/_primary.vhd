library verilog;
use verilog.vl_types.all;
entity half_subtractor is
    port(
        HS_in_A         : in     vl_logic;
        HS_in_B         : in     vl_logic;
        HS_out_dif      : out    vl_logic;
        HS_out_bor      : out    vl_logic
    );
end half_subtractor;
