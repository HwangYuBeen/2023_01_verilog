module full_adder (
   sum, 
   c_out, 
   a, 
   b, 
   c_in
);

output [3:0] sum;   
output c_out;
input [3:0] a;
input [3:0] b;     
input c_in;

assign {c_out,sum} = {1'b0,a} + {1'b0,b}; 

endmodule