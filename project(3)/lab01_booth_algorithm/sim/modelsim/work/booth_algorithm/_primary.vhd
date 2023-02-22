library verilog;
use verilog.vl_types.all;
entity booth_algorithm is
    port(
        M               : in     vl_logic_vector(3 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        start           : in     vl_logic
    );
end booth_algorithm;
