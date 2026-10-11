module mux2_1(y,a,b,s);
  input a,b,s;
  output y;
  wire w1,w2,w3;
  
  not n1(w1,s);
  
  and a1(w2,w1,a);
  and a2(w3,s,b);
  
  or o1(y,w2,w3);
  
endmodule
