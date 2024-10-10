FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd32.sc 2:16]
    output io_out : UInt<5> @[cmd32.sc 2:16]

    reg memory_0 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_0) @[cmd32.sc 7:25]
    reg memory_1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_1) @[cmd32.sc 7:25]
    reg memory_2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), memory_2) @[cmd32.sc 7:25]
    node _GEN_0 = validif(eq(UInt<1>("h0"), io_x), memory_0) @[cmd32.sc 8:{23,23}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_x), memory_1, _GEN_0) @[cmd32.sc 8:{23,23}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_x), memory_2, _GEN_1) @[cmd32.sc 8:{23,23}]
    node _memory_io_x = _GEN_2 @[cmd32.sc 8:23]
    node _memory_T = add(UInt<1>("h1"), _memory_io_x) @[cmd32.sc 8:23]
    node _memory_T_1 = tail(_memory_T, 1) @[cmd32.sc 8:23]
    node _memory_io_x_0 = _memory_T_1 @[cmd32.sc 8:{17,17}]
    node _GEN_3 = mux(eq(UInt<1>("h0"), io_x), _memory_io_x_0, memory_0) @[cmd32.sc 8:{17,17} 7:25]
    node _GEN_4 = mux(eq(UInt<1>("h1"), io_x), _memory_io_x_0, memory_1) @[cmd32.sc 8:{17,17} 7:25]
    node _GEN_5 = mux(eq(UInt<2>("h2"), io_x), _memory_io_x_0, memory_2) @[cmd32.sc 8:{17,17} 7:25]
    node _memory_io_x_1 = _GEN_2 @[cmd32.sc 9:18]
    node _io_out_T = add(UInt<1>("h1"), _memory_io_x_1) @[cmd32.sc 9:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd32.sc 9:18]
    node _memory_WIRE_0 = UInt<5>("h0") @[cmd32.sc 7:{33,33}]
    node _memory_WIRE_1 = UInt<5>("h0") @[cmd32.sc 7:{33,33}]
    node _memory_WIRE_2 = UInt<5>("h0") @[cmd32.sc 7:{33,33}]
    io_out <= _io_out_T_1 @[cmd32.sc 9:12]
    memory_0 <= mux(reset, _memory_WIRE_0, _GEN_3) @[cmd32.sc 7:{25,25}]
    memory_1 <= mux(reset, _memory_WIRE_1, _GEN_4) @[cmd32.sc 7:{25,25}]
    memory_2 <= mux(reset, _memory_WIRE_2, _GEN_5) @[cmd32.sc 7:{25,25}]
