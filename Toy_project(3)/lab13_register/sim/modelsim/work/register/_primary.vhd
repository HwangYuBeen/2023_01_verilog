library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        D               : in     vl_logic_vector(3 downto 0);
        Q               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end \register\;
