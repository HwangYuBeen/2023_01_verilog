module half_adder (
    A,
    B,
    sum,
    c_out
);

  input A;
  input B;
  output sum;
  output c_out;

  assign c_out = A & B;
  assign sum = A ^ B;

endmodule

module full_adder1 (
    A,
    B,
    sum,
    c_out,
    c_in,
    haC0,
    haC1,
    haS0
);

  input A;
  input B;
  input c_in;
  output sum;
  output c_out;
  output haC0, haC1, haS0;
  wire haC0, haC1, haS0;

  half_adder u_half_adder0 (
    .A(A),
    .B(B),
    .sum(haS0),
    .c_out(haC0)
  );

  half_adder u_half_adder1 (
    .A(haS0),
    .B(c_in),
    .sum(sum),
    .c_out(haC1)
  );

assign c_out = haC0 | haC1;

endmodule 

module ripple_carry_adder_4bit(
  A,
  B,
  c_in,
  c_out,
  sum,
  C0,
  C1,
  C2
);

 input [3:0] A;
 input [3:0] B;
 input c_in;
 output c_out;
 output [3:0] sum;
 output C0, C1, C2;
 wire C0, C1, C2;

 full_adder1 rca4_fa0(
  .A(A[0]),
  .B(B[0]),
  .c_in(c_in),
  .c_out(C0),
  .sum(sum[0])
 );

 full_adder1 rca4_fa1(
  .A(A[1]),
  .B(B[1]),
  .c_in(C0),
  .c_out(C1),
  .sum(sum[1])
 );

 full_adder1 rca4_fa2(
  .A(A[2]),
  .B(B[2]),
  .c_in(C1),
  .c_out(C2),
  .sum(sum[2])
 );

 full_adder1 rca4_fa3(
  .A(A[3]),
  .B(B[3]),
  .c_in(C2),
  .c_out(c_out),
  .sum(sum[3])
 );

endmodule

module ripple_carry_adder_32bit ( 
  A,
  B,
  c_in,
  c_out,
  sum,
  C0,
  C1,
  C2,
  C3,
  C4,
  C5,
  C6
);

 input [31:0] A;
 input [31:0] B;
 input c_in;
 output c_out;
 output [31:0] sum;
 output C0, C1, C2, C3, C4, C5, C6;
 wire C0, C1, C2, C3, C4, C5, C6;

ripple_carry_adder_4bit rca32_rca4_0 (
  .A(A[3:0]),
  .B(B[3:0]),
  .c_in(c_in),
  .c_out(C0),
  .sum(sum[3:0])
);

ripple_carry_adder_4bit rca32_rca4_1 (
  .A(A[7:4]),
  .B(B[7:4]),
  .c_in(C0),
  .c_out(C1),
  .sum(sum[7:4])
);

ripple_carry_adder_4bit rca32_rca4_2 (
  .A(A[11:8]),
  .B(B[11:8]),
  .c_in(C1),
  .c_out(C2),
  .sum(sum[11:8])
);

ripple_carry_adder_4bit rca32_rca4_3 (
  .A(A[15:12]),
  .B(B[15:12]),
  .c_in(C2),
  .c_out(C3),
  .sum(sum[15:12])
);

ripple_carry_adder_4bit rca32_rca4_4 (
  .A(A[19:16]),
  .B(B[19:16]),
  .c_in(C3),
  .c_out(C4),
  .sum(sum[19:16])
);

ripple_carry_adder_4bit rca32_rca4_5 (
  .A(A[23:20]),
  .B(B[23:20]),
  .c_in(C4),
  .c_out(C5),
  .sum(sum[23:20])
);

ripple_carry_adder_4bit rca32_rca4_6 (
  .A(A[27:24]),
  .B(B[27:24]),
  .c_in(C5),
  .c_out(C6),
  .sum(sum[27:24])
);

ripple_carry_adder_4bit rca32_rca4_7 (
  .A(A[31:28]),
  .B(B[31:28]),
  .c_in(C6),
  .c_out(c_out),
  .sum(sum[31:28])
);

endmodule