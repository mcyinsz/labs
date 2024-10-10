FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd30.sc 2:16]
    output io_out : UInt<5> @[cmd30.sc 2:16]

    reg memory_0 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_0) @[cmd30.sc 8:25]
    reg memory_1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_1) @[cmd30.sc 8:25]
    reg memory_2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_2) @[cmd30.sc 8:25]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_x), memory_0) @[cmd30.sc 9:{23,23}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_x), memory_1, _GEN_0) @[cmd30.sc 9:{23,23}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_x), memory_2, _GEN_1) @[cmd30.sc 9:{23,23}]
    node _memory_io_x = _GEN_2 @[cmd30.sc 9:23]
    node _memory_T = add(UInt<1>("h1"), _memory_io_x) @[cmd30.sc 9:23]
    node _memory_T_1 = tail(_memory_T, 1) @[cmd30.sc 9:23]
    node _memory_io_x_0 = _memory_T_1 @[cmd30.sc 9:{17,17}]
    node _GEN_3 = mux(eq(UInt<1>("h0"), io_x), _memory_io_x_0, memory_0) @[cmd30.sc 9:{17,17} 8:25]
    node _GEN_4 = mux(eq(UInt<1>("h1"), io_x), _memory_io_x_0, memory_1) @[cmd30.sc 9:{17,17} 8:25]
    node _GEN_5 = mux(eq(UInt<2>("h2"), io_x), _memory_io_x_0, memory_2) @[cmd30.sc 9:{17,17} 8:25]
    node _memory_io_x_1 = _GEN_2 @[cmd30.sc 10:18]
    node _io_out_T = add(UInt<1>("h1"), _memory_io_x_1) @[cmd30.sc 10:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd30.sc 10:18]
    node _T = bits(reset, 0, 0) @[cmd30.sc 11:11]
    node _T_1 = eq(_T, UInt<1>("h0")) @[cmd30.sc 11:11]
    node _T_2 = bits(reset, 0, 0) @[cmd30.sc 12:11]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[cmd30.sc 12:11]
    node _memory_WIRE_0 = UInt<5>("h0") @[cmd30.sc 8:{33,33}]
    node _memory_WIRE_1 = UInt<5>("h0") @[cmd30.sc 8:{33,33}]
    node _memory_WIRE_2 = UInt<5>("h0") @[cmd30.sc 8:{33,33}]
    io_out <= _io_out_T_1 @[cmd30.sc 10:12]
    memory_0 <= mux(reset, _memory_WIRE_0, _GEN_3) @[cmd30.sc 8:{25,25}]
    memory_1 <= mux(reset, _memory_WIRE_1, _GEN_4) @[cmd30.sc 8:{25,25}]
    memory_2 <= mux(reset, _memory_WIRE_2, _GEN_5) @[cmd30.sc 8:{25,25}]
    printf(clock, and(and(UInt<1>("h1"), _T_1), UInt<1>("h1")), "\u73B0\u5728 out \u7684\u503C\u4E3A%d\n", io_out) : printf @[cmd30.sc 11:11]
    printf(clock, and(and(UInt<1>("h1"), _T_3), UInt<1>("h1")), "\u73B0\u5728 memory(0) \u7684\u503C\u4E3A%d\n", memory_0) : printf_1 @[cmd30.sc 12:11]
