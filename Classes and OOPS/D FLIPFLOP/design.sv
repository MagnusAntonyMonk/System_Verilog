module D_flipflop (
  input clk,input rst_n,
  input d,
  output reg q
  );
  
  always@(posedge clk or posedge rst_n) begin
    if(!rst_n)begin
      
      q <= 0;
    end
    
    else begin
      
      q <= d;
    end
  end
endmodule
  
