module static_function_example;
  function integer counter();
    static integer count=0;
    count=count+1;
    return count;
  endfunction
  
  initial begin
    $display("count1=%0d",counter());
    $display("count2=%0d",counter());
    $display("count3=%0d",counter());
  end
endmodule


OUTPUT:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 01:23 2024
count1=1
count2=2
count3=3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.300 seconds;       Data structure size:   0.0Mb
Wed Jul 31 01:23:44 2024
