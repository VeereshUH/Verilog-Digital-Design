module mux2_1_tb();
  reg a,b,s;
  wire y;
  
  mux2_1 uut(y,a,b,s);
  initial 
    begin
      a=0;
      b=1;
      
      s=0;#4;
      s=1;#4;
      
      $finish;
      
    end
  initial 
    $monitor("time=%0t | a=%b b=%b s=%b | output=%b", $time ,a ,b ,s ,y);
endmodule
