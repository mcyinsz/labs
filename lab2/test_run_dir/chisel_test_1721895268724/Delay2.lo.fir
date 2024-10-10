FIRRTL version 1.2.0
circuit Delay2 :
  module Delay2 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<5> @[cmd3.sc 2:16]
    output io_out : UInt<5> @[cmd3.sc 2:16]

    reg d1 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), d1) @[cmd3.sc 8:21]
    reg d2 : UInt<5>, clock with :
      reset => (UInt<1>("h0"), d2) @[cmd3.sc 9:21]
    io_out <= d2 @[cmd3.sc 10:11]
    d1 <= io_in @[cmd3.sc 8:21]
    d2 <= d1 @[cmd3.sc 9:21]
