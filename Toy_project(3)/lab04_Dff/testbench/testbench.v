`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg D;
  reg clk;
  wire Q;
  //Q_bar;

    initial begin

		D = 0;
    clk = 0;

     #(`T_CLK *5) D = 0;
                 clk = 1;   

    #(`T_CLK *5) D = 1;
                 clk = 0;

    #(`T_CLK *5) D = 1;
                 clk = 1;

		#(`T_CLK *5) $stop;

    end
	
    Dff u_Dff (
    .D(D),
	  .clk(clk),
    .Q(Q),
    .Q_bar(Q_bar)
    );
	
endmodule