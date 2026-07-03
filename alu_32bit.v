`timescale 1ns/1ps

module alu_32bit(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0] ALU_Sel,
    output reg [31:0] Result,
    output reg CarryOut
);

always @(*) begin

    CarryOut = 1'b0;

    case(ALU_Sel)

        // ADD
        4'b0000:
        begin
            {CarryOut, Result} = A + B;
        end

        // SUB
        4'b0001:
        begin
            Result = A - B;
            CarryOut = (A >= B);
        end

        // AND
        4'b0010:
        begin
            Result = A & B;
        end

        // OR
        4'b0011:
        begin
            Result = A | B;
        end

        // XOR
        4'b0100:
        begin
            Result = A ^ B;
        end

        // NAND
        4'b0101:
        begin
            Result = ~(A & B);
        end

        // NOR
        4'b0110:
        begin
            Result = ~(A | B);
        end

        // XNOR
        4'b0111:
        begin
            Result = ~(A ^ B);
        end

        // Left Shift
        4'b1000:
        begin
            Result = A << 1;
        end

        // Right Shift
        4'b1001:
        begin
            Result = A >> 1;
        end

        default:
        begin
            Result = 32'd0;
            CarryOut = 1'b0;
        end

    endcase

end

endmodule


