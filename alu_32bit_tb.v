module tb_alu_32bit;

reg  [31:0] A;
reg  [31:0] B;
reg  [3:0]  ALU_Sel;

wire [31:0] Result;
wire CarryOut;

// Instantiate ALU
alu_32bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .CarryOut(CarryOut)
);

initial begin

    $monitor("A=%d B=%d ALU_Sel=%b Result=%d CarryOut=%b",
              A, B, ALU_Sel, Result, CarryOut);

    // Test ADD
    A = 10; B = 5; ALU_Sel = 4'b0000; #10;

    // Test SUB
    A = 10; B = 5; ALU_Sel = 4'b0001; #10;

    // AND
    A = 10; B = 5; ALU_Sel = 4'b0010; #10;

    // OR
    A = 10; B = 5; ALU_Sel = 4'b0011; #10;

    // XOR
    A = 10; B = 5; ALU_Sel = 4'b0100; #10;

    // NAND
    A = 10; B = 5; ALU_Sel = 4'b0101; #10;

    // NOR
    A = 10; B = 5; ALU_Sel = 4'b0110; #10;

    // XNOR
    A = 10; B = 5; ALU_Sel = 4'b0111; #10;

    // Shift Left
    A = 10; B = 0; ALU_Sel = 4'b1000; #10;

    // Shift Right
    A = 10; B = 0; ALU_Sel = 4'b1001; #10;


initial begin
 $dumpfile ("waveform.vcd");
$dumpvars(0,alu_32bit_tb);

    $finish;
end

endmodule


