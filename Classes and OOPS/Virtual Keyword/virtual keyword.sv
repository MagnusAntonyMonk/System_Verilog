class parent_class;
  bit [31:0] data;
  int id;
  
  virtual function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  int id;
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_class p_tr;
    child_class c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    c_tr.data = 10;
    c_tr.id = 2;
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule


OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 03:14 2024
Child: Value of data = 10 and id = 2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Aug  6 03:14:28 2024
