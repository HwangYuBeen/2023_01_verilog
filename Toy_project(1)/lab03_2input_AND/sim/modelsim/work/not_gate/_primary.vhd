library verilog;
use verilog.vl_types.all;
entity not_gate is
    port(
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
end not_gate;
