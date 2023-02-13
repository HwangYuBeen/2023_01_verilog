`timescale 1ns/1ps

`define T_CLK 10

module testbench();

 reg [31:0] X;
 reg [31:0] Y;
 reg b_in;
 wire b_out;
 wire [31:0] D;
 wire B0, B1, B2, B3, B4, B5, B6;
/*
  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] sum;
  wire c_out;
  reg c_in;
  wire haC0;
  wire haC1;
  wire haS0;
  wire C0, C1, C2, C3, C4, C5, C6;
*/
    initial begin

		X = 32'b0000_0000_0000_0000_0000_0000_0111;
    Y = 32'b0000_0000_0000_0000_0000_0000_0101;
    b_in = 0;

    #(`T_CLK *5) X = 32'b0000_0000_0000_0000_0000_0000_0111;
                 Y = 32'b0000_0000_0000_0000_0000_0000_0101;
                 b_in = 1;

    #(`T_CLK *5) X = 32'b0000_0000_0000_0000_0001_0000_0001;
                 Y = 32'b0000_0000_0000_0000_0000_0001_0111;
                 b_in = 1;

    #(`T_CLK *5) X = 32'b0000_0000_0000_0000_0001_0000_0001;
                 Y = 32'b0000_0000_0000_0000_0000_0001_0111;
                 b_in = 0;

		#(`T_CLK *5) $stop;

    end

  ripple_carry_subtractor_32bit u_ripple_carry_subtractor_32bit(
    .X(X),
    .Y(Y),
	  .D(D),
	  .b_out(b_out),
    .b_in(b_in)
    );

endmodule
