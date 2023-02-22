module booth_algorithm (
    M,
    Q,
    result,
    clk,
    n_rst,
    start
);

  input [3:0] M;
  input [3:0] Q;
  input start;
  reg [8:0] total;
  output [7:0] result;
  input clk;
  input n_rst;

  wire [8:0] oper;

  reg [2:0] cnt;

  wire edge_start;
  reg d1 ,d2;

  always @(posedge  clk or negedge n_rst)
  begin
    if(!n_rst)
    begin
      d1<=0;
      d2<=0;
    end
    else
    begin
      d1<=start;
      d2<=d1;
    end
    
  end

  assign edge_start= (d1!=1'b0 && d2==1'b0)?1'd1:0;

  always @ (posedge clk or negedge n_rst)
  begin 
    if (!n_rst)
      cnt <= 3'h4-5;
    else
      begin
        if (edge_start == 1'b1)
          cnt <= cnt - 3'h1;
        else if (cnt < 5 && cnt > 0)
        begin
          cnt <= cnt - 3'h1;
        end
        else
        begin
          cnt <= 3'h5;
        end
      end
  end

  assign oper = (total[1:0] == 2'b10)?{total[8:5]+(~M+1'b1),total[4:0]}:
                (total[1:0] == 2'b01)?{total[8:5]+M,total[4:0]}:
                                     total;

  always @ (posedge clk or negedge n_rst) 
  begin
    if (!n_rst)
      total <= 9'h0;
    else begin 
      if (cnt ==3'd5 && edge_start == 1)
      begin
        total <= {4'b0000, Q, 1'b0};
      end
    else if  (cnt < 5 && cnt > 0)
      begin
        if (oper[8] == 1'b1)
        begin
          total <= {1'b1, oper[8:1]};
        end
        else
        begin
          total <= {1'b0, oper[8:1]};
        end
      end
    end
  end

assign result = (cnt == 0)?total[8:1]:0;

endmodule