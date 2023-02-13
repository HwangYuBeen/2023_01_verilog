module half_subtractor (
    X,
    Y,
    D,
    b_out
);

  input X;
  input Y;
  output D;
  output b_out;

  assign b_out = ~X & Y;
  assign D = X ^ Y;

endmodule

module full_subtractor1 (
   X,
   Y,
   b_in,
   b_out,
   D,
   hsB0,
   hsB1,
   hsD0
);
 
  input X;
  input Y;
  input b_in;
  output D;
  output b_out;
  output hsB0, hsB1, hsD0;
  wire hsB0, hsB1, hsD0;

  half_subtractor u_half_subtractor0(
    .X(X),
    .Y(Y),
    .D(hsD0),
    .b_out(hsB0)
  );

  half_subtractor u_half_subtractor1(
    .X(hsD0),
    .Y(b_in),
    .D(D),
    .b_out(hsB1)
  );

  assign b_out = hsB0 | hsB1;

endmodule

module ripple_carry_subtractor_4bit(
 X,
 Y,
 b_in,
 b_out,
 D,
 B0,
 B1,
 B2
);

 input [3:0] X;
 input [3:0] Y;
 input b_in;
 output b_out;
 output [3:0] D;
 output B0, B1, B2;
 wire B0, B1, B2;

 full_subtractor1 rcs4_fa0(
  .X(X[0]),
  .Y(Y[0]),
  .b_in(b_in),
  .b_out(B0),
  .D(D[0])
 );

 full_subtractor1 rcs4_fa1(
  .X(X[1]),
  .Y(Y[1]),
  .b_in(B0),
  .b_out(B1),
  .D(D[1])
 );

 full_subtractor1 rcs4_fa2(
  .X(X[2]),
  .Y(Y[2]),
  .b_in(B1),
  .b_out(B2),
  .D(D[2])
 );

 full_subtractor1 rcs4_fa3(
  .X(X[3]),
  .Y(Y[3]),
  .b_in(B2),
  .b_out(b_out),
  .D(D[3])
 );

endmodule

module ripple_carry_subtractor_32bit(
 X,
 Y,
 b_in,
 b_out,
 D,
 B0,
 B1,
 B2,
 B3,
 B4,
 B5,
 B6
);

 input [31:0] X;
 input [31:0] Y;
 input b_in;
 output b_out;
 output [31:0] D;
 output B0, B1, B2, B3, B4, B5, B6;
 wire B0, B1, B2, B3, B4, B5, B6;

 ripple_carry_subtractor_4bit rcs32_rcs4_0 (
  .X(X[3:0]),
  .Y(Y[3:0]),
  .b_in(b_in),
  .b_out(B0),
  .D(D[3:0])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_1 (
  .X(X[7:4]),
  .Y(Y[7:4]),
  .b_in(B0),
  .b_out(B1),
  .D(D[7:4])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_2 (
  .X(X[11:8]),
  .Y(Y[11:8]),
  .b_in(B1),
  .b_out(B2),
  .D(D[11:8])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_3 (
  .X(X[15:12]),
  .Y(Y[15:12]),
  .b_in(B2),
  .b_out(B3),
  .D(D[15:12])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_4 (
  .X(X[19:16]),
  .Y(Y[19:16]),
  .b_in(B3),
  .b_out(B4),
  .D(D[19:16])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_5 (
  .X(X[23:20]),
  .Y(Y[23:20]),
  .b_in(B4),
  .b_out(B5),
  .D(D[23:20])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_6 (
  .X(X[27:24]),
  .Y(Y[27:24]),
  .b_in(B5),
  .b_out(B6),
  .D(D[27:24])
 );

 ripple_carry_subtractor_4bit rcs32_rcs4_7 (
  .X(X[31:28]),
  .Y(Y[31:28]),
  .b_in(B6),
  .b_out(b_out),
  .D(D[31:28])
 );

endmodule