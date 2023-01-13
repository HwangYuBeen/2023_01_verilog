`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [7:0] enc_in;
  wire [2:0] enc_out;

    initial begin

        enc_in = 8'b1000_0000;

		#(`T_CLK *5) enc_in = 8'b0100_0000;

		#(`T_CLK *5) enc_in = 8'b0010_0000;

		#(`T_CLK *5) enc_in = 8'b0001_0000;
		
		#(`T_CLK *5) enc_in = 8'b0000_1000;

		#(`T_CLK *5) enc_in = 8'b0000_0100;

		#(`T_CLK *5) enc_in = 8'b0000_0010;

		#(`T_CLK *5) enc_in = 8'b0000_0001;

		#(`T_CLK) $stop;

    end
	
    encoder u_encoder (
      .enc_in(enc_in),
	  .enc_out(enc_out)
    );
	
endmodule