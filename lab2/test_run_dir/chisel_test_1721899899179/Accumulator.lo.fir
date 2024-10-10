FIRRTL version 1.2.0
circuit Accumulator :
  module Accumulator :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4> @[cmd4.sc 2:16]
    input io_en : UInt<1> @[cmd4.sc 2:16]
    output io_out : UInt<4> @[cmd4.sc 2:16]

    node _acc_T = add(io_out, io_in) @[cmd4.sc 8:30]
    node _acc_T_1 = tail(_acc_T, 1) @[cmd4.sc 8:30]
    reg acc : UInt<4>, clock with :
      reset => (UInt<1>("h0"), acc) @[cmd4.sc 8:23]
    node _GEN_0 = mux(io_en, _acc_T_1, acc) @[cmd4.sc 8:{23,23,23}]
    io_out <= acc @[cmd4.sc 9:12]
    acc <= mux(reset, UInt<1>("h0"), _GEN_0) @[cmd4.sc 8:{23,23}]
