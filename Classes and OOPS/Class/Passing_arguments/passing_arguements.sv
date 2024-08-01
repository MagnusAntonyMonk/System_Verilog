class transaction;
  bit[31:0]data;
  
  function new(bit[31:0]m_data);
    data=m_data;
  endfunction
endclass
module class_example;
  initial begin
    transaction tr;
    tr =new(10);
    $display("value of data=%0d",tr.data);
  end
endmodule


OUTPUT:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 01:24 2024
value of data=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Thu Aug  1 01:24:47 2024
