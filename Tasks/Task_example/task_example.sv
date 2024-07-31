module task_example;
  task compare(input int a,b);
    if(a>b) begin
      $display("a is greater than b");
    end
    else if(a<b)begin
      $display("a is less than b");
    end
    else begin
      $display("a is equal to b");
    end
  endtask
  
  initial begin 
    compare(10,20);
    compare(20,10);
    compare(10,10);
  end
endmodule


OUTPUT:


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 05:45 2024
a is less than b
a is greater than b
a is equal to b
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Wed Jul 31 05:45:34 2024
