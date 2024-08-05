class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    
    p_tr = new();
    c_tr = new();
    
    p_tr.data = 100;
    p_tr.id = 1;

    c_tr.data = 200;
    c_tr.id = 2;
    
    p_tr.display();
    c_tr.display();
  end
endmodule


OUTPUT:

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 07:58 2024
Base: Value of data = 100 and id = 1
Child: Value of data = 200 and id = 2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Mon Aug  5 07:58:05 2024
