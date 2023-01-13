module meely_machine (
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

parameter S_0 = 2'h0;
parameter S_1 = 2'h1;
parameter S_2 = 2'h2;
parameter S_3 = 2'h3;
parameter S_4 = 2'h4;

always @ (posedge clk or negedge n_rst)
 if(!n_rst)
  c_state <= S_0;
 else
  c_state <= n_state;

always @ (c_state or din)
 case (c_state)
  S_0: begin
    n_state = (din == 1'b1)? S_3 : S_1;
    dout = 1'b0;
  end

  S_1: begin
    n_state = (din == 1'b1)? S_2 : S_4;
    dout = 1'b0;
  end

  S_2: begin
    n_state = (din == 1'b1)? S_0 : S_0;
    dout = (din == 1'b1)? 1'b1 : 1'b0;
  end

  S_3: begin
    n_state = (din == 1'b1)? S_4 : S_4;
    dout = 1'b0;
  end

  S_4: begin
    n_state = (din == 1'b1)? S_0 : S_0;
    dout = 1'b0;
  end

   default: begin
    n_state = S_0;
    dout = 1'b0;
  end

 endcase

endmodule