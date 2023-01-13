`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg HA_in_A;
  reg HA_in_B;
  reg FA_c_in;
  wire HA_out_sum;
  wire HA_out_carry;
  wire FA_c_out;
  wire FA_out_sum;
  wire FA_out_carry;

    initial begin

		HA_in_A = 0;
    HA_in_B = 0;
    FA_c_in = 0;

    #(`T_CLK *5) HA_in_A = 0;
                 HA_in_B = 0;
                 FA_c_in = 1;

    #(`T_CLK *5) HA_in_A = 0;
                 HA_in_B = 1;
                 FA_c_in = 0;

    #(`T_CLK *5) HA_in_A = 0;
                 HA_in_B = 1;
                 FA_c_in = 1;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 0;
                 FA_c_in = 0;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 0;
                 FA_c_in = 1;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 1;
                 FA_c_in = 0;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 1;
                 FA_c_in = 1;

		#(`T_CLK *5) $stop;

    end
	
    full_adder u_full_adder (
    .HA_in_A(HA_in_A),
    .HA_in_B(HA_in_B),
    .FA_c_in(FA_c_in),
	  .HA_out_sum(HA_out_sum),
	  .HA_out_carry(HA_out_carry),
    .FA_c_out(FA_c_out),
    .FA_out_sum(FA_out_sum),
    .FA_out_carry(FA_out_carry)
    );
	
endmodule