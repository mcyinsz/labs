FIRRTL version 1.2.0
circuit TestConnect :
  module TestConnect :
    input clock : Clock
    input reset : UInt<1>
    output io_u : UInt<4> @[cmd3.sc 2:16]
    output io_s : SInt<5> @[cmd3.sc 2:16]

    io_u <= UInt<4>("ha") @[cmd2.sc 2:6]
    io_s <= asSInt(UInt<5>("h16")) @[cmd2.sc 2:6]
