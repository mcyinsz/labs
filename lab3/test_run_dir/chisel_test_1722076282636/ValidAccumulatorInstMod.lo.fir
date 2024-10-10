FIRRTL version 1.2.0
circuit ValidAccumulatorInstMod :
  module ValidAccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    input io_data_valid : UInt<1> @[cmd33.sc 2:16]
    input io_data_bits : UInt<4> @[cmd33.sc 2:16]
    input io_rst : UInt<1> @[cmd33.sc 2:16]
    output io_count : UInt<4> @[cmd33.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd32.sc 9:22]
    node _io_count_count_T = add(io_count_count, io_data_bits) @[cmd32.sc 14:25]
    node _io_count_count_T_1 = tail(_io_count_count_T, 1) @[cmd32.sc 14:25]
    node _GEN_0 = mux(io_data_valid, _io_count_count_T_1, io_count_count) @[cmd32.sc 13:26 14:18 16:18]
    node _GEN_1 = mux(io_rst, UInt<1>("h0"), _GEN_0) @[cmd32.sc 10:15 11:14]
    io_count <= io_count_count @[cmd33.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_1) @[cmd32.sc 9:{22,22}]
