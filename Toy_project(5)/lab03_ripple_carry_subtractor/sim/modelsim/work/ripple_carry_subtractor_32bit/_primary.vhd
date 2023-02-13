library verilog;
use verilog.vl_types.all;
entity ripple_carry_subtractor_32bit is
    port(
        X               : in     vl_logic_vector(31 downto 0);
        Y               : in     vl_logic_vector(31 downto 0);
        b_in            : in     vl_logic;
        b_out           : out    vl_logic;
        D               : out    vl_logic_vector(31 downto 0);
        B0              : out    vl_logic;
        B1              : out    vl_logic;
        B2              : out    vl_logic;
        B3              : out    vl_logic;
        B4              : out    vl_logic;
        B5              : out    vl_logic;
        B6              : out    vl_logic
    );
end ripple_carry_subtractor_32bit;
