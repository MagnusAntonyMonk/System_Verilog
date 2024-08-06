virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  pure virtual function void display();//A pure virtual method makes it mandatory for methods to be implemented in derived classes 
                                         whose prototype has been specified in an abstract_class. 
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule


OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 04:52 2024
Child: Value of data = 5 and id = 1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Tue Aug  6 04:52:36 2024
