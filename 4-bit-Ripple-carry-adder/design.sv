module rca(sum,cout,a,b,cin);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  wire c1,c2,c3;
  output cout;
  
  assign sum[0] = a[0]^b[0]^cin;
  assign c1 = a[0]&b[0] | b[0]&cin | a[0]&cin; 
  
  assign sum[1] = a[1]^b[1]^c1;
  assign c2 = a[1]&b[1] | b[1]&c1 | a[1]&c1; 
  
  assign sum[2] = a[2]^b[2]^c2;
  assign c3 = a[2]&b[2] | b[2]&c2 | a[2]&c2; 
  
  assign sum[3] = a[3]^b[3]^c3;
  assign cout = a[3]&b[3] | b[3]&c3 | a[3]&c3; 

endmodule
