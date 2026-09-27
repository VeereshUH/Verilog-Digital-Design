module hs_tb();
  reg a,b;
  wire diff,bo;
  
  hs h1(.a(a), .b(b), .diff(diff), .bo(bo));
  initial
    begin
      a=0; b=0; 
      #2 a=0; b=1;
      #2 a=1; b =0; 
      #2 a=1; b=1;
      #4 $finish;
    end
  
  initial
    $monitor("Time=%0t | a=%b b=%b  | Diff=%b Borrow=%b",$time, a, b, diff, bo);
endmodule
