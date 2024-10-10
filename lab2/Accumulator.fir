FIRRTL version 1.2.0
circuit Accumulator :
  module Accumulator :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<4>, flip en : UInt<1>, out : UInt<4>} @[cmd4.sc 2:16]

    node _acc_T = add(io.out, io.in) @[cmd4.sc 8:30]
    node _acc_T_1 = tail(_acc_T, 1) @[cmd4.sc 8:30]
    reg acc : UInt, clock with :
      reset => (reset, UInt<1>("h0")) @[cmd4.sc 8:23]
    when io.en : @[cmd4.sc 8:23]
      acc <= _acc_T_1 @[cmd4.sc 8:23]
    io.out <= acc @[cmd4.sc 9:12]

