class parent_class;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0h", data);
    $display("Base: Value of id = %0h", id);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  int id;
  
  function void display();
   
    $display("Child: Value of data = %0h", data);
    $display("Child: Value of id = %0h", id);
  endfunction

endclass

module class_example;
  initial begin
    parent_class p_tr;
    child_class c_tr=new();
    c_tr.data=1;
    c_tr.id=5;
     p_tr=c_tr;
    p_tr.data=10;
    p_tr.id=15;
    p_tr.display();
    c_tr.display();
  end
endmodule

OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 02:48 2024
Base: Value of data = a
Base: Value of id = f
Child: Value of data = 1
Child: Value of id = 5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Tue Aug  6 02:48:45 2024
