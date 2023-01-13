`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg S;
  reg R;
  wire Q;
  wire Q_bar;

    initial begin

		S = 0;
    R = 0;

    #(`T_CLK *5) S = 0;
                 R = 1;

    #(`T_CLK *5) S = 1;
                 R = 0;

    #(`T_CLK *5) S = 1;
                 R = 1; 

		#(`T_CLK *5) $stop;

    end
	
    SRlatch u_SRlatch (
    .S(S),
    .R(R),
	  .Q(Q),
	  .Q_bar(Q_bar)
    );
	
endmodule