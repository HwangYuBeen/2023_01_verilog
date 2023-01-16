module parity (
    din0,
    //din0[1],
    //din0[2],
    //din0[3],
    even_out, // 짝 
    odd_out, // 홀 XOR 홀수 true
);

  input [3:0] din0;
  //input [3:0] din0[1];
  //input [3:0] din0[2];
  //input [3:0] din0[3];
  output even_out;
  output odd_out;

assign even_out = (din0[0] ^ din0[1] ^ din0[2] ^ din0[3]);
assign odd_out = ~(din0[0] ^ din0[1] ^ din0[2] ^ din0[3]);

endmodule