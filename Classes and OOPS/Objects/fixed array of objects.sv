class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
    end
    
    foreach(tr[i]) $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
endmodule


OUTPUT:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 07:07 2024
tr[0].data = 0, tr[0].id = 1
tr[1].data = 1, tr[1].id = 2
tr[2].data = 4, tr[2].id = 3
tr[3].data = 9, tr[3].id = 4
tr[4].data = 16, tr[4].id = 5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Thu Aug  1 07:07:22 2024
