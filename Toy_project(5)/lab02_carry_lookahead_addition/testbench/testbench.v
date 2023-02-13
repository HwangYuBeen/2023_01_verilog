`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] C;
  wire [31:0] P;
  wire [31:0] G;
  wire c_out;
  wire [31:0] sum;
  reg c_in;
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

  carry_lookahead_addition_32bit u_carry_lookahead_addition_32bit(
    .A(A),
    .B(B),
    .C(C),
	  .G(G),
    .P(P),
    .sum(sum),
	  .c_out(c_out),
    .c_in(c_in)
    );

	
endmodule