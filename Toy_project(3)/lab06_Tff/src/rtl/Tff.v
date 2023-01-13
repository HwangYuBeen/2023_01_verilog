module Tff (
    T,
    Q,
    //Q_1,
    clk,
    n_rst
);

  input T;
  input clk;
  input n_rst;
  //output Q_1;
  output Q;
  reg Q;
 // reg Q_1;

  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
      Q <= 1'b0;
    end 
    else begin
      if (T == 1'b0)
      Q <= Q;
      else
      Q <= ~Q;
    end
  end
  

  //assign Q_bar = ~Q;

endmodule