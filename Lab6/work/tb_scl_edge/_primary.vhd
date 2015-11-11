library verilog;
use verilog.vl_types.all;
entity tb_scl_edge is
    generic(
        CLK_PERIOD      : integer := 10;
        NUM_TEST_CASES  : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of NUM_TEST_CASES : constant is 1;
end tb_scl_edge;
