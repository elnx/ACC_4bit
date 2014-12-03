library verilog;
use verilog.vl_types.all;
entity acc_4bit is
    port(
        ctrl            : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        aa              : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic
    );
end acc_4bit;
