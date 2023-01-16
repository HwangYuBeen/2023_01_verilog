`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg J;
  reg K;
  reg clk;
  reg n_rst;
  wire Q;

     initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end
  
  always #(`T_CLK/2) clk = ~clk;


    initial begin

		J = 0;
    K = 0;
    clk = 0;

     #(`T_CLK *5) J = 0;
                  K = 1;

     #(`T_CLK *5) J = 0;
                  K = 1;

     #(`T_CLK *5) J = 0;
                  K = 0;

     #(`T_CLK *5) J = 1;
                  K = 0;

     #(`T_CLK *5) J = 1;
                  K = 1;

		#(`T_CLK *5) $stop;

    end
	
    JKff u_JKff (
    .J(J),
    .K(K),
	  .clk(clk),
    .n_rst(n_rst),
    .Q(Q),
    .Q_bar(Q_bar)
    );
	
endmodule