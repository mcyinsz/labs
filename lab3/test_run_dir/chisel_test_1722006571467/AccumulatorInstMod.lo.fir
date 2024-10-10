FIRRTL version 1.2.0
circuit AccumulatorInstMod :
  module AccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    input io_data : UInt<4> @[cmd40.sc 2:16]
    input io_rst : UInt<1> @[cmd40.sc 2:16]
    output io_count : UInt<4> @[cmd40.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd39.sc 10:22]
    node _GEN_0 = mux(io_rst, UInt<1>("h0"), io_count_count) @[cmd39.sc 11:15 12:14 14:14]
    io_count <= io_count_count @[cmd40.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_0) @[cmd39.sc 10:{22,22}]
