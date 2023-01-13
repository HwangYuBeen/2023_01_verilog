`timescale 1ns/1ps

module NOR_gate (
    din0,
    din1,
    dout0
);

  input din0;
  input din1;
  output dout0;

  assign dout0 = ~(din0 | din1);

endmodule
