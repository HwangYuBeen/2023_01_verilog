module half_adder (
    HA_in_A,
    HA_in_B,
    HA_out_sum,
    HA_out_carry
);

  input HA_in_A;
  input HA_in_B;
  output HA_out_sum;
  output HA_out_carry;
  //reg HA_out_sum;
  //reg HA_out_carry;

  assign HA_out_carry = HA_in_A & HA_in_B;
  assign HA_out_sum = HA_in_A ^ HA_in_B;

endmodule
