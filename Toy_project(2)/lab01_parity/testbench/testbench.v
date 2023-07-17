`timescale 1ns/1ps

`define T_CLK 10

module testbench();

    reg [3:0] din0;
	wire even_out;
	wire odd_out;

    initial begin

        din0 = 4'b000;

		#(`T_CLK *5) din0 = 4'b0001;

		#(`T_CLK *5) din0 = 4'b0010;

		#(`T_CLK *5) din0 = 4'b0011;
		
		#(`T_CLK *5) din0 = 4'b0100;

		#(`T_CLK *5) din0 = 4'b0101;

		#(`T_CLK *5) din0 = 4'b0110;

		#(`T_CLK *5) din0 = 4'b0111;

		#(`T_CLK *5) din0 = 4'b1000;

        #(`T_CLK *5) din0 = 4'b1001;

		#(`T_CLK) $stop;

    end
	
    parity u_parity (
      .din0(din0),
	  .even_out(even_out),
	  .odd_out(odd_out)
    );
	
endmodule