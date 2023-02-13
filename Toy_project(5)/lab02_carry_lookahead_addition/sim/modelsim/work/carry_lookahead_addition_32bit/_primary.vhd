library verilog;
use verilog.vl_types.all;
entity carry_lookahead_addition_32bit is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        C               : out    vl_logic_vector(31 downto 0);
        P               : out    vl_logic_vector(31 downto 0);
        G               : out    vl_logic_vector(31 downto 0);
        c_in            : in     vl_logic;
        c_out           : out    vl_logic;
        sum             : out    vl_logic_vector(31 downto 0);
        C0              : out    vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic;
        C5              : out    vl_logic;
        C6              : out    vl_logic
    );
end carry_lookahead_addition_32bit;
