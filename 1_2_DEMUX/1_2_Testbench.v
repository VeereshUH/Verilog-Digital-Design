module demux1_2_tb();
  reg a,s;
  wire y1,y2;
  
  demux1_2 uut(y1,y2,a,s);
  initial 
    begin 
      a = 1'b0;
      s = 1'b0;#4;
      s = 1'b1;#4;
      
      a=1'b1;
      s=1'b0;#4;
      s=1'b1;#4;
      $finish;
    end
      
      initial 
        $monitor("time=%0t | a=%b s=%b | y1=%b y2=%b",$time ,a ,s ,y1 ,y2);
      endmodule
      
