library verilog;
use verilog.vl_types.all;
entity full_subtractor is
    port(
        HS_in_A         : in     vl_logic;
        HS_in_B         : in     vl_logic;
        HS_out_dif      : out    vl_logic;
        HS_out_bor      : out    vl_logic;
        FS_c_in         : in     vl_logic;
        FS_c_out        : out    vl_logic;
        FS_out_dif      : out    vl_logic;
        FS_out_bor      : out    vl_logic
    );
end full_subtractor;
