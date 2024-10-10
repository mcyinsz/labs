FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd27.sc 2:16]
    output io_out : UInt<5> @[cmd27.sc 2:16]

    mem memory : @[cmd27.sc 7:21]
      data-type => UInt<5>
      depth => 3
      read-latency => 0
      write-latency => 1
      reader => io_out_MPORT
      writer => MPORT
      read-under-write => undefined
    node _io_out_T = add(UInt<1>("h1"), memory.io_out_MPORT.data) @[cmd27.sc 8:18]
    node _io_out_T_1 = tail(_io_out_T, 1) @[cmd27.sc 8:18]
    io_out <= _io_out_T_1 @[cmd27.sc 8:12]
    memory.io_out_MPORT.addr <= io_x @[cmd27.sc 8:25]
    memory.io_out_MPORT.en <= UInt<1>("h1") @[cmd27.sc 8:25]
    memory.io_out_MPORT.clk <= clock @[cmd27.sc 8:25]
    memory.MPORT.addr <= io_x @[cmd27.sc 9:11]
    memory.MPORT.en <= UInt<1>("h1") @[cmd27.sc 9:11]
    memory.MPORT.clk <= clock @[cmd27.sc 9:11]
    memory.MPORT.data <= io_out @[cmd27.sc 9:17]
    memory.MPORT.mask <= UInt<1>("h1") @[cmd27.sc 9:17]
