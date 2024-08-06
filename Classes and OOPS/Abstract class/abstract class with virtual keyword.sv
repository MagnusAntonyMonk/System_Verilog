virtual class parent_class;
  bit[31:0]data;
  virtual function void display();
    $display("parent class data=%0d",data);
  endfunction
endclass
class child_class extends parent_class;
 function void display();
   $display("child class data=%0d",data);
  endfunction
endclass
module virtual_class;
  initial begin
    parent_class ptr;
    child_class ctr;
    ctr=new();
    ptr=ctr;
    ptr.data=10;
    ptr.display();
  end
endmodule


OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 04:33 2024
child class data=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.560 seconds;       Data structure size:   0.0Mb
Tue Aug  6 04:33:17 2024
