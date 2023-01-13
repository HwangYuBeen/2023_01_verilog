`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg HA_in_A;
  reg HA_in_B;
  wire HA_out_sum;
  wire HA_out_carry;

    initial begin

		HA_in_A = 0;
    HA_in_B = 0;

    #(`T_CLK *5) HA_in_A = 0;
                 HA_in_B = 1;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 0;

    #(`T_CLK *5) HA_in_A = 1;
                 HA_in_B = 1; 

		#(`T_CLK *5) $stop;

    end
	
    half_adder u_half_adder (
    .HA_in_A(HA_in_A),
    .HA_in_B(HA_in_B),
	  .HA_out_sum(HA_out_sum),
	  .HA_out_carry(HA_out_carry)
    );
	
endmodule