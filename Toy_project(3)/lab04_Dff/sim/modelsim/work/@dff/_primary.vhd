library verilog;
use verilog.vl_types.all;
entity Dff is
    port(
        D               : in     vl_logic;
        Q               : out    vl_logic;
        Q_bar           : out    vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end Dff;
