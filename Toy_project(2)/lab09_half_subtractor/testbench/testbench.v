`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg HS_in_A;
  reg HS_in_B;
  wire HS_out_dif;
  wire HS_out_bor;

    initial begin

		HS_in_A = 0;
    HS_in_B = 0;

    #(`T_CLK *5) HS_in_A = 0;
                 HS_in_B = 1;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 0;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 1; 

		#(`T_CLK *5) $stop;

    end
	
    half_subtractor u_half_subtractor (
    .HS_in_A(HS_in_A),
    .HS_in_B(HS_in_B),
	  .HS_out_dif(HS_out_dif),
	  .HS_out_bor(HS_out_bor)
    );
	
endmodule