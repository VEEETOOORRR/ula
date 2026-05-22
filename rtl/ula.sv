`timescale 1ns/1ps

import enums::*;

module ula #(
    parameter WIDTH = 8
)(
    input  logic [WIDTH-1:0] a,
    input  logic [WIDTH-1:0] b,

    input  logic [1:0] op,

    output logic [WIDTH-1:0] result
);

    always_comb begin

        case(operation_t'(op))

            SHIFTL: result = a << 1;
            ADD:    result = a + b;
            SUB:    result = a - b;
            MULT:   result = a * b;

            default: result = '0;

        endcase

    end

endmodule