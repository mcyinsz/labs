FIRRTL version 1.2.0
circuit DecoupledAccumulatorInstMod :
  module DecoupledAccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    output io_data_ready : UInt<1> @[cmd52.sc 2:16]
    input io_data_valid : UInt<1> @[cmd52.sc 2:16]
    input io_data_bits : UInt<4> @[cmd52.sc 2:16]
    input io_rst : UInt<1> @[cmd52.sc 2:16]
    output io_count : UInt<4> @[cmd52.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd51.sc 11:24]
    reg io_count_cd : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_count_cd) @[cmd51.sc 12:21]
    node _io_count_io_data_ready_T = eq(io_count_cd, UInt<1>("h0")) @[cmd51.sc 13:24]
    node _io_count_T = and(io_data_ready, io_data_valid) @[cmd51.sc 18:25]
    node _io_count_count_T = add(io_count_count, io_data_bits) @[cmd51.sc 19:28]
    node _io_count_count_T_1 = tail(_io_count_count_T, 1) @[cmd51.sc 19:28]
    node _io_count_cd_T = sub(io_count_cd, UInt<1>("h1")) @[cmd51.sc 26:21]
    node _io_count_cd_T_1 = tail(_io_count_cd_T, 1) @[cmd51.sc 26:21]
    node _GEN_0 = mux(io_data_ready, io_count_count, io_count_count) @[cmd51.sc 21:31 22:19 25:19]
    node _GEN_1 = mux(io_data_ready, io_count_cd, _io_count_cd_T_1) @[cmd51.sc 21:31 23:16 26:16]
    node _GEN_2 = mux(_io_count_T, _io_count_count_T_1, _GEN_0) @[cmd51.sc 18:39 19:19]
    node _GEN_3 = mux(_io_count_T, UInt<1>("h1"), _GEN_1) @[cmd51.sc 18:39 20:16]
    node _GEN_4 = mux(io_rst, UInt<1>("h0"), _GEN_2) @[cmd51.sc 14:15 15:14]
    node _GEN_5 = mux(io_rst, UInt<1>("h1"), _GEN_3) @[cmd51.sc 14:15 16:11]
    io_data_ready <= _io_count_io_data_ready_T @[cmd51.sc 13:16]
    io_count <= io_count_count @[cmd52.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_4) @[cmd51.sc 11:{24,24}]
    io_count_cd <= mux(reset, UInt<1>("h1"), _GEN_5) @[cmd51.sc 12:{21,21}]
