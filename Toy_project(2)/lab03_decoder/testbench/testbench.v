`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [2:0] dec_in;
  wire [7:0] dec_out;

    initial begin

        dec_in = 3'b000;

		#(`T_CLK *5) dec_in = 3'b001;

		#(`T_CLK *5) dec_in = 3'b010;

		#(`T_CLK *5) dec_in = 3'b011;
		
		#(`T_CLK *5) dec_in = 3'b100;

		#(`T_CLK *5) dec_in = 3'b101;

		#(`T_CLK *5) dec_in = 3'b110;

		#(`T_CLK *5) dec_in = 3'b111;

		#(`T_CLK) $stop;

    end
	
    decoder u_decoder (
      .dec_in(dec_in),
	  .dec_out(dec_out)
    );
	
endmodule