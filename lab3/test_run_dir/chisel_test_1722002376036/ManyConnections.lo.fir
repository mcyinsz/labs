FIRRTL version 1.2.0
circuit ManyConnections :
  module ManyConnections :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1> @[cmd23.sc 2:16]
    input io_in1 : UInt<1> @[cmd23.sc 2:16]
    input io_in2 : UInt<1> @[cmd23.sc 2:16]
    input io_in3 : UInt<1> @[cmd23.sc 2:16]
    output io_out : UInt<1> @[cmd23.sc 2:16]

    node _io_out_T = and(io_in0, io_in1) @[cmd23.sc 9:22]
    node _io_out_T_1 = and(_io_out_T, io_in2) @[cmd23.sc 9:31]
    node _io_out_T_2 = and(_io_out_T_1, io_in3) @[cmd23.sc 9:40]
    io_out <= _io_out_T_2 @[cmd23.sc 9:12]
