FIRRTL version 1.2.0
circuit Histogram :
  module Histogram :
    input clock : Clock
    input reset : UInt<1>
    input io_x : UInt<2> @[cmd25.sc 2:16]
    output io_out : UInt<5> @[cmd25.sc 2:16]

    mem memory : @[cmd25.sc 7:21]
      data-type => UInt<5>
      depth => 3
      read-latency => 0
      write-latency => 1
      reader => io_out_MPORT
      writer => MPORT
      read-under-write => undefined
    io_out <= memory.io_out_MPORT.data @[cmd25.sc 8:12]
    memory.io_out_MPORT.addr <= io_x @[cmd25.sc 8:21]
    memory.io_out_MPORT.en <= UInt<1>("h1") @[cmd25.sc 8:21]
    memory.io_out_MPORT.clk <= clock @[cmd25.sc 8:21]
    memory.MPORT.addr <= io_x @[cmd25.sc 9:11]
    memory.MPORT.en <= UInt<1>("h1") @[cmd25.sc 9:11]
    memory.MPORT.clk <= clock @[cmd25.sc 9:11]
    memory.MPORT.data <= io_out @[cmd25.sc 9:17]
    memory.MPORT.mask <= UInt<1>("h1") @[cmd25.sc 9:17]
