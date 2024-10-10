FIRRTL version 1.2.0
circuit ROM :
  module ROM :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<4> @[cmd19.sc 16:16]
    output io_out : UInt<5> @[cmd19.sc 16:16]

    node ROM_0 = UInt<5>("h14") @[cmd19.sc 18:{22,22}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_sel), ROM_0) @[cmd19.sc 19:{12,12}]
    node ROM_1 = UInt<5>("h15") @[cmd19.sc 18:{22,22}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_sel), ROM_1, _GEN_0) @[cmd19.sc 19:{12,12}]
    node ROM_2 = UInt<5>("h16") @[cmd19.sc 18:{22,22}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_sel), ROM_2, _GEN_1) @[cmd19.sc 19:{12,12}]
    node ROM_3 = UInt<5>("h17") @[cmd19.sc 18:{22,22}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_sel), ROM_3, _GEN_2) @[cmd19.sc 19:{12,12}]
    node ROM_4 = UInt<5>("h18") @[cmd19.sc 18:{22,22}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_sel), ROM_4, _GEN_3) @[cmd19.sc 19:{12,12}]
    node ROM_5 = UInt<5>("h19") @[cmd19.sc 18:{22,22}]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_sel), ROM_5, _GEN_4) @[cmd19.sc 19:{12,12}]
    node ROM_6 = UInt<5>("h1a") @[cmd19.sc 18:{22,22}]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_sel), ROM_6, _GEN_5) @[cmd19.sc 19:{12,12}]
    node ROM_7 = UInt<5>("h1b") @[cmd19.sc 18:{22,22}]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_sel), ROM_7, _GEN_6) @[cmd19.sc 19:{12,12}]
    node ROM_8 = UInt<5>("h1c") @[cmd19.sc 18:{22,22}]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_sel), ROM_8, _GEN_7) @[cmd19.sc 19:{12,12}]
    node ROM_9 = UInt<5>("h1d") @[cmd19.sc 18:{22,22}]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_sel), ROM_9, _GEN_8) @[cmd19.sc 19:{12,12}]
    node ROM_10 = UInt<5>("h1e") @[cmd19.sc 18:{22,22}]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_sel), ROM_10, _GEN_9) @[cmd19.sc 19:{12,12}]
    node _ROM_io_sel = _GEN_10 @[cmd19.sc 19:12]
    io_out <= _ROM_io_sel @[cmd19.sc 19:12]
