`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  /*reg [3:0] AC;
  reg [7:0] X;
  wire [7:0] result;
  reg clk;
  reg n_rst;
  wire cnt;*/

  reg [3:0] M;
  reg [3:0] Q;
  reg start;
  wire [7:0] result;

  reg clk;
  reg n_rst;




   initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
     
  end
always #(`T_CLK) clk = ~clk;
    initial begin
    start=1'b0;
		M = 4'b0111;
    Q = 4'b0011;
    #(`T_CLK *5.1)start=1'b1;
    #(`T_CLK *5.1)start=1'b0;
    #(`T_CLK *50)

    #(`T_CLK *5) M = 4'b0110;
                 Q = 4'b0010;
    #(`T_CLK *5.1)start=1'b1;
    #(`T_CLK *5.1)start=1'b0;
    #(`T_CLK *50)
                 //AC = 4'b0000;

		#(`T_CLK *5) $stop;

    end

    	
    booth_algorithm ba(
    .M(M),
    .Q(Q),
    .result(result),
    .clk(clk),
    .n_rst(n_rst),
    .start(start)
);
	
endmodule