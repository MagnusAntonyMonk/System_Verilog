class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  protected function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends transaction;
  bit [31:0] addr;
  
  task calc_addr;
    addr = data * id;
    display(); 
    $display("addr = %0d", addr);
  endtask
endclass

module class_example;
  child_trans tr;
  
  initial begin
    tr = new();
    tr.calc_addr();
  end
endmodule


OUTPUT:

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 11 06:52 2024
data = 100 and id = 1
addr = 100
           V C S   S i m u l a t i o n   R e p o r t 
