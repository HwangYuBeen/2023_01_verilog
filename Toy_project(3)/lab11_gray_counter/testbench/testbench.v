`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg clk;
  reg n_rst;
  reg [2:0] B;
  wire [2:0] G;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end

  
 initial begin
		B = 3'b000;

    #(`T_CLK *5) B = 3'b001; 

    #(`T_CLK *5) B = 3'b010;

    #(`T_CLK *5) B = 3'b011;

    #(`T_CLK *5) B = 3'b100;

		#(`T_CLK *5) $stop;

    end
	

  always #(`T_CLK/2) clk = ~clk;

    gray_counter u_gray_counter (
    .n_rst(n_rst),
	  .clk(clk),
    .B(B),
    .G(G)
    );
	
endmodule