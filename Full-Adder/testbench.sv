module fa_tb();
  reg a,b,cin;
  wire s,c;
  
  fa f1(.a(a),.b(b),.cin(cin),.s(s),.c(c));
  initial
    begin
      a=0; b=0; cin=0;
      #2 a=0; b =0; cin=1;
      #2 a=0; b=1; cin =0;
      #2 a=0; b=1; cin=1;
      #2 a=1; b =0; cin=0;
      #2 a=1; b=0; cin =1;
      #2 a=1; b=1; cin=0;
      #2 a=1; b=1; cin=1;
      #4 $finish;
    end
  
  initial
    $monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b carry=%b",$time,a,b,cin,s,c);
endmodule
