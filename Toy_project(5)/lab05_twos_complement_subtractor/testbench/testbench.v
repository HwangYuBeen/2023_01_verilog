`timescale 1ns/1ps

`define T_CLK 10

module testbench();

 reg [3:0] X;
 reg [3:0] Y;
 reg [3:0] Y_twos1;
 reg [3:0] Y_twos2;
 reg b_in;
 wire b_out;
 wire [3:0] D;
 wire B0, B1, B2;

    initial begin

		X = 4'b1101;
    Y = 4'b0101;
    b_in = 0;

    #(`T_CLK *5) X = 4'b1101;
                 Y = 4'b0101;
                 b_in = 1;

    #(`T_CLK *5) X = 4'b1001;
                 Y = 4'b0001;
                 b_in = 0;

    #(`T_CLK *5) X = 4'b1001;
                 Y = 4'b0001;
                 b_in = 1;

		#(`T_CLK *5) $stop;

    end

  ripple_carry_subtractor_4bit u_ripple_carry_subtractor_4bit(
    .X(X),
    .Y(Y),
    .Y_twos1(Y_twos1),
    .Y_twos2(Y_twos2),
	  .D(D),
	  .b_out(b_out),
    .b_in(b_in)
    );

endmodule
