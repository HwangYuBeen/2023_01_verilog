`timescale 1ns/1ps

`define T_CLK 10

module testbench();

  reg T;
  reg clk;
  reg n_rst;
  wire Q;
  //wire Q_1;
  //Q_bar;

 initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; 
  end

  always #(`T_CLK/2) clk = ~clk;

 initial begin
		T = 1'b0;
    //Q = 1'b0;
    //clk = 1'b0;

    #(`T_CLK *5.1) T = 1'b1;
      //           Q = 1'b0;
                // clk = 1'b0;   

    #(`T_CLK *5.1) T = 1'b0;
        //         Q = 1'b1;
               //  clk = 1'b1;

    #(`T_CLK *5.1) T = 1'b1;
          //       Q = 1'b1;
               //  clk = 1'b1;

		#(`T_CLK *5.1) $stop;

    end
	
    Tff u_Tff (
    .T(T),
    .n_rst(n_rst),
	  .clk(clk),
    .Q(Q)
   // .Q_1(Q_1)
    );
	
endmodule