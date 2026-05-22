`timescale 1ns/1ps

package enums;

    // =========================
    // Enum dos opcodes
    // =========================
    typedef enum logic [1:0] {
        SHIFTL = 2'b00,
        ADD    = 2'b01,
        SUB    = 2'b10,
        MULT   = 2'b11
    } operation_t;

endpackage