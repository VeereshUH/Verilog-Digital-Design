module demux1_2(y1,y2,a,s);
  input a,s;
  output y1,y2;
  
  wire w1;
  
  not n1(w1,s);
  and a1(y1,w1,a);
  and a2(y2,s,a);
  
endmodule
