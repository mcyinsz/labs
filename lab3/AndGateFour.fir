FIRRTL version 1.2.0
circuit AndGateFour :
  module AndGate :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>} @[cmd4.sc 2:14]

    node _io_c_T = and(io.a, io.b) @[cmd4.sc 8:18]
    io.c <= _io_c_T @[cmd4.sc 8:10]

  module AndGate_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<1>, flip b : UInt<1>, c : UInt<1>} @[cmd4.sc 2:14]

    node _io_c_T = and(io.a, io.b) @[cmd4.sc 8:18]
    io.c <= _io_c_T @[cmd4.sc 8:10]

  module AndGateFour :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip d : UInt<1>, flip e : UInt<1>, c : UInt<1>} @[cmd4.sc 21:15]

    inst temp1_andGateModule of AndGate @[cmd4.sc 14:31]
    temp1_andGateModule.clock <= clock
    temp1_andGateModule.reset <= reset
    temp1_andGateModule.io.a <= io.a @[cmd4.sc 15:24]
    temp1_andGateModule.io.b <= io.b @[cmd4.sc 16:24]
    inst temp2_andGateModule of AndGate_1 @[cmd4.sc 14:31]
    temp2_andGateModule.clock <= clock
    temp2_andGateModule.reset <= reset
    temp2_andGateModule.io.a <= io.d @[cmd4.sc 15:24]
    temp2_andGateModule.io.b <= io.e @[cmd4.sc 16:24]
    node _io_c_T = and(temp1_andGateModule.io.c, temp2_andGateModule.io.c) @[cmd4.sc 32:19]
    io.c <= _io_c_T @[cmd4.sc 32:10]

