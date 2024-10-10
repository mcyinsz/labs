FIRRTL version 1.2.0
circuit Helper_Anon :
  module Helper_Anon :
    input clock : Clock
    input reset : UInt<1>
    input io_in1 : UInt<4> @[cmd16.sc 3:24]
    input io_in2 : UInt<4> @[cmd16.sc 3:24]
    output io_out : UInt<5> @[cmd16.sc 3:24]

    node _io_out_T = add(io_in1, io_in2) @[cmd15.sc 2:6]
    io_out <= _io_out_T @[cmd16.sc 8:20]
