FIRRTL version 1.2.0
circuit DecoupledAccumulatorInstMod :
  module DecoupledAccumulatorInstMod :
    input clock : Clock
    input reset : UInt<1>
    output io_data_ready : UInt<1> @[cmd39.sc 2:16]
    input io_data_valid : UInt<1> @[cmd39.sc 2:16]
    input io_data_bits : UInt<4> @[cmd39.sc 2:16]
    input io_rst : UInt<1> @[cmd39.sc 2:16]
    output io_count : UInt<4> @[cmd39.sc 2:16]

    reg io_count_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), io_count_count) @[cmd38.sc 11:24]
    reg io_count_cd : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_count_cd) @[cmd38.sc 12:21]
    node _io_count_io_data_ready_T = eq(io_count_cd, UInt<1>("h0")) @[cmd38.sc 13:24]
    node _io_count_T = and(io_data_ready, io_data_valid) @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
    node _io_count_count_T = add(io_count_count, io_data_bits) @[cmd38.sc 19:28]
    node _io_count_count_T_1 = tail(_io_count_count_T, 1) @[cmd38.sc 19:28]
    node _io_count_cd_T = sub(io_count_cd, UInt<1>("h1")) @[cmd38.sc 23:22]
    node _io_count_cd_T_1 = tail(_io_count_cd_T, 1) @[cmd38.sc 23:22]
    node _GEN_0 = mux(_io_count_T, _io_count_count_T_1, io_count_count) @[cmd38.sc 18:24 19:19 22:19]
    node _GEN_1 = mux(_io_count_T, UInt<1>("h1"), _io_count_cd_T_1) @[cmd38.sc 18:24 20:16 23:16]
    node _GEN_2 = mux(io_rst, UInt<1>("h0"), _GEN_0) @[cmd38.sc 14:15 15:14]
    node _GEN_3 = mux(io_rst, UInt<1>("h0"), _GEN_1) @[cmd38.sc 14:15 16:11]
    io_data_ready <= _io_count_io_data_ready_T @[cmd38.sc 13:16]
    io_count <= io_count_count @[cmd39.sc 7:14]
    io_count_count <= mux(reset, UInt<4>("h0"), _GEN_2) @[cmd38.sc 11:{24,24}]
    io_count_cd <= mux(reset, UInt<1>("h1"), _GEN_3) @[cmd38.sc 12:{21,21}]
