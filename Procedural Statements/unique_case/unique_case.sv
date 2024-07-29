module unique_case;
  bit[1:0]a;
  initial begin
    a=0;
    unique case(a)
      0:$display("first expression is true");
      0:$display("second expression is true");
      1:$display("third expression is true");
    endcase
  end
endmodule

OUTPUT:


first expression is true

Warning-[RT-MTOCMUCS] More than one condition match in statement
design.sv, 5
  More than one condition matches are found in 'unique case' statement inside 
  unique_case, at time 0ns.
  
  Line number 6 and 7 are overlapping.

           V C S   S i m u l a t i o n   R e p o r t 
