FIRRTL version 1.2.0
circuit AndOrRunTime :
  module AndOrRunTime :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1> @[cmd26.sc 2:16]
    input io_b : UInt<1> @[cmd26.sc 2:16]
    input io_useAnd : UInt<1> @[cmd26.sc 2:16]
    output io_out : UInt<1> @[cmd26.sc 2:16]

    node _io_out_T = and(io_a, io_b) @[cmd26.sc 10:18]
    node _io_out_T_1 = and(_io_out_T, io_useAnd) @[cmd26.sc 10:24]
    node _io_out_T_2 = or(io_a, io_b) @[cmd26.sc 10:44]
    node _io_out_T_3 = eq(io_useAnd, UInt<1>("h0")) @[cmd26.sc 10:54]
    node _io_out_T_4 = and(_io_out_T_2, _io_out_T_3) @[cmd26.sc 10:51]
    node _io_out_T_5 = or(_io_out_T_1, _io_out_T_4) @[cmd26.sc 10:36]
    io_out <= _io_out_T_5 @[cmd26.sc 10:11]
