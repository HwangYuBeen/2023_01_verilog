`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg clk;
  reg n_rst;
  wire [2:0] dout0;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
     #200 $stop;
  end

  always #(`T_CLK/2) clk = ~clk;

    binary_down_counter u_binary_down_counter (
    .n_rst(n_rst),
	  .clk(clk),
    .dout0(dout0)
    );
	
endmodule