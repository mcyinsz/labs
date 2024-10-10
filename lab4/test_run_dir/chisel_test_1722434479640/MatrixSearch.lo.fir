FIRRTL version 1.2.0
circuit MatrixSearch :
  module MatrixSearch :
    input clock : Clock
    input reset : UInt<1>
    input io_mat_0_0 : UInt<8> @[cmd37.sc 4:16]
    input io_mat_0_1 : UInt<8> @[cmd37.sc 4:16]
    input io_mat_1_0 : UInt<8> @[cmd37.sc 4:16]
    input io_mat_1_1 : UInt<8> @[cmd37.sc 4:16]
    input io_searchFor : UInt<8> @[cmd37.sc 4:16]
    output io_found : UInt<1> @[cmd37.sc 4:16]

    node _io_found_T = eq(io_mat_0_0, io_searchFor) @[cmd37.sc 10:57]
    node _io_found_T_1 = eq(io_mat_0_1, io_searchFor) @[cmd37.sc 10:57]
    node _io_found_T_2 = eq(io_mat_1_0, io_searchFor) @[cmd37.sc 10:57]
    node _io_found_T_3 = eq(io_mat_1_1, io_searchFor) @[cmd37.sc 10:57]
    node _io_found_T_4 = or(_io_found_T, _io_found_T_1) @[cmd37.sc 10:82]
    node _io_found_T_5 = or(_io_found_T_4, _io_found_T_2) @[cmd37.sc 10:82]
    node _io_found_T_6 = or(_io_found_T_5, _io_found_T_3) @[cmd37.sc 10:82]
    io_found <= _io_found_T_6 @[cmd37.sc 10:14]
