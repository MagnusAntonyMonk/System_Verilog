module cpkt;
  bit[3:0]a;
  bit[3:0]b;
  covergroup cpkt;
    c1:coverpoint a;
    c2:coverpoint b;
  endgroup
  cpkt cg =new();
  
  initial begin
    repeat(10)begin
      a=$random();
      b=$random();
      cg.sample();
      $display("a=%d ; b=%d ; coverage %%= %.2f",a,b,cg.get_inst_coverage());
    end
    $display("overall functional coverage%% = %.2f",cg.get_coverage());
  end
endmodule
    

OUTPUT:

# Loading sv_std.std
# Loading work.cpkt(fast)
# 
# run -all
# a= 4 ; b= 1 ; coverage %= 6.25
# a= 9 ; b= 3 ; coverage %= 12.50
# a=13 ; b=13 ; coverage %= 18.75
# a= 5 ; b= 2 ; coverage %= 25.00
# a= 1 ; b=13 ; coverage %= 28.12
# a= 6 ; b=13 ; coverage %= 31.25
# a=13 ; b=12 ; coverage %= 34.38
# a= 9 ; b= 6 ; coverage %= 37.50
# a= 5 ; b=10 ; coverage %= 40.62
# a= 5 ; b= 7 ; coverage %= 43.75
# overall functional coverage% = 43.75
# exit
