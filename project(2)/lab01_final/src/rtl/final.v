module final (
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

