library verilog;
use verilog.vl_types.all;
entity SRff is
    port(
        S               : in     vl_logic;
        R               : in     vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : out    vl_logic;
        Q_bar           : out    vl_logic
    );
end SRff;
