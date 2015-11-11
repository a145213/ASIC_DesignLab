library verilog;
use verilog.vl_types.all;
entity rcv_block is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        serial_in       : in     vl_logic;
        data_read       : in     vl_logic;
        rx_data         : out    vl_logic_vector(7 downto 0);
        data_ready      : out    vl_logic;
        overrun_error   : out    vl_logic;
        framing_error   : out    vl_logic;
        shift_strobe    : out    vl_logic;
        packet_done     : out    vl_logic;
        state           : out    vl_logic_vector(3 downto 0)
    );
end rcv_block;
