module SRff (
    S,
    R,
    clk,
    n_rst,
    Q,
    Q_bar
);

  input S;
  input R;
  input clk;
  input n_rst;
  output Q;
  output Q_bar;
  reg Q ;

  always @ (posedge clk or negedge n_rst) 
  if (!n_rst)
  begin
    Q = 1'b0;
  end
  else
  begin
    if(S == 1'b0 & R == 1'b0)
     begin
      Q = Q;
    end
    else if(S == 1'b0 & R == 1'b1)
    begin
      Q = 1'b0;
    end
    else if(S == 1'b1 & R == 1'b0) 
    begin 
      Q = 1'b1;
    end
    else if(S == 1'b1 & R == 1'b1)
    begin
      Q = 1'bx;
    end
  end

  assign Q_bar = ~Q;
endmodule