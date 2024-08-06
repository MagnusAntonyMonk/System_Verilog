class parent_class;
  bit [31:0] data;
  
  function new(bit [31:0] data);
    this.data = data;
    $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  
  function new(bit [31:0] data_p, data_c);
    super.new(data_p);
    this.data = data_c;
    $display("Child: Value of data = %0h", data);
  endfunction

endclass

module class_example;
  initial begin
    child_class c_tr;
    c_tr = new(5, 7);
  end
endmodule


OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 02:36 2024
Base: Value of data = 5
Child: Value of data = 7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Tue Aug  6 02:36:46 2024
