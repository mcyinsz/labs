FIRRTL version 1.2.0
circuit AccumulatorInstMod :
  module AccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    input io_data : UInt<4> @[cmd38.sc 2:16]
    input io_rst : UInt<1> @[cmd38.sc 2:16]
    output io_count : UInt<4> @[cmd38.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd36.sc 10:22]
    node _io_count_count_T = add(io_count_count, io_data) @[cmd36.sc 14:21]
    node _io_count_count_T_1 = tail(_io_count_count_T, 1) @[cmd36.sc 14:21]
    node _GEN_0 = mux(io_rst, UInt<1>("h0"), _io_count_count_T_1) @[cmd36.sc 11:15 12:14 14:14]
    io_count <= io_count_count @[cmd38.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd36.sc 10:{22,22}]
