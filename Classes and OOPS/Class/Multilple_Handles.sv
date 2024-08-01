class transaction;

  bit[31:0]data;
endclass
  
  module class_example;
    transaction tr1,tr2;
    
    initial begin
    tr1=new();
    tr1.data=15;
    tr2=tr1;
      $display("value of tr1=%0h",tr1.data);
      $display("value of tr2=%0h",tr2.data);
    
    tr2.data=10;
      $display("value of tr1=%0h",tr1.data);
      $display("value of tr2=%0h",tr2.data);
    end
    
  endmodule 

OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 03:51 2024
value of tr1=f
value of tr2=f
value of tr1=a
value of tr2=a
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Thu Aug  1 03:51:30 2024

    
