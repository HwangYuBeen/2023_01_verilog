module full_subtractor (
    HS_in_A,
    HS_in_B,
    HS_out_dif,
    HS_out_bor,
    FS_c_in,
    FS_c_out,
    FS_out_dif,
    FS_out_bor
);

  input HS_in_A;
  input HS_in_B;
  input FS_c_in;
  output HS_out_dif;
  output HS_out_bor;
  output FS_c_out;
  output FS_out_dif;
  output FS_out_bor;


  assign HS_out_bor = ~HS_in_A & HS_in_B;
  assign HS_out_dif = HS_in_A ^ HS_in_B;

  assign FS_c_out = ~HS_out_dif & FS_c_in;
  assign FS_out_bor = FS_c_out | HS_out_bor;
  assign FS_out_dif = HS_out_dif ^ FS_c_in;

endmodule
