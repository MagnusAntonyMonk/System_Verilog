class soft_constraint;
  rand bit[5:0] addr;
  constraint c1{soft addr inside{[10:14]};}
endclass
module tb;
  soft_constraint pkt;
  initial begin
    pkt=new();
    repeat(3) begin
      pkt.randomize();
      pkt.randomize with {addr inside{[20:30]};};
      $display("addr=%0d",pkt.addr);
    end
  end
endmodule

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
NOTE:
The first randomize() call uses the soft constraint.
The second randomize with overrides the soft constraint and forces addr to be within the range [20:30].
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 31 10:11 2024
addr=23
addr=21
addr=23
           V C S   S i m u l a t i o n   R e p o r t 
