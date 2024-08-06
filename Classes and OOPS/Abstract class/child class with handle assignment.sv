virtual class parent_class;
  bit[31:0]data;
  function void display();
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

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 04:25 2024
parent class data=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Tue Aug  6 04:25:11 2024
