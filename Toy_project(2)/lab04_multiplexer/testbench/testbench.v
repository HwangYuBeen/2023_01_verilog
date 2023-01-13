`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg [3:0] mux_in;
  reg [1:0] mux_signal;
  wire mux_out;

    initial begin

		mux_signal = 2'b00;
		mux_in = 4'b0001;

        #(`T_CLK *3) mux_signal = 2'b10;
		             mux_in = 4'b1000;		

        #(`T_CLK *3) mux_signal = 2'b01;
					 mux_in = 4'b0010;


        #(`T_CLK *3) mux_signal = 2'b10;
		             mux_in = 4'b1010;
		
        #(`T_CLK *3) mux_signal = 2'b11;
		             mux_in = 4'b0100;

		#(`T_CLK) $stop;

    end
	
     multiplexer u_multiplexer (
    .mux_in(mux_in),
	  .mux_signal(mux_signal),
	  .mux_out(mux_out)
    );
	
endmodule