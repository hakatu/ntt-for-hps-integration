library verilog;
use verilog.vl_types.all;
entity barrett_reduction is
    generic(
        q               : vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        k               : integer := 32;
        mu              : integer := 1290167
    );
    port(
        c               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of q : constant is 1;
    attribute mti_svvh_generic_type of k : constant is 1;
    attribute mti_svvh_generic_type of mu : constant is 1;
end barrett_reduction;
