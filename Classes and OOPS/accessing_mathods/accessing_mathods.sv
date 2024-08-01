class transaction;
  bit [31:0] data;
  int id;
  
  task update(bit [31:0] m_data, int m_id);
    data = m_data;
    id = m_id;
  endtask
  
  function print(transaction tr);
    $display("Value of data = %0h and id = %0h", tr.data, tr.id);
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new();
    tr.update(5, 9);
    tr.print(tr);
  end
endmodule


OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 01:43 2024
Value of data = 5 and id = 9
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Thu Aug  1 01:43:54 2024
