FIRRTL version 1.2.0
circuit AndOrRunTime :
  module AndOrRunTime :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip useAnd : UInt<1>, out : UInt<1>} @[cmd26.sc 2:16]

    node _io_out_T = and(io.a, io.b) @[cmd26.sc 10:18]
    node _io_out_T_1 = and(_io_out_T, io.useAnd) @[cmd26.sc 10:24]
    node _io_out_T_2 = or(io.a, io.b) @[cmd26.sc 10:44]
    node _io_out_T_3 = eq(io.useAnd, UInt<1>("h0")) @[cmd26.sc 10:54]
    node _io_out_T_4 = and(_io_out_T_2, _io_out_T_3) @[cmd26.sc 10:51]
    node _io_out_T_5 = or(_io_out_T_1, _io_out_T_4) @[cmd26.sc 10:36]
    io.out <= _io_out_T_5 @[cmd26.sc 10:11]

