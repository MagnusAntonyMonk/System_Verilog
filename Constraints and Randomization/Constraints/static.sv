class static_cons;
  rand bit[5:0] a;
  rand bit[5:0] b;
  constraint c1{a inside{[10:20]};}
  static constraint c2{b inside{20,30,40};} //THIS WORK ONLY WHEN SET OF VALUES ARE SPECIFIED NOT FOR RANGE OF VALUES. 
endclass
module tb;
  static_cons pkt1,pkt2;
  initial begin
    pkt1=new();
    pkt2=new();
    pkt1.randomize();
    pkt2.randomize();
    $display("a=%0d,b=%0d",pkt1.a,pkt1.b);
    $display("a=%0d,b=%0d",pkt2.a,pkt2.b);
    pkt2.c2.constraint_mode(0);
    pkt1.randomize();
    pkt2.randomize();
    $display("a=%0d,b=%0d",pkt1.a,pkt1.b);
    $display("a=%0d,b=%0d",pkt2.a,pkt2.b);
  end
endmodule
    

OUTPUT:


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 31 10:34 2024
a=12,b=30
a=10,b=30
a=12,b=15
a=20,b=18
           V C S   S i m u l a t i o n   R e p o r t 
