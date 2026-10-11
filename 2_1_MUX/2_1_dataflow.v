module mux2_1(y,a,b,s);
  input a,b,s; // inputs ans select line 
  output y; 
  
  //ternary operator
  assign y = s?b:a;
  
endmodule
