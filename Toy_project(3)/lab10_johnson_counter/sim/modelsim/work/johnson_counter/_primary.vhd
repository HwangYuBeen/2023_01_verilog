library verilog;
use verilog.vl_types.all;
entity johnson_counter is
    port(
        Q               : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end johnson_counter;
