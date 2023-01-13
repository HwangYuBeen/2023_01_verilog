`timescale 1ns/1ps

`define T_CLK 10

module testbench();

reg clk;
reg n_rst;
reg din;
wire dout;
wire [1:0] c_state;
wire  [1:0] n_state;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
    // #200 $stop;
  end

  
 initial begin

    din = 1'b0;

		#(`T_CLK *3) din = 1'b1;

    #(`T_CLK *3) din = 1'b0;

		#(`T_CLK *3) din = 1'b1;

    #(`T_CLK *3) din = 1'b0;
    
    #(`T_CLK *3) din = 1'b1;

    #(`T_CLK *3) din = 1'b0;

		#(`T_CLK *3) $stop;
    

    end
	

  always #(`T_CLK/2) clk = ~clk;

    moore_machine u_moore_machine (
    .n_rst(n_rst),
	  .clk(clk),
    .din(din),
    .dout(dout),
    .c_state(c_state),
    .n_state(n_state)
    );
	
endmodule