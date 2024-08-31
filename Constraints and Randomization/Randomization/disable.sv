class disable_rand;
  rand bit[5:0] value1;
  rand bit[5:0] value2;
  
  constraint c1{value1 inside{[10:20]};}
  constraint c2{value2 inside{[20:30]};}
endclass

module tb;
  disable_rand pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    $display("before rand and constraint mode turned off");
    $display("value1=%0d,value2=%0d",pkt.value1,pkt.value2);
    
    $display("");
    $display("");
    
    pkt.rand_mode(0);
    pkt.constraint_mode(0);
    pkt.randomize();
    $display("after rand and constraint mode turned off");
    $display("value1=%0d,value2=%0d",pkt.value1,pkt.value2);
    
    $display("");
    $display("");
    pkt.value1.rand_mode(1);
    pkt.value2.rand_mode(0);
    pkt.randomize();
    $display("after rand for value2 mode turned off");
    $display("value1=%0d,value2=%0d",pkt.value1,pkt.value2);
  end
endmodule

OUTPUT:

# Loading work.design_sv_unit(fast)
# Loading work.tb(fast)
# 
# run -all
# before rand and constraint mode turned off
# value1=20,value2=30
# 
# 
# after rand and constraint mode turned off
# value1=20,value2=30
# 
# 
# after rand for value2 mode turned off
# value1=42,value2=30
# exit
# End time: 15:07:17 on Aug 31,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
  
