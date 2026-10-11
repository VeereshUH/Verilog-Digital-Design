module mux2_1(y,a,b,s);
  input a,b,s;
  output reg y;
  
  always @(*) begin
    if (s==0)
      y=a;
    else
      y=b;
  end
  
endmodule
