module ring_counter (
    Q,
    clk,
    n_rst
);

  input clk;
  input n_rst;
  output [2:0] Q;
  reg [2:0] Q;
 
  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
        Q = 3'b100;
    end
      else
        begin
          Q[2] <= Q[0];
          Q[1] <= Q[2];
          Q[0] <= Q[1];
        end
  end
endmodule