FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd33.sc 2:16]
    output io_out : UInt<5> @[cmd33.sc 2:16]

    mem memory : @[cmd33.sc 7:21]
      data-type => UInt<5>
      depth => 3
      read-latency => 0
      write-latency => 1
      reader => MPORT_1
      reader => io_out_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = add(UInt<1>("h1"), memory.MPORT_1.data) @[cmd33.sc 8:23]
    node _T_1 = tail(_T, 1) @[cmd33.sc 8:23]
    node _io_out_T = add(UInt<1>("h1"), memory.io_out_MPORT.data) @[cmd33.sc 9:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd33.sc 9:18]
    node _T_2 = bits(reset, 0, 0) @[cmd33.sc 10:11]
    node _T_3 = eq(_T_2, UInt<1>("h0")) @[cmd33.sc 10:11]
    io_out <= _io_out_T_1 @[cmd33.sc 9:12]
    memory.MPORT_1.addr <= io_x @[cmd33.sc 8:30]
    memory.MPORT_1.en <= UInt<1>("h1") @[cmd33.sc 8:30]
    memory.MPORT_1.clk <= clock @[cmd33.sc 8:30]
    memory.io_out_MPORT.addr <= io_x @[cmd33.sc 9:25]
    memory.io_out_MPORT.en <= UInt<1>("h1") @[cmd33.sc 9:25]
    memory.io_out_MPORT.clk <= clock @[cmd33.sc 9:25]
    memory.MPORT.addr <= io_x @[cmd33.sc 8:11]
    memory.MPORT.en <= UInt<1>("h1") @[cmd33.sc 8:11]
    memory.MPORT.clk <= clock @[cmd33.sc 8:11]
    memory.MPORT.data <= _T_1 @[cmd33.sc 8:17]
    memory.MPORT.mask <= UInt<1>("h1") @[cmd33.sc 8:17]
    printf(clock, and(and(UInt<1>("h1"), _T_3), UInt<1>("h1")), "\u73B0\u5728 out \u7684\u503C\u4E3A%d\n", io_out) : printf @[cmd33.sc 10:11]
