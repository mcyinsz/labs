FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip x : UInt<2>, out : UInt<5>} @[cmd32.sc 2:16]

    wire _memory_WIRE : UInt<5>[3] @[cmd32.sc 7:33]
    _memory_WIRE[0] <= UInt<5>("h0") @[cmd32.sc 7:33]
    _memory_WIRE[1] <= UInt<5>("h0") @[cmd32.sc 7:33]
    _memory_WIRE[2] <= UInt<5>("h0") @[cmd32.sc 7:33]
    reg memory : UInt<5>[3], clock with :
      reset => (reset, _memory_WIRE) @[cmd32.sc 7:25]
    node _memory_T = add(UInt<1>("h1"), memory[io.x]) @[cmd32.sc 8:23]
    node _memory_T_1 = tail(_memory_T, 1) @[cmd32.sc 8:23]
    memory[io.x] <= _memory_T_1 @[cmd32.sc 8:17]
    node _io_out_T = add(UInt<1>("h1"), memory[io.x]) @[cmd32.sc 9:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd32.sc 9:18]
    io.out <= _io_out_T_1 @[cmd32.sc 9:12]

