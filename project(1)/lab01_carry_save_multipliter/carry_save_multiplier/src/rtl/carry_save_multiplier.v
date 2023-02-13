module carry_save_multiplier(
    clk,
    n_rst,
    start,
    a,
    b,
    product
);

 input clk;
 input n_rst;
 input start;
 input [3:0] a;
 input [3:0] b;

 //reg [3:0] a;
 //reg [3:0] b;
 
 //input [3:0] a_m;
 //input [3:0] b_m;

 reg [3:0] a_m;
 reg [3:0] b_m;

 output [7:0] product;
 
 reg [7:0] product;

 wire [15:0] m_and; 
 wire [15:0] c;
 wire [15:0] s;
 wire [7:0] M;

always @(posedge clk or negedge n_rst)
  begin
    if(!n_rst) 
    begin
      a_m <= 4'h0;
      b_m <= 4'h0;
      product <= 8'h0;
    end
      
    else 
    begin
      if (start == 1) begin
      a_m <= a;
      b_m <= b;
      end
      product <= M;
    end
  end
 
  assign m_and[0] = a_m[0] & b_m[0];
  assign m_and[1] = a_m[0] & b_m[1];
  assign m_and[2] = a_m[1] & b_m[0];
  assign m_and[3] = a_m[1] & b_m[1];
  assign m_and[4] = a_m[2] & b_m[0];
  assign m_and[5] = a_m[1] & b_m[2];
  assign m_and[6] = a_m[3] & b_m[0];
  assign m_and[7] = a_m[3] & b_m[1];
  assign m_and[8] = a_m[0] & b_m[2];
  assign m_and[9] = a_m[1] & b_m[2];
  assign m_and[10] = a_m[2] & b_m[2];
  assign m_and[11] = a_m[3] & b_m[2];
  assign m_and[12] = a_m[0] & b_m[3];
  assign m_and[13] = a_m[1] & b_m[3];
  assign m_and[14] = a_m[2] & b_m[3];
  assign m_and[15] = a_m[3] & b_m[3];

  assign m_and[0] = M[0];

  half_adder u_half_adder0 (
    .a(m_and[1]),
    .b(m_and[2]),
    .c_out(c[0]),
    .sum(M[1])
  );

  half_adder u_half_adder1 (
    .a(m_and[3]),
    .b(m_and[4]),
    .c_out(c[1]),
    .sum(s[0])
  );

  half_adder u_half_adder2 (
    .a(m_and[5]),
    .b(m_and[6]),
    .c_out(c[2]),
    .sum(s[1])
  );

  half_adder u_half_adder3 (
    .a(m_and[7]),
    .b(c[0]),
    .c_out(c[3]),
    .sum(s[2])
  );

  full_adder u_full_adder4 (
    .a(m_and[8]),
    .b(s[0]),
    .c_out(c[4]),
    .sum(M[2]),
    .c_in(c[0])
  );

  full_adder u_full_adder5 (
    .a(m_and[9]),
    .b(s[2]),
    .c_out(c[5]),
    .sum(s[4]),
    .c_in(c[1])
  );

  full_adder u_full_adder6 (
    .a(m_and[10]),
    .b(s[2]),
    .c_out(c[6]),
    .sum(s[5]),
    .c_in(c[2])
  );

  half_adder u_half_adder7 (
    .a(m_and[11]),
    .b(c[3]),
    .c_out(c[7]),
    .sum(s[6])
  );

  full_adder u_full_adder8 (
    .a(m_and[12]),
    .b(s[4]),
    .c_out(c[9]),
    .sum(M[3]),
    .c_in(c[4])
  );

  full_adder u_full_adder9 (
    .a(m_and[13]),
    .b(s[5]),
    .c_out(c[10]),
    .sum(s[7]),
    .c_in(c[5])
  );

  full_adder u_full_adder10 (
    .a(m_and[14]),
    .b(s[6]),
    .c_out(c[11]),
    .sum(s[8]),
    .c_in(c[6])
  );

  half_adder u_half_adder11 (
    .a(m_and[15]),
    .b(c[7]),
    .c_out(c[8]),
    .sum(s[9])
  );

  half_adder u_half_adder12 (
    .a(c[9]),
    .b(s[7]),
    .c_out(c[12]),
    .sum(M[4])
  );

  full_adder u_full_adder13 (
    .a(c[10]),
    .b(s[8]),
    .c_out(c[13]),
    .sum(M[5]),
    .c_in(c[12])
  );    

  full_adder u_full_adder14 (
    .a(c[11]),
    .b(s[9]),
    .c_out(c[14]),
    .sum(M[6]),
    .c_in(c[13])
  );  

  half_adder u_half_adder15 (
    .a(c[14]),
    .b(c[8]),
    .c_out(c[15]),
    .sum(M[7])
  );  

endmodule