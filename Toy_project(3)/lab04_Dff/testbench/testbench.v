`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg D;
  reg clk;
  reg n_rst;
  wire Q;
  //Q_bar;


   initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end
  
  always #(`T_CLK/2) clk = ~clk;


    initial begin

		D = 0;

     #(`T_CLK *5) D = 1;   

    #(`T_CLK *5) D = 0;

    #(`T_CLK *5) D = 1;

		#(`T_CLK *5) $stop;

    end
	
    Dff u_Dff (
    .D(D),
    .n_rst(n_rst),
	  .clk(clk),
    .Q(Q),
    .Q_bar(Q_bar)
    );
	
endmodule