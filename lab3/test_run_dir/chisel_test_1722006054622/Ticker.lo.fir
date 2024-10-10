FIRRTL version 1.2.0
circuit Ticker :
  module Ticker :
    input clock : Clock
    input reset : UInt<1>
    output io_tick : UInt<1> @[cmd34.sc 3:16]

    reg value : UInt<2>, clock with :
      reset => (UInt<1>("h0"), value) @[src/main/scala/chisel3/util/Counter.scala 61:40]
    node wrap_wrap = eq(value, UInt<2>("h3")) @[src/main/scala/chisel3/util/Counter.scala 73:24]
    node _wrap_value_T = add(value, UInt<1>("h1")) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _wrap_value_T_1 = tail(_wrap_value_T, 1) @[src/main/scala/chisel3/util/Counter.scala 77:24]
    node _GEN_0 = mux(UInt<1>("h1"), _wrap_value_T_1, value) @[src/main/scala/chisel3/util/Counter.scala 118:16 77:15 61:40]
    node _GEN_1 = mux(UInt<1>("h1"), wrap_wrap, UInt<1>("h0")) @[src/main/scala/chisel3/util/Counter.scala 118:{16,23} 117:24]
    node wrap = _GEN_1 @[src/main/scala/chisel3/util/Counter.scala 117:24]
    io_tick <= wrap @[cmd34.sc 8:12]
    value <= mux(reset, UInt<2>("h0"), _GEN_0) @[src/main/scala/chisel3/util/Counter.scala 61:{40,40}]
