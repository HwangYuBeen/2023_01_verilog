library verilog;
use verilog.vl_types.all;
entity binary_down_counter is
    port(
        dout0           : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end binary_down_counter;
