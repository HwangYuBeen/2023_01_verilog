`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg clk;
  reg n_rst;
  wire [2:0] Q;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
     #200 $stop;
  end

  always #(`T_CLK/2) clk = ~clk;

    ring_counter u_ring_counter (
    .n_rst(n_rst),
	  .clk(clk),
    .Q(Q)
    );
	
endmodule