module shift_register (
    D,
    Q_right,
    Q_left,
    clk,
    n_rst
);

  input clk;
  input n_rst;
  input [7:0] D;
  output [7:0] Q_right;
  output [7:0] Q_left;
  reg [7:0] Q_right;
  reg [7:0] Q_left;
 
  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
         Q_right <= 0;
        end
      else
        begin
         Q_right <= D >> 1;
        end
  end

  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst) begin
         Q_left <= 0;
        end
      else
        begin
         Q_left <= D << 1;
        end
  end

endmodule