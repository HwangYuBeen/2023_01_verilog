`timescale 1ns/1ps

module XOR_gate (
    din0,
    din1,
    dout0
);

  input din0;
  input din1;
  output dout0;

/*
  always @(din0 or din1) begin
  begin
  if (din0 == din1)
    dout0 = 2'b0;
  end
  else begin
    dout0 = 2'b1;
  end
end
*/

assign dout0 = din0 ^ din1;
endmodule