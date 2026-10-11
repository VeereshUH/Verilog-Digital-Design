module mux4_1(y,a,b,c,d,s0,s1);
  input a,b,c,d,s0,s1;
  output y;
  wire w1,w2,w3,w4,w5,w6;
  
  not n1(w1,s0);
  not n2(w2,s1);
  
  and a1(w3,w1,w2,a);
  and a2(w4,s0,w2,b);
  and a3(w5,w1,s1,c); 
  and a4(w6,s0,s1,d);
  
  or o1(y,w3,w4,w5,w6);
  
endmodule
