module mux4_1_tb;
  reg a,b,c,d,s0,s1;
  wire y;

  mux4_1 uut(y,a,b,c,d,s0,s1);

  initial 
    begin
    a=1; b=0; c=1; d=0;

    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;

    $finish;
  end

  initial begin
    $monitor("s1=%b s0=%b | a=%b b=%b c=%b d=%b | y=%b",
              s1,s0,a,b,c,d,y);
  end
endmodule
