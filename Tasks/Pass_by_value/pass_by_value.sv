module pass_by_value;
  int a,b;
  int out;
  task subtract(int a,b,output int out);
   out=a-b;
  endtask
  initial begin
    a=10;
    b=5;
    subtract(a,b,out);
    $display("Result=%0d",out);
  end
endmodule



OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 00:12 2024
Result=5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Thu Aug  1 00:12:42 2024
