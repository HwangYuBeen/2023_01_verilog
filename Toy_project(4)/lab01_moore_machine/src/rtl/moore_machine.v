module moore_machine (
  clk,
  n_rst,
  c_state,
  n_state,
  din,
  dout
); 

input clk;
input n_rst;
input din;
output dout;
output [1:0] c_state;
output [1:0] n_state;
reg dout;
reg [1:0] c_state;
reg [1:0] n_state;

parameter S_00 = 2'h0;
parameter S_01 = 2'h1;
parameter S_10 = 2'h2;
parameter S_11 = 2'h3;

always @ (posedge clk or negedge n_rst)
 if(!n_rst)
  c_state <= S_00;
 else
  c_state <= n_state;

always @ (c_state or din)
 case (c_state)
  S_00: begin
    n_state = (din == 1'b1)? S_11 : S_01;
    dout = 1'b0;
  end

  S_01: begin
    n_state = (din == 1'b1)? S_11 : S_01;
    dout = 1'b0;
  end

  S_10: begin
    n_state = (din == 1'b1)? S_11 : S_00;
    dout = 1'b1;
  end

  S_11: begin
    n_state = (din == 1'b1)? S_11 : S_00;
    dout = 1'b0;
  end

   default: begin
    n_state = S_00;
    dout = 1'b0;
  end

 endcase

endmodule