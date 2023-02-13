library verilog;
use verilog.vl_types.all;
entity carry_lookahead_addition_4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C               : out    vl_logic_vector(3 downto 0);
        P               : out    vl_logic_vector(3 downto 0);
        G               : out    vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        c_out           : out    vl_logic;
        sum             : out    vl_logic_vector(3 downto 0)
    );
end carry_lookahead_addition_4bit;
