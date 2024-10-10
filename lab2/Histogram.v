module Histogram(
  input        clock,
  input        reset,
  input  [1:0] io_x, // @[cmd32.sc 2:16]
  output [4:0] io_out // @[cmd32.sc 2:16]
);
  reg [4:0] memory_0; // @[cmd32.sc 7:25]
  reg [4:0] memory_1; // @[cmd32.sc 7:25]
  reg [4:0] memory_2; // @[cmd32.sc 7:25]
  wire [4:0] _GEN_1 = 2'h1 == io_x ? memory_1 : memory_0; // @[cmd32.sc 8:{23,23}]
  wire [4:0] _GEN_2 = 2'h2 == io_x ? memory_2 : _GEN_1; // @[cmd32.sc 8:{23,23}]
  wire [4:0] _memory_T_1 = 5'h1 + _GEN_2; // @[cmd32.sc 8:23]
  assign io_out = 5'h1 + _GEN_2; // @[cmd32.sc 9:18]
  always @(posedge clock) begin
    if (reset) begin // @[cmd32.sc 7:25]
      memory_0 <= 5'h0; // @[cmd32.sc 7:25]
    end else if (2'h0 == io_x) begin // @[cmd32.sc 8:17]
      memory_0 <= _memory_T_1; // @[cmd32.sc 8:17]
    end
    if (reset) begin // @[cmd32.sc 7:25]
      memory_1 <= 5'h0; // @[cmd32.sc 7:25]
    end else if (2'h1 == io_x) begin // @[cmd32.sc 8:17]
      memory_1 <= _memory_T_1; // @[cmd32.sc 8:17]
    end
    if (reset) begin // @[cmd32.sc 7:25]
      memory_2 <= 5'h0; // @[cmd32.sc 7:25]
    end else if (2'h2 == io_x) begin // @[cmd32.sc 8:17]
      memory_2 <= _memory_T_1; // @[cmd32.sc 8:17]
    end
  end
endmodule
