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

    D = 8'b0000_0000;
		#(`T_CLK *3) D = 8'b0010_1100;

    #(`T_CLK *3) D = 8'b0010_0000;

    #(`T_CLK *3) D = 8'b0001_0000;

    #(`T_CLK *3) D = 8'b0000_1000;

    #(`T_CLK *3) D = 8'b0000_0100;

		#(`T_CLK *3) $stop;
    

    end
	

  always #(`T_CLK/2) clk = ~clk;

    shift_register u_shift_register (
    .n_rst(n_rst),
	  .clk(clk),
    .D(D),
    .Q_right(Q_right),
    .Q_left(Q_left)
    );
	
endmodule