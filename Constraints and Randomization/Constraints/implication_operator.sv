class implication_operator;
  rand bit [7:0] value;
  rand enum {min,max} degree;

  constraint scale_c { (degree == min)-> value < 50; }
endclass

module constraint_example;
  if_else pkt;
  
  initial begin
    pkt = new();
    
    repeat(5) begin
      pkt.randomize();
      $display("degree = %s, value = %0d", pkt.degree.name(), pkt.value);
    end
  end
endmodule


OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 29 07:36 2024
degree = max, value = 150
degree = max, value = 121
degree = max, value = 192
degree = max, value = 104
degree = min, value = 33
           V C S   S i m u l a t i o n   R e p o r t 
