module register (
    D,
    Q,
    clk,
    n_rst
);

  input clk;
  input n_rst;
  input [3:0] D;
  output [3:0] Q;
  reg [3:0] Q;
 
  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
         Q <= 4'b0000;
        end
      else
        begin
         Q[3] <= D[2];
         Q[2] <= D[1];
         Q[1] <= D[0];
         Q[0] <= 0;
        end
  end

endmodule