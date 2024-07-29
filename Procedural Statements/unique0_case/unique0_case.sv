module unique0_case;
  bit[1:0]x;
  initial begin
     x = 2'b01;
    unique0 case(x)
      00 : $display(" Value of x is = %0b", x);
      01 : $display(" Value of x is = %0b", x);
      10 : $display(" Value of x is = %0b", x);
      11 : $display(" Value of x is = %0b", x);
      01 : $display(" Value of x is = %0b", x);
    endcase
  end
endmodule
      


OUTPUT:

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 15:05 2024
--------------------------------------------------------------------------------------------
 Value of x is = 1

Warning-[RT-MTOCMU0CS] More than one condition matches in statement
design.sv, 5
  Unique0 case statement inside unique0_case matches more than one condition 
  at time 0ns.
  
 Line numbers 7 and 10 match.

           V C S   S i m u l a t i o n   R e p o r t 
