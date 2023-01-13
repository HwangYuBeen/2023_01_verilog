library verilog;
use verilog.vl_types.all;
entity Tff is
    port(
        T               : in     vl_logic;
        Q               : out    vl_logic;
        clk             : in     vl_logic;
        n_rst           : in     vl_logic
    );
end Tff;
