FIRRTL version 1.2.0
circuit LastConnect :
  module LastConnect :
    input clock : Clock
    input reset : UInt<1>
    input io_update : UInt<1> @[cmd29.sc 2:16]
    output io_out : UInt<4> @[cmd29.sc 2:16]

    node _GEN_0 = mux(io_update, UInt<4>("ha"), UInt<3>("h5")) @[cmd29.sc 10:20 11:15 8:12]
    io_out <= _GEN_0
