`timescale 1ns/1ps

`define RED 2'b01
`define BLUE 2'b10
`define NO 2'b00
module coin(
    start,
    clk,
    rst_n,
    coin,
    color
);

     input start;
     input clk;
     input rst_n;
     input coin;

     output [1:0] color;
     reg [1:0] color;


     reg [3:0] c_state;
     reg [3:0] n_state;

     parameter S0=4'h0, // 초기상태
               S1=4'h1,
               S2=4'h2,
               S3=4'h3,
               S4=4'h4,
               S5=4'h5,
               S6=4'h6,
               S7=4'h7,
               S8=4'h8,
               S9=4'h9;



     always @(posedge clk or negedge rst_n)
     begin 
          if(!rst_n)
          begin 
               c_state<=S0;
          
          end
          else
               c_state <= n_state;
     end
     
     
     
     // 단계
     always @(c_state or coin or start)
     begin
          case(c_state)
          S0 : n_state=(start==1'b1)?S1:S0;
          S1 : n_state=(coin==1'b1)?S2:S4;
          S2 : n_state=(coin==1'b1)?S3:S7;
          S3 : n_state=(coin==1'b1)?S0:S6;
          S4 : n_state=(coin==1'b1)?S8:S5;
          S5 : n_state=(coin==1'b1)?S6:S0;
          S6 : n_state=S0;
          S7 : n_state=(coin==1'b1)?S0:S9;
          S8 : n_state=(coin==1'b1)?S9:S0;
          S9 : n_state=S0;
          default: n_state=S0;
          endcase
     end
     


     // 출력 값
     always @ (c_state)
     begin
          case(c_state)
               S6:color=`RED;
               S9:color=`BLUE;
               default color=`NO;
          endcase
     end
endmodule