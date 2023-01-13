module encoder (
    enc_in, 
    enc_out 
);

  input [7:0] enc_in;
  output [2:0] enc_out;
  //output [2:0] enc_out_B;
  //output [2:0] enc_out_C;
  //reg [2:0] enc_out;
  //reg [2:0] enc_out_B;
  //reg [2:0] enc_out_C;

  assign enc_out[0] = (enc_in[4] || enc_in[5] || enc_in[6] || enc_in[7]);
  assign enc_out[1] = (enc_in[2] || enc_in[3] || enc_in[6] || enc_in[7]);
  assign enc_out[2] = (enc_in[1] || enc_in[3] || enc_in[5] || enc_in[7]);

endmodule
