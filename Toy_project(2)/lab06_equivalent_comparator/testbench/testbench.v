`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [1:0] comp_in_A;
  reg [1:0] comp_in_B;
  wire comp_out;

    initial begin

		comp_in_A = 2'b00;
		comp_in_B = 2'b00;

    #(`T_CLK *5) comp_in_A = 2'b01;
		             comp_in_B = 2'b10;

    #(`T_CLK *5) comp_in_A = 2'b10;
		             comp_in_B = 2'b10;

    #(`T_CLK *5) comp_in_A = 2'b00;
		             comp_in_B = 2'b01;
		
    #(`T_CLK *5) comp_in_A = 2'b11;
		             comp_in_B = 2'b00;

		#(`T_CLK) $stop;

    end
	
    comparator u_comparator (
    .comp_in_A(comp_in_A),
	  .comp_in_B(comp_in_B),
	  .comp_out(comp_out)
    );
	
endmodule