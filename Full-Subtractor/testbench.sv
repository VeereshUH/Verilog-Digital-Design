module fs_tb();
  reg a,b,bin;
  wire diff,borrow;
  
  fs f1(.diff(diff), .borrow(borrow), .a(a), .b(b), .bin(bin));
        integer i;
        
        initial 
          begin
//             testing all posibilities at ones using for loop
            for(i=0; i<8; i=i+1)begin
              {a,b,bin}=i;
              #2;
            end
            $finish;
          end
  initial
    $monitor("time=%0t | a=%b b=%b bin=%b | diff=%b borrow=%b ", $time, a, b, bin, diff, borrow);
        endmodule
        
            
