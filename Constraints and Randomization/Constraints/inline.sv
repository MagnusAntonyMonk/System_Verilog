class inline;
  rand bit[4:0]num;
  constraint c1{num inside{[10:12]};}
endclass
module tb;
  inline pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    pkt.randomize with {num==11;};
    $display("number=%0h",pkt.num);
    $display("number=%0d",pkt.num);
  end
endmodule


OUTPUT:


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 31 01:52 2024
number=b
number=11
           V C S   S i m u l a t i o n   R e p o r t 
------------------------------------------------------------------------------------------------------------------------------------
NOTE:
the inline constraint will not override the constraints written inside the class.
------------------------------------------------------------------------------------------------------------------------------------
PROGRAM:

class inline;
  rand bit[4:0]num;
  constraint c1{num inside{[10:15]};}
endclass
module tb;
  inline pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    pkt.randomize with {num==9;};
    $display("number=%0h",pkt.num);
    $display("number=%0d",pkt.num);
  end
endmodule


OUTPUT:
// RESULTS IN ERROR AND GENERATE VALUE WITH THE CONSTRAINT WRITTEN INSIDE THE CLASS.

Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 10
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

number=b 
number=11
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
  
