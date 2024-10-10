FIRRTL version 1.2.0
circuit AndGate :
  module AndGate :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>} @[cmd21.sc 2:14]

    node _io_c_T = and(io.a, io.b) @[cmd21.sc 8:18]
    io.c <= _io_c_T @[cmd21.sc 8:10]

