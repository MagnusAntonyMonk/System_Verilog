module task_example;

  task factorial(input integer n, output integer result);
    integer i;
    result = 1;
    for (i = 1; i <= n; i = i + 1) begin
      result = result * i;
    end
  endtask
  
  integer res;
  
  initial begin
    factorial(0, res);
    $display("Factorial of 0: %0d", res); // Output: 1
    factorial(2, res);
    $display("Factorial of 2: %0d", res); // Output: 2
    factorial(3, res);
    $display("Factorial of 3: %0d", res); // Output: 6
  end
endmodule
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 06:12 2024
Factorial of 0: 1
Factorial of 2: 2
Factorial of 3: 6
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Wed Jul 31 06:12:17 2024
