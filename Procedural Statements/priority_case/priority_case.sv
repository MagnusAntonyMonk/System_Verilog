module priority_case;
  bit[1:0]a;
  initial begin
    a=0;
    priority case(a)
      0:$display("first expression is true");
      0:$display("second expression is true");
      1:$display("third expression is true");
    endcase
  end
endmodule


OUTPUT:

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 14:56 2024

first expression is true


           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Mon Jul 29 14:56:28 2024
