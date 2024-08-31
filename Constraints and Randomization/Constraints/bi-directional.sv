class seq_item;
  rand bit [7:0] val1, val2, val3, val4;
  rand bit t1, t2;
  
  constraint val_c {val2 > val1; 
                   val3 == val2 - val1;
                   val4 < val3;
                   val4 == val1/val3; }
  
  constraint t_c { (t1 == 1) -> t2 == 0;}  //This implies that if t1 is 1 then t2 must be 0 
endclass                                   //If t1 is not equal to 1 then t2 can be 1 or 0

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(4) begin
      item.randomize();
      $display("val1 = %0d, val2 = %0d, val3 = %0d, val4 = %0d", item.val1, item.val2, item.val3, item.val4);
      $display("t1 = %0h, t2 = %0h", item.t1, item.t2);
    end
  end
endmodule


OUTPUT:

val1 = 117, val2 = 208, val3 = 91, val4 = 1
t1 = 0, t2 = 0
val1 = 116, val2 = 254, val3 = 138, val4 = 0
t1 = 1, t2 = 0
val1 = 14, val2 = 21, val3 = 7, val4 = 2
t1 = 0, t2 = 0
val1 = 46, val2 = 187, val3 = 141, val4 = 0
t1 = 0, t2 = 1
           V C S   S i m u l a t i o n   R e p o r t 
