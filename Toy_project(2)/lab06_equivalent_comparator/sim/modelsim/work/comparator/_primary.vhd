library verilog;
use verilog.vl_types.all;
entity comparator is
    port(
        comp_in_A       : in     vl_logic_vector(1 downto 0);
        comp_in_B       : in     vl_logic_vector(1 downto 0);
        comp_out        : out    vl_logic
    );
end comparator;
