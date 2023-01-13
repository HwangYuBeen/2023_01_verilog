`timescale 1ns/1ps

`define T_CLK 10
module testbench;

    reg start;
    reg clk;
    reg rst_n;
    reg coin;

    wire [1:0] color;
    
	initial begin
		clk=1'b0; rst_n=1'b0;
		#(`T_CLK*2.1)rst_n=1'b1;
	end

	always #(`T_CLK/2) clk=~clk;
	


	initial
    begin
        start = 1'b0; coin=1'b0;
        #(`T_CLK*3.1) start = 1'b1;
        #(`T_CLK)  start = 1'b0;
		// coin 0 0 0
		// color 00
		#(`T_CLK*5)start = 1'b1;
		#(`T_CLK)  start = 1'b0;
		
		// coin 0 0 1
		// color 01
		#(`T_CLK*2) coin=1'b1;
		#(`T_CLK) coin=1'b0;

		// coin 0 1 0
		// color 00
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0;
		#(`T_CLK)  coin = 1'b1;
		#(`T_CLK)  coin = 1'b0;


		// coin 0 1 1
		// color 10
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0;
		#(`T_CLK)  coin = 1'b1;
		#(`T_CLK*2)  coin = 1'b0;

		// coin 1 0 0
		// color 10
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0; coin=1'b1;
		#(`T_CLK)  coin = 1'b0;

		// coin 1 0 1
		// color 00
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0;coin=1'b1;
		#(`T_CLK)  coin = 1'b0;
		#(`T_CLK)  coin = 1'b1;
		#(`T_CLK)  coin = 1'b0;


		// coin 1 1 0
		// color 01
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0; coin = 1'b1;
		#(`T_CLK*2)  coin = 1'b0;

		// coin 1 1 1
		// color 00
		#(`T_CLK*2)start = 1'b1;
		#(`T_CLK)  start = 1'b0; coin = 1'b1;
		#(`T_CLK*3)  coin = 1'b0;


		#(`T_CLK*4) $stop;
    end
	
	coin cc(
    .start(start),
    .clk(clk),
    .rst_n(rst_n),
    .coin(coin),
    .color(color)
	);
endmodule
