library verilog;
use verilog.vl_types.all;
entity Dlatch is
    port(
        D               : in     vl_logic;
        Q               : out    vl_logic;
        Q_bar           : out    vl_logic
    );
end Dlatch;
