module break_continue_example;// Break, exits the loop if the required condition is met. On the other hand, Continue keyword starts from 0 to 5 stops when i==6 and continues when from iteration.
  int array[10];
  
  initial begin
    // Update array
    for (int i = 0; i < $size(array); i++) begin
      array[i] = i*i;
    end
  
    // Break keyword
    for (int i = 0; i < $size(array); i++) begin
      if(i == 6) break;
      $display("array[%0d] = %0d", i, array[i]);
    end
    $display("------------------------");
    
    // Continue keyword
    for (int i = 0; i < $size(array); i++) begin
      if(i == 6) continue;
      $display("array[%0d] = %0d", i, array[i]);
    end
    $display("------------------------");
  end
endmodule


OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 15:12 2024
array[0] = 0
array[1] = 1
array[2] = 4
array[3] = 9
array[4] = 16
array[5] = 25
------------------------
array[0] = 0
array[1] = 1
array[2] = 4
array[3] = 9
array[4] = 16
array[5] = 25
array[7] = 49
array[8] = 64
array[9] = 81
------------------------
           V C S   S i m u l a t i o n   R e p o r t 
