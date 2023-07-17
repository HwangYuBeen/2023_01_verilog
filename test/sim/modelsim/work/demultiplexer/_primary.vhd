library verilog;
use verilog.vl_types.all;
entity demultiplexer is
    port(
        demux_in        : in     vl_logic;
        demux_signal    : in     vl_logic_vector(1 downto 0);
        demux_out       : out    vl_logic_vector(3 downto 0)
    );
end demultiplexer;
