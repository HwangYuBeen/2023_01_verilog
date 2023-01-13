library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        enc_in          : in     vl_logic_vector(7 downto 0);
        enc_out         : out    vl_logic_vector(2 downto 0)
    );
end encoder;
