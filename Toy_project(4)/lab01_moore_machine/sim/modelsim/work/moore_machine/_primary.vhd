library verilog;
use verilog.vl_types.all;
entity moore_machine is
    generic(
        S_00            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S_01            : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S_10            : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        S_11            : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        c_state         : out    vl_logic_vector(1 downto 0);
        n_state         : out    vl_logic_vector(1 downto 0);
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S_00 : constant is 1;
    attribute mti_svvh_generic_type of S_01 : constant is 1;
    attribute mti_svvh_generic_type of S_10 : constant is 1;
    attribute mti_svvh_generic_type of S_11 : constant is 1;
end moore_machine;
