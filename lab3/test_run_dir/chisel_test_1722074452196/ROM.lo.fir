FIRRTL version 1.2.0
circuit ROM :
  module ROM :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<2> @[cmd26.sc 16:16]
    output io_out : UInt<3> @[cmd26.sc 16:16]

    node ROM_0 = UInt<3>("h0") @[cmd26.sc 18:{22,22}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_sel), ROM_0) @[cmd26.sc 19:{12,12}]
    node ROM_1 = UInt<3>("h1") @[cmd26.sc 18:{22,22}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_sel), ROM_1, _GEN_0) @[cmd26.sc 19:{12,12}]
    node ROM_2 = UInt<3>("h2") @[cmd26.sc 18:{22,22}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_sel), ROM_2, _GEN_1) @[cmd26.sc 19:{12,12}]
    node ROM_3 = UInt<3>("h3") @[cmd26.sc 18:{22,22}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_sel), ROM_3, _GEN_2) @[cmd26.sc 19:{12,12}]
    node ROM_4 = UInt<3>("h4") @[cmd26.sc 18:{22,22}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_sel), ROM_4, _GEN_3) @[cmd26.sc 19:{12,12}]
    node _ROM_io_sel = _GEN_4 @[cmd26.sc 19:12]
    io_out <= _ROM_io_sel @[cmd26.sc 19:12]
