module half_adder(
    sum,
    c_out,
    c_in,
    a,
    b
    );
   
output sum;
output c_out;
input a;
input b;
input c_in;

assign {c_out, sum} = a + b;

endmodule