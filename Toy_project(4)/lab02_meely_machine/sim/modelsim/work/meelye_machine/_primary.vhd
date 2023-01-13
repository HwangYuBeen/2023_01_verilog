library verilog;
use verilog.vl_types.all;
entity meelye_machine is
    generic(
        S_0             : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S_1             : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S_2             : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        S_3             : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        S_4             : vl_logic_vector(0 to 1) := (Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        c_state         : out    vl_logic_vector(2 downto 0);
        n_state         : out    vl_logic_vector(2 downto 0);
        din             : in     vl_logic;
        dout            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S_0 : constant is 1;
    attribute mti_svvh_generic_type of S_1 : constant is 1;
    attribute mti_svvh_generic_type of S_2 : constant is 1;
    attribute mti_svvh_generic_type of S_3 : constant is 1;
    attribute mti_svvh_generic_type of S_4 : constant is 1;
end meelye_machine;
