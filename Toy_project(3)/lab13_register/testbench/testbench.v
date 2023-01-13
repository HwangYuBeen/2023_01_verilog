`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg clk;
  reg n_rst;
  reg [7:0] D;
  wire [7:0] Q;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end

  
 initial begin

    D = 4'b0000;

		#(`T_CLK *3) D = 4'b1000;

    #(`T_CLK *3) D = 4'b0100;

    #(`T_CLK *3) D = 4'b0010;

    #(`T_CLK *3) D = 4'b0001;

		#(`T_CLK *3) $stop;
    

    end
	

  always #(`T_CLK/2) clk = ~clk;

    register u_register (
    .n_rst(n_rst),
	  .clk(clk),
    .D(D),
    .Q(Q)
    );
	
endmodule