module full_adder (
    HA_in_A,
    HA_in_B,
    HA_out_sum,
    HA_out_carry,
    FA_c_in,
    FA_c_out,
    FA_out_sum,
    FA_out_carry
);

  input HA_in_A;
  input HA_in_B;
  input FA_c_in;
  output HA_out_sum;
  output HA_out_carry;
  output FA_c_out;
  output FA_out_sum;
  output FA_out_carry;

  assign HA_out_carry = HA_in_A & HA_in_B;
  assign HA_out_sum = HA_in_A ^ HA_in_B;

  assign FA_c_out = HA_out_sum & FA_c_in;
  assign FA_out_carry = HA_out_carry | FA_c_out;
  assign FA_out_sum = HA_out_sum ^ FA_c_in;

endmodule
