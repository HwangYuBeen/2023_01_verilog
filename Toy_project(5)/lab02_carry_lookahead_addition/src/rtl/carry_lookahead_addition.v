module carry_lookahead_addition_4bit (
    A,
    B,
    C,
    P,
    G,
    c_in,
    c_out,
    sum
);

  input [3:0] A;
  input [3:0] B;
  input c_in;
  output [3:0] C;
  output c_out;
  output [3:0] P;
  output [3:0] G;
  output [3:0] sum;
  wire [3:0] C;
  wire c_out;

  assign G = A & B;
  assign P = A ^ B;

  assign C[0] = c_in;
  assign C[1] = G[0] | (C[0] & P[0]);
  assign C[2] = G[1] | (C[1] & P[1]);
  assign C[3] = G[2] | (C[2] & P[2]);
  assign c_out = G[3] | (C[3] & P[3]);

  assign sum = C ^ P;

endmodule

module carry_lookahead_addition_32bit (
    A,
    B,
    C,
    P,
    G,
    c_in,
    c_out,
    sum,
    C0, C1, C2, C3, C4, C5, C6
);


  input [31:0] A;
  input [31:0] B;
  input c_in;
  output c_out;
  output [31:0] sum;
  output [31:0] P;
  output [31:0] G;
  output [31:0] C;
  output C0, C1, C2, C3, C4, C5, C6;
  wire C0, C1, C2, C3, C4, C5, C6;


carry_lookahead_addition_4bit cla16_cla4_0 (
  .A(A[3:0]),
  .B(B[3:0]),
  .c_in(c_in),
  .c_out(C0),
  .sum(sum[3:0]),
  .C(C[3:0]),
  .P(P[3:0]),
  .G(G[3:0])
);

carry_lookahead_addition_4bit cla16_cla4_1 (
  .A(A[7:4]),
  .B(B[7:4]),
  .c_in(C0),
  .c_out(C1),
  .sum(sum[7:4]),
  .C(C[7:4]),
  .P(P[7:4]),
  .G(G[7:4])
);

carry_lookahead_addition_4bit cla16_cla4_2 (
  .A(A[11:8]),
  .B(B[11:8]),
  .c_in(C1),
  .c_out(C2),
  .sum(sum[11:8]),
  .C(C[11:8]),
  .P(P[11:8]),
  .G(G[11:8])
);

carry_lookahead_addition_4bit cla16_cla4_3 (
  .A(A[15:12]),
  .B(B[15:12]),
  .c_in(C2),
  .c_out(C3),
  .sum(sum[15:12]),
  .C(C[15:12]),
  .P(P[15:12]),
  .G(G[15:12])
);

carry_lookahead_addition_4bit cla16_cla4_4 (
  .A(A[19:16]),
  .B(B[19:16]),
  .c_in(C3),
  .c_out(C4),
  .sum(sum[19:16]),
  .C(C[19:16]),
  .P(P[19:16]),
  .G(G[19:16])
);

carry_lookahead_addition_4bit cla16_cla4_5 (
  .A(A[23:20]),
  .B(B[23:20]),
  .c_in(C4),
  .c_out(C5),
  .sum(sum[23:20]),
  .C(C[23:20]),
  .P(P[23:20]),
  .G(G[23:20])
);

carry_lookahead_addition_4bit cla16_cla4_6 (
  .A(A[27:24]),
  .B(B[27:24]),
  .c_in(C5),
  .c_out(C6),
  .sum(sum[27:24]),
  .C(C[27:24]),
  .P(P[27:24]),
  .G(G[27:24])
);

carry_lookahead_addition_4bit cla16_cla4_7 (
  .A(A[31:28]),
  .B(B[31:28]),
  .c_in(C6),
  .c_out(c_out),
  .sum(sum[31:28]),
  .C(C[31:28]),
  .P(P[31:28]),
  .G(G[31:28])
);


endmodule