library verilog;
use verilog.vl_types.all;
entity gray_counter is
    port(
        B               : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        G               : out    vl_logic_vector(2 downto 0)
    );
end gray_counter;
