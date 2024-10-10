module AndGate(
  input   io_a, // @[cmd4.sc 2:14]
  input   io_b, // @[cmd4.sc 2:14]
  output  io_c // @[cmd4.sc 2:14]
);
  assign io_c = io_a & io_b; // @[cmd4.sc 8:18]
endmodule
module AndGateFour(
  input   clock,
  input   reset,
  input   io_a, // @[cmd4.sc 21:15]
  input   io_b, // @[cmd4.sc 21:15]
  input   io_d, // @[cmd4.sc 21:15]
  input   io_e, // @[cmd4.sc 21:15]
  output  io_c // @[cmd4.sc 21:15]
);
  wire  temp1_andGateModule_io_a; // @[cmd4.sc 14:31]
  wire  temp1_andGateModule_io_b; // @[cmd4.sc 14:31]
  wire  temp1_andGateModule_io_c; // @[cmd4.sc 14:31]
  wire  temp2_andGateModule_io_a; // @[cmd4.sc 14:31]
  wire  temp2_andGateModule_io_b; // @[cmd4.sc 14:31]
  wire  temp2_andGateModule_io_c; // @[cmd4.sc 14:31]
  AndGate temp1_andGateModule ( // @[cmd4.sc 14:31]
    .io_a(temp1_andGateModule_io_a),
    .io_b(temp1_andGateModule_io_b),
    .io_c(temp1_andGateModule_io_c)
  );
  AndGate temp2_andGateModule ( // @[cmd4.sc 14:31]
    .io_a(temp2_andGateModule_io_a),
    .io_b(temp2_andGateModule_io_b),
    .io_c(temp2_andGateModule_io_c)
  );
  assign io_c = temp1_andGateModule_io_c & temp2_andGateModule_io_c; // @[cmd4.sc 32:19]
  assign temp1_andGateModule_io_a = io_a; // @[cmd4.sc 15:24]
  assign temp1_andGateModule_io_b = io_b; // @[cmd4.sc 16:24]
  assign temp2_andGateModule_io_a = io_d; // @[cmd4.sc 15:24]
  assign temp2_andGateModule_io_b = io_e; // @[cmd4.sc 16:24]
endmodule
