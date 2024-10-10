FIRRTL version 1.2.0
circuit AndOrGenerationTime :
  module AndOrGenerationTime :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[cmd22.sc 2:16]
    input io_b : UInt<1> @[cmd22.sc 2:16]
    output io_out : UInt<1> @[cmd22.sc 2:16]

    node _io_out_T = or(io_a, io_b) @[cmd22.sc 13:21]
    io_out <= _io_out_T @[cmd22.sc 13:15]
