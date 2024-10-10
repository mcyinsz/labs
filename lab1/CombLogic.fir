FIRRTL version 1.2.0
circuit CombLogic :
  module CombLogic :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, out : UInt<1>} @[cmd12.sc 2:16]

    node _io_out_T = and(io.a, io.b) @[cmd12.sc 10:21]
    node _io_out_T_1 = eq(io.c, UInt<1>("h0")) @[cmd12.sc 10:32]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[cmd12.sc 10:29]
    io.out <= _io_out_T_2 @[cmd12.sc 10:12]
    node _T = bits(reset, 0, 0) @[cmd12.sc 13:11]
    node _T_1 = eq(_T, UInt<1>("h0")) @[cmd12.sc 13:11]
    when _T_1 : @[cmd12.sc 13:11]
      printf(clock, UInt<1>("h1"), "a: %d, b: %d, c: %d, out: %d\n", io.a, io.b, io.c, io.out) : printf @[cmd12.sc 13:11]


