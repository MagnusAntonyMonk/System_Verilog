module static_task_example;
  task counter();
    static integer count = 0; // Static variable
    count = count + 1; // Increment count
    $display("Current count: %0d", count); // Display the current count
  endtask
  
  initial begin
    counter(); // Call task
    counter(); // Call task
    counter(); // Call task
  end
endmodule


OUTPUT:


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 05:51 2024
Current count: 1
Current count: 2
Current count: 3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Wed Jul 31 05:51:36 2024
