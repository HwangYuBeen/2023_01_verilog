library verilog;
use verilog.vl_types.all;
entity ripple_carry_adder_4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        c_out           : out    vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        C0              : out    vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic
    );
end ripple_carry_adder_4bit;
