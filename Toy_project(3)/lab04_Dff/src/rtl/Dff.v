module Dff (
    D,
    Q,
    Q_bar,
    clk,
    n_rst
);

  input D;
  input clk;
  input n_rst;
  output Q;
  output Q_bar;
  reg Q;
  //reg Q_bar;

  always @ (posedge clk or negedge n_rst) 
  begin
    if(!n_rst) begin
      Q <= 1'b0;
    end 
    else begin
      Q <= D;
    end
  end

  assign Q_bar = ~Q;

endmodule