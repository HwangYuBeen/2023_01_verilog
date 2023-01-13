module half_subtractor (
    HS_in_A,
    HS_in_B,
    HS_out_dif,
    HS_out_bor
);

  input HS_in_A;
  input HS_in_B;
  output HS_out_dif;
  output HS_out_bor;
  //reg HS_out_sum;
  //reg HS_out_carry;

  assign HS_out_bor = ~HS_in_A & HS_in_B;
  assign HS_out_dif = HS_in_A ^ HS_in_B;

endmodule
