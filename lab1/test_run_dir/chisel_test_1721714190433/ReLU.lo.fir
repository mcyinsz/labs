FIRRTL version 1.2.0
circuit ReLU :
  module ReLU :
    input clock : Clock
    input reset : UInt<1>
    input io_x : SInt<5> @[cmd32.sc 2:16]
    output io_y : SInt<5> @[cmd32.sc 2:16]

    node _T = gt(io_x, asSInt(UInt<5>("hd"))) @[cmd32.sc 7:14]
    node _T_1 = lt(io_x, asSInt(UInt<1>("h0"))) @[cmd32.sc 9:20]
    node _GEN_0 = mux(_T_1, asSInt(UInt<1>("h0")), io_x) @[cmd32.sc 10:13 12:13 9:25]
    node _GEN_1 = mux(_T, asSInt(UInt<5>("hd")), _GEN_0) @[cmd32.sc 7:28 8:13]
    io_y <= _GEN_1
