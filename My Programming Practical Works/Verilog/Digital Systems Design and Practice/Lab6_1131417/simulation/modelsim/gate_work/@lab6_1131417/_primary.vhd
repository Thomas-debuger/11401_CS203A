library verilog;
use verilog.vl_types.all;
entity Lab6_1131417 is
    port(
        load            : in     vl_logic;
        Da              : in     vl_logic_vector(3 downto 0);
        Db              : in     vl_logic_vector(2 downto 0);
        en              : in     vl_logic;
        clrn            : in     vl_logic;
        clk             : in     vl_logic;
        qa              : out    vl_logic_vector(3 downto 0);
        qb              : out    vl_logic_vector(2 downto 0);
        Co              : out    vl_logic
    );
end Lab6_1131417;
