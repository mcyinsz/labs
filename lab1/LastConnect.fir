FIRRTL version 1.2.0
circuit LastConnect :
  module LastConnect :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip update : UInt<1>, out : UInt} @[cmd29.sc 2:16]

    io.out <= UInt<3>("h4") @[cmd29.sc 7:12]
    io.out <= UInt<3>("h5") @[cmd29.sc 8:12]
    when io.update : @[cmd29.sc 10:20]
      io.out <= UInt<4>("ha") @[cmd29.sc 11:15]
    else :
      skip


