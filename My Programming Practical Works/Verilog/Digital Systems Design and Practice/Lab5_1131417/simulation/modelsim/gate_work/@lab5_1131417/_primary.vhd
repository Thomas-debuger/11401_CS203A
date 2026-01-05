library verilog;
use verilog.vl_types.all;
entity Lab5_1131417 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        aluo            : out    vl_logic_vector(4 downto 0)
    );
end Lab5_1131417;
