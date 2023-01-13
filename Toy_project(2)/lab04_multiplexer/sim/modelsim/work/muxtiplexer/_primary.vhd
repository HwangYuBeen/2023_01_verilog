library verilog;
use verilog.vl_types.all;
entity muxtiplexer is
    port(
        mux_in          : in     vl_logic_vector(3 downto 0);
        mux_signal      : in     vl_logic_vector(1 downto 0);
        mux_out         : out    vl_logic
    );
end muxtiplexer;
