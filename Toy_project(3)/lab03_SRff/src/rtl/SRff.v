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
/*
  always @ (posedge clk or negedge n_rst)
    if(n_rst == 1'b0) 
    Q<=0;
   else if (S==0 && R==1)
    Q<=0;
   else if (S==1 && R==0)
    Q<=1;
   else
    Q<=0;
*/


  always @ (posedge clk or negedge n_rst) 
  begin
    if(S == 1'b1)
     begin
      Q = 1'b1;
      //Q_bar = 1'b0;
    end
    else if(R == 1'b1)
    begin
      Q = 1'b0;
      //Q_bar =1'b1;
    end
    else if(S == 1'b0 & R == 1'b0) 
    begin 
      Q <= Q;
    //Q_bar <= Q_bar;
    end
  end

  assign Q_bar = ~Q;
endmodule
