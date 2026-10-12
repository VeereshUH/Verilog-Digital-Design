module demux1_2(y2,y1,a,s);
  input a,s;
  output reg y2,y1;
  
  always @(*) begin
    if(s==1'b0)begin
      y1=a;
      y2=1'b0;
    end
    else begin
      y1=1'b0;
      y2=a;
    end
  end
endmodule
