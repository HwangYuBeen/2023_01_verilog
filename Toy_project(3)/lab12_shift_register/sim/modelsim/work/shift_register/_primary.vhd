library verilog;
use verilog.vl_types.all;
entity shift_register is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        Q_right         : out    vl_logic_vector(7 downto 0);
        Q_left          : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end shift_register;
