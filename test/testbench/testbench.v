`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg demux_in;
  reg [1:0] demux_signal;
  wire [3:0] demux_out;

    initial begin

		demux_in = 1;		
    demux_signal = 2'b00;
  
        #(`T_CLK *5) demux_in = 1;
                     demux_signal = 2'b01;

        #(`T_CLK *5) demux_in = 1;
                     demux_signal = 2'b10;

        #(`T_CLK *5) demux_in = 0;
                     demux_signal = 2'b11;
		
        #(`T_CLK *5) demux_in = 1;
                     demux_signal = 2'b11;

		#(`T_CLK) $stop;

    end
	
     demultiplexer u_demultiplexer (
    .demux_in(demux_in),
	  .demux_signal(demux_signal),
	  .demux_out(demux_out)
    );
	
endmodule