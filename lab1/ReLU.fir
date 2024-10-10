FIRRTL version 1.2.0
circuit ReLU :
  module ReLU :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip x : SInt<5>, y : SInt<5>} @[cmd32.sc 2:16]

    node _T = gt(io.x, asSInt(UInt<3>("h2"))) @[cmd32.sc 7:14]
    when _T : @[cmd32.sc 7:28]
      io.y <= asSInt(UInt<3>("h2")) @[cmd32.sc 8:13]
    else :
      node _T_1 = lt(io.x, asSInt(UInt<1>("h0"))) @[cmd32.sc 9:20]
      when _T_1 : @[cmd32.sc 9:25]
        io.y <= asSInt(UInt<1>("h0")) @[cmd32.sc 10:13]
      else :
        io.y <= io.x @[cmd32.sc 12:13]


