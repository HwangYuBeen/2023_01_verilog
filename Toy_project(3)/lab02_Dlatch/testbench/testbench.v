`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg D;
  wire Q;
  wire Q_bar;

    initial begin

		D = 0;

    #(`T_CLK *5) D = 1;

    #(`T_CLK *5) D = 0;
    
    #(`T_CLK *5) D = 1;

		#(`T_CLK *5) $stop;

    end
	
    Dlatch u_Dlatch (
    .D(D),
	  .Q(Q),
	  .Q_bar(Q_bar)
    );
	
endmodule