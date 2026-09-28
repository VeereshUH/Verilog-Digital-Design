module fs(diff,borrow,a,b,bin);
  input a,b,bin;
  output diff,borrow;
  
//   Difference equation
  assign diff = a^b^bin;
  
//   Borrow equation
  assign borrow = ((~a)&b)|(b&bin)|((~a)&bin);
endmodule
