module Dlatch (
    D,
    Q,
    Q_bar
);

  input D;
  output Q;
  output Q_bar;

  assign Q = D;
  assign Q_bar = ~Q; 

endmodule
