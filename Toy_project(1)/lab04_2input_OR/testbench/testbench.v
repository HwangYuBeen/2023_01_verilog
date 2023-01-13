`timescale 1ns/1ps

`define T_CLK 10

module testbench();

    reg din0;
	reg din1;
    wire dout0;

    initial begin

        din0 = 0;
		din1 = 0;

		#(`T_CLK *5) din0 = 0;
		#(`T_CLK *5) din1 = 1;

		#(`T_CLK *5) din0 = 1;
		#(`T_CLK *5) din1 = 0;

		#(`T_CLK *5) din0 = 1;
		#(`T_CLK *5) din1 = 1;

		#(`T_CLK) $stop;

    end
	
    OR_gate u_OR_gate (
      .din0(din0),
	  .din1(din1),
      .dout0(dout0)
    );
	
endmodule