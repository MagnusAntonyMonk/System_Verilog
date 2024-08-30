class seq_item;
  rand bit [7:0] value1;
  rand bit [7:0] value2;

  constraint value1_c {value1 dist {3:/4, [5:8] :/ 7}; }
  constraint value2_c {value2 dist {3:=4, [5:8] := 7}; }

endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(5) begin
      item.randomize();
      $display("value1 (with :/) = %0d, value2 (with :=)= %0d", item.value1, item.value2);
    end
  end
endmodule


OUTPUT:


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 02:43 2024
value1 (with :/) = 3, value2 (with :=)= 8
value1 (with :/) = 5, value2 (with :=)= 5
value1 (with :/) = 3, value2 (with :=)= 7
value1 (with :/) = 3, value2 (with :=)= 6
value1 (with :/) = 3, value2 (with :=)= 6
           V C S   S i m u l a t i o n   R e p o r t 
