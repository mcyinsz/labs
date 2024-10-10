FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd29.sc 2:16]
    output io_out : UInt<5> @[cmd29.sc 2:16]

    mem memory : @[cmd29.sc 7:21]
      data-type => UInt<5>
      depth => 3
      read-latency => 0
      write-latency => 1
      reader => MPORT_1
      reader => io_out_MPORT
      writer => MPORT
      read-under-write => undefined
    node _T = add(UInt<1>("h1"), memory.MPORT_1.data) @[cmd29.sc 8:23]
    node _T_1 = tail(_T, 1) @[cmd29.sc 8:23]
    node _io_out_T = add(UInt<1>("h1"), memory.io_out_MPORT.data) @[cmd29.sc 9:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd29.sc 9:18]
    io_out <= _io_out_T_1 @[cmd29.sc 9:12]
    memory.MPORT_1.addr <= io_x @[cmd29.sc 8:30]
    memory.MPORT_1.en <= UInt<1>("h1") @[cmd29.sc 8:30]
    memory.MPORT_1.clk <= clock @[cmd29.sc 8:30]
    memory.io_out_MPORT.addr <= io_x @[cmd29.sc 9:25]
    memory.io_out_MPORT.en <= UInt<1>("h1") @[cmd29.sc 9:25]
    memory.io_out_MPORT.clk <= clock @[cmd29.sc 9:25]
    memory.MPORT.addr <= io_x @[cmd29.sc 8:11]
    memory.MPORT.en <= UInt<1>("h1") @[cmd29.sc 8:11]
    memory.MPORT.clk <= clock @[cmd29.sc 8:11]
    memory.MPORT.data <= _T_1 @[cmd29.sc 8:17]
    memory.MPORT.mask <= UInt<1>("h1") @[cmd29.sc 8:17]
