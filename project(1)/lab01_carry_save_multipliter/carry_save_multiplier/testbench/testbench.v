`timescale 1ns/1ps
`define T_CLK 10
module testbench;
  reg clk;
  reg n_rst;
  reg start;
  reg [3:0]a;
  reg [3:0]b;
  wire [7:0]product;
  reg [15:0] m_and; 
  reg [15:0] c;
  reg [15:0] s;
  reg [7:0] M;

  //wire [7:0]c_product;
  
carry_save_multiplier u_carry_save_multiplier (
  .clk(clk),
  .n_rst(n_rst),
  .start(start),
  .a(a),//4-bit Multipier
  .b(b), //4-bit Multiplicand
  .product(product),
  .M(M), //8-bit product
  .c(c),
  .s(s)
  );
  
   initial begin
     clk = 1'b1;
     n_rst = 1'b0;

     #(`T_CLK* 2.2) n_rst = 1'b1; //
  end

  always #(`T_CLK/2) clk = ~clk;
  
  initial begin
    start=1'b0;
    a=4'h0;
    b=4'h0;
    wait(n_rst==1'b1);
    
    //3*9
    #(`T_CLK * 5) a=4'h3;
                   b=4'h9;
    #(`T_CLK * 1) start = 1'b1;
                  
     #(`T_CLK * 1) start = 1'b0;
     
     
     //2*3
     #(`T_CLK * 5) a=4'h2;
                   b=4'h3;
     #(`T_CLK * 1) start = 1'b1;
     #(`T_CLK * 1) start = 1'b0;
     
     //1*2
     #(`T_CLK * 5) a=4'h1;
                   b=4'h2;
     #(`T_CLK * 1) start = 1'b1;
     #(`T_CLK * 1) start = 1'b0;
     
         //8*7
     #(`T_CLK * 5) a=4'h8;
                   b=4'h7;
     #(`T_CLK * 1) start = 1'b1;
     #(`T_CLK * 1) start = 1'b0;
     
     
    #(`T_CLK * 5) $stop;
  end
endmodule
  