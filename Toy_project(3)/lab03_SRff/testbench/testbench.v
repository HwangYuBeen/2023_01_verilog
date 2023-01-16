`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg S;
  reg R;
  reg clk;
  reg n_rst;
  wire Q;
  wire Q_bar;

   initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end
  
  always #(`T_CLK/2) clk = ~clk;

    initial begin

		S = 0;
    R = 0;
    clk = 0;

    #(`T_CLK *5) S = 0;
                 R = 1;
                 //clk = 0;

    #(`T_CLK *5) S = 1;
                 R = 0;
                 //clk = 0;

    #(`T_CLK *5) S = 1;
                 R = 1; 
                 //clk = 0;

    #(`T_CLK *5) S = 0;
                 R = 1;
                 //clk = 1;

    #(`T_CLK *5) S = 1;
                 R = 0;
                clk = 1;

    #(`T_CLK *5) S = 1;
                 R = 1; 
                 //clk = 1;


		#(`T_CLK *5) $stop;

    end
	
    SRff u_SRff (
    .S(S),
    .R(R),
    .clk(clk),
    .n_rst(n_rst),
	  .Q(Q),
	  .Q_bar(Q_bar)
    );
	
endmodule