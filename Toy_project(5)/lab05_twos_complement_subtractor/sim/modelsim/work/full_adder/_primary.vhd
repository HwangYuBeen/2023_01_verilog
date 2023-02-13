library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        HA_in_A         : in     vl_logic_vector(3 downto 0);
        HA_in_B         : in     vl_logic_vector(3 downto 0);
        HA_in_B_twos1   : in     vl_logic_vector(3 downto 0);
        HA_in_B_twos2   : in     vl_logic_vector(3 downto 0);
        HA_out_sum      : out    vl_logic_vector(3 downto 0);
        HA_out_carry    : out    vl_logic;
        FA_c_in         : in     vl_logic;
        FA_c_out        : out    vl_logic;
        FA_out_sum      : out    vl_logic_vector(3 downto 0);
        FA_out_carry    : out    vl_logic
    );
end full_adder;
