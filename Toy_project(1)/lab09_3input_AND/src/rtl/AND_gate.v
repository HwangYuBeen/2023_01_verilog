`timescale 1ns/1ps

module AND_gate (
    din0,
    din1,
    din2,
    dout0
);

  input din0;
  input din1;
  input din2;
  output dout0;

  assign dout0 = (din0 & din1 & din2);

endmodule