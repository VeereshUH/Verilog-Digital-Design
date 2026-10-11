module mux4_1(y,a,b,c,d,s);
  input a,b,c,d;
  input [1:0] s;
  output y;
  
  assign y =(s == 2'b00)?a:(s == 2'b01)?b:(s == 2'b10)?c:d;
endmodule
  
