library verilog;
use verilog.vl_types.all;
entity parity is
    port(
        din0            : in     vl_logic_vector(3 downto 0);
        even_out        : out    vl_logic;
        odd_out         : out    vl_logic
    );
end parity;
