module JKff (
    J,
    K,
    Q,
    Q_bar,
    clk,
    n_rst
);

  input J;
  input K;
  input clk;
  input n_rst;
  output Q;
  output Q_bar;
  reg Q;

  always @ (posedge clk or negedge n_rst) 
  begin
    if(n_rst == 1'b0) begin
      Q <= 1'b0;
    end 
    else begin
      if (J == 1'b0 & K == 1'b0)
      Q <= Q;
      else if (J == 1'b0 & K == 1'b1)
      Q <= 1'b0;
      else if (J == 1'b1 & K == 1'b0)
      Q <= 1'b1;
      else
      Q <= Q_bar;
    end
  end

  assign Q_bar = ~Q;

endmodule