module ha_tb();
  reg a,b;
  wire s,c;
  ha h1(.a(a),.b(b),.s(s),.c(c));
  initial
    begin
      a=0; b=0;
      #2 a=0; b =1;
      #2 a=1; b=0;
      #2 a=1; b=1;
      #4 $finish;
    end
  initial
    $monitor("Time=%0t | a=%b b=%b | sum=%b carry=%b",$time,a,b,s,c);
endmodule
