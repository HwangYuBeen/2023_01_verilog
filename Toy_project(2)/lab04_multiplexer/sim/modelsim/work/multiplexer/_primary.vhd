library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        mul_in          : in     vl_logic_vector(3 downto 0);
        mul_signal      : in     vl_logic_vector(1 downto 0);
        mul_out         : out    vl_logic
    );
end multiplexer;
