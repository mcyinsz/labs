FIRRTL version 1.2.0
circuit SquareTable2 :
  module SquareTable2 :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<3> @[cmd12.sc 2:16]
    output io_xSquared : UInt<6> @[cmd12.sc 2:16]

    node _io_xSquared_T = bits(io_x, 1, 0)
    node ROM_0 = UInt<6>("h0") @[cmd12.sc 10:{33,33}]
    node _GEN_0 = validif(eq(UInt<1>("h0"), _io_xSquared_T), ROM_0) @[cmd12.sc 11:{16,16}]
    node ROM_1 = UInt<6>("h1") @[cmd12.sc 10:{33,33}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _io_xSquared_T), ROM_1, _GEN_0) @[cmd12.sc 11:{16,16}]
    node ROM_2 = UInt<6>("h4") @[cmd12.sc 10:{33,33}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _io_xSquared_T), ROM_2, _GEN_1) @[cmd12.sc 11:{16,16}]
    node ROM_3 = UInt<6>("h9") @[cmd12.sc 10:{33,33}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _io_xSquared_T), ROM_3, _GEN_2) @[cmd12.sc 11:{16,16}]
    node _ROM_io_xSquared_T = _GEN_3 @[cmd12.sc 11:16]
    io_xSquared <= _ROM_io_xSquared_T @[cmd12.sc 11:16]
