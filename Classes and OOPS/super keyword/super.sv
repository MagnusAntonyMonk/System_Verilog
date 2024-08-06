class parent_class;
  bit [31:0] data;
  
  function void display();
     $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  
  function void display();
    super.data = 3;
    super.display();
    $display("Child: Value of data = %0h", data);
  endfunction
endclass

module class_example;
  initial begin
    child_class c_tr;
    c_tr = new();
    
    c_tr.data = 5;
    c_tr.display();
  end
endmodule

OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 02:27 2024
Base: Value of data = 3
Child: Value of data = 5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Aug  6 02:27:09 2024
