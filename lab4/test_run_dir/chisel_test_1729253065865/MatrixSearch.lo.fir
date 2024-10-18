FIRRTL version 1.2.0
circuit MatrixSearch :
  module MatrixSearch :
    input clock : Clock
    input reset : UInt<1>
    input io_mat_0_0 : UInt<8> @[cmd19.sc 4:16]
    input io_mat_0_1 : UInt<8> @[cmd19.sc 4:16]
    input io_mat_1_0 : UInt<8> @[cmd19.sc 4:16]
    input io_mat_1_1 : UInt<8> @[cmd19.sc 4:16]
    input io_searchFor : UInt<8> @[cmd19.sc 4:16]
    output io_found : UInt<1> @[cmd19.sc 4:16]

    node tmp_0_0 = eq(io_mat_0_0, io_searchFor) @[cmd19.sc 13:17]
    node tmp_0_1 = eq(io_mat_0_1, io_searchFor) @[cmd19.sc 13:17]
    node tmp_1_0 = eq(io_mat_1_0, io_searchFor) @[cmd19.sc 13:17]
    node tmp_1_1 = eq(io_mat_1_1, io_searchFor) @[cmd19.sc 13:17]
    node _foundValue_T = or(tmp_0_0, tmp_0_1) @[cmd19.sc 18:43]
    node _foundValue_T_1 = or(_foundValue_T, tmp_1_0) @[cmd19.sc 18:43]
    node foundValue = or(_foundValue_T_1, tmp_1_1) @[cmd19.sc 18:43]
    io_found <= foundValue @[cmd19.sc 21:14]
