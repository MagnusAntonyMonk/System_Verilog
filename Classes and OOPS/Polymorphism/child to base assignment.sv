class base_class;
  int age;
  bit[31:0]data;
  function void display();
    $display("base:data=%0d,age=%0d",data,age);
  endfunction
endclass
class childA extends base_class;
  function void display();
    $display("childA:data=%0d,age=%0d",data,age);
  endfunction
endclass

  
module polymorphism;
  initial begin
    base_class ptr;
    childA ctr;
    ctr=new();
    ptr=ctr;//$cast(ctr,ptr)
    ptr.data=100;
    ptr.age=10;
    ptr.display();
  end
endmodule
    
    
OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 09:41 2024
base:data=100,age=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Tue Aug  6 09:41:39 2024
