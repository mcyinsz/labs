FIRRTL version 1.2.0
circuit ROM :
  module ROM :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<4> @[cmd8.sc 16:16]
    output io_out : UInt<3> @[cmd8.sc 16:16]

    node _io_out_T = bits(io_sel, 2, 0)
    node ROM_0 = UInt<3>("h0") @[cmd8.sc 18:{22,22}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), _io_out_T), ROM_0) @[cmd8.sc 19:{12,12}]
    node ROM_1 = UInt<3>("h1") @[cmd8.sc 18:{22,22}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _io_out_T), ROM_1, _GEN_0) @[cmd8.sc 19:{12,12}]
    node ROM_2 = UInt<3>("h2") @[cmd8.sc 18:{22,22}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _io_out_T), ROM_2, _GEN_1) @[cmd8.sc 19:{12,12}]
    node ROM_3 = UInt<3>("h3") @[cmd8.sc 18:{22,22}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _io_out_T), ROM_3, _GEN_2) @[cmd8.sc 19:{12,12}]
    node ROM_4 = UInt<3>("h4") @[cmd8.sc 18:{22,22}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), _io_out_T), ROM_4, _GEN_3) @[cmd8.sc 19:{12,12}]
    node _ROM_io_out_T = _GEN_4 @[cmd8.sc 19:12]
    io_out <= _ROM_io_out_T @[cmd8.sc 19:12]
