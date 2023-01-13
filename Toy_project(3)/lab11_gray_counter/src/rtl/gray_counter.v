module gray_counter (
    B,
    clk,
    n_rst,
    G,
);

  input clk;
  input n_rst;
  input [2:0] B;
  output [2:0] G;
  reg [2:0] G;
 
  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
        G <= 3'b000;
    end
    else begin
      G[2] <= B[2];
      G[1] <= B[1] ^ B[2];
      G[0] <= B[0] ^ B[1]; 
    end
  end

endmodule

