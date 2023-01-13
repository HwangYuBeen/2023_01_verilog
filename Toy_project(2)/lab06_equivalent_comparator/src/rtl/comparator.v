module comparator (
    comp_in_A, 
    comp_in_B,
    comp_out
);

  input [1:0] comp_in_A;
  input [1:0] comp_in_B;
  output comp_out;
  reg comp_out;

  always @ (comp_in_A or comp_in_B)
  begin
    if (comp_in_A == comp_in_B)
      comp_out = 1'b1;
    else 
      comp_out = 1'b0;
  end                  

endmodule
