library verilog;
use verilog.vl_types.all;
entity OR_gate is
    port(
        din0            : in     vl_logic;
        din1            : in     vl_logic;
        dout0           : out    vl_logic
    );
end OR_gate;
