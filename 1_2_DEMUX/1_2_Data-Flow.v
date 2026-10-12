module demux1_2(y1,y2,a,s);
  input a,s;
  output y1,y2;
  
  assign y1 = a & (~s);
  assign y2 = a & s;
  
endmodule
