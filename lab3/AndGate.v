module AndGate(
  input   clock,
  input   reset,
  input   io_a, // @[cmd21.sc 2:14]
  input   io_b, // @[cmd21.sc 2:14]
  output  io_c // @[cmd21.sc 2:14]
);
  assign io_c = io_a & io_b; // @[cmd21.sc 8:18]
endmodule
