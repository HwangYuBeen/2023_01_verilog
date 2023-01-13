`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg HS_in_A;
  reg HS_in_B;
  reg FS_c_in;
  wire HS_out_dif;
  wire HS_out_bor;
  wire FS_c_out;
  wire FS_out_dif;
  wire FS_out_bor;

    initial begin

		HS_in_A = 0;
    HS_in_B = 0;
    FS_c_in = 0;

    #(`T_CLK *5) HS_in_A = 0;
                 HS_in_B = 0;
                 FS_c_in = 1;

    #(`T_CLK *5) HS_in_A = 0;
                 HS_in_B = 1;
                 FS_c_in = 0;

    #(`T_CLK *5) HS_in_A = 0;
                 HS_in_B = 1;
                 FS_c_in = 1;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 0;
                 FS_c_in = 0;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 0;
                 FS_c_in = 1;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 1;
                 FS_c_in = 0;

    #(`T_CLK *5) HS_in_A = 1;
                 HS_in_B = 1;
                 FS_c_in = 1;

		#(`T_CLK *5) $stop;

    end
	
    full_subtractor u_full_subtractor (
    .HS_in_A(HS_in_A),
    .HS_in_B(HS_in_B),
    .FS_c_in(FS_c_in),
	  .HS_out_dif(HS_out_dif),
	  .HS_out_bor(HS_out_bor),
    .FS_c_out(FS_c_out),
    .FS_out_dif(FS_out_dif),
    .FS_out_bor(FS_out_bor)
    );
	
endmodule