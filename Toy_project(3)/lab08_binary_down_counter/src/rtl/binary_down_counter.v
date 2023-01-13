module binary_down_counter (
    dout0,
    clk,
    n_rst
);

  input clk;
  input n_rst;
  output [2:0] dout0;
  reg [2:0] dout0;
  
  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
      dout0 <= 3'b0;
    end 
    else begin
      dout0 <= dout0 - 3'b1;
    end
  end

endmodule