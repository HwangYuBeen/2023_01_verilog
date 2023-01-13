`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg J;
  reg K;
  reg clk;
  wire Q;


    initial begin

		J = 0;
    K = 0;
    clk = 0;

     #(`T_CLK *5) J = 0;
                  K = 1;
                  clk = 0;  

     #(`T_CLK *5) J = 0;
                  K = 1;
                  clk = 1;  

     #(`T_CLK *5) J = 0;
                  K = 0;
                  clk = 1;

     #(`T_CLK *5) J = 1;
                  K = 0;
                  clk = 1;  


     #(`T_CLK *5) J = 1;
                  K = 1;
                  clk = 1;  


		#(`T_CLK *5) $stop;

    end
	
    JKff u_JKff (
    .J(J),
    .K(K),
	  .clk(clk),
    .Q(Q),
    .Q_bar(Q_bar),
    );
	
endmodule