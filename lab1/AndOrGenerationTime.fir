FIRRTL version 1.2.0
circuit AndOrGenerationTime :
  module AndOrGenerationTime :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, out : UInt<1>} @[cmd22.sc 2:16]

    node _io_out_T = or(io.a, io.b) @[cmd22.sc 13:21]
    io.out <= _io_out_T @[cmd22.sc 13:15]

