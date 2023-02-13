`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] sum;
  wire c_out;
  reg c_in;
  wire haC0;
  wire haC1;
  wire haS0;
  wire C0, C1, C2, C3, C4, C5, C6;

    initial begin

		A = 32'b0000_0000_0000_0000_0000_0000_0111;
    B = 32'b0000_0000_0000_0000_0000_0000_0111;
    c_in = 0;

    #(`T_CLK *5) A = 32'b0000_0000_0000_0000_0000_0000_0111;
                 B = 32'b0000_0000_0000_0000_0000_0000_0111;
                 c_in = 1;

    #(`T_CLK *5) A = 32'b0000_0000_0000_0000_0000_0001_0111;
                 B = 32'b0000_0000_0000_0000_0001_0000_0001;
                 c_in = 1;

    #(`T_CLK *5) A = 32'b0000_0000_0000_0000_0000_0001_0111;
                 B = 32'b0000_0000_0000_0000_0001_0000_0001;
                 c_in = 0;

		#(`T_CLK *5) $stop;

    end
	/*
    full_adder1 u_full_adder1 (
    .A(A),
    .B(B),
	  .sum(sum),
	  .c_out(c_out),
    .c_in(c_in)
    //.S1(S1),
    //.S0(S0),
    //.C1(C1),
    //.C0(C0)
    );

    ripple_carry_adder_4bit u_ripple_carry_adder_4bit(
    .A(A),
    .B(B),
	  .sum(sum),
	  .c_out(c_out),
    .c_in(c_in)
    ); */

  ripple_carry_adder_32bit u_ripple_carry_adder_32bit(
    .A(A),
    .B(B),
	  .sum(sum),
	  .c_out(c_out),
    .c_in(c_in)
    );

	
endmodule