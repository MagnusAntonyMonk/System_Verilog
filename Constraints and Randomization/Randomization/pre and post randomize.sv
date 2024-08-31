class seq_item;// SEQUENCE = PRE_RANDOMIZE---> RANDOMIZE---> POST_RANDOMIZE
  rand bit [7:0] val1;
  rand bit [7:0] val2;
 
  constraint val1_c {val1 > 100; val1 < 200;}
  constraint val2_c {val2 > 5; val2 < 8;}
  
  function void pre_randomize();
    $display("Inside pre_randomize");
  endfunction
  
  function void post_randomize();
    $display("Inside post_randomize");
    $display("val1 = %0d, val2 = %0d", this.val1, this.val2);
  endfunction
endclass

class child_item extends seq_item;
  function void pre_randomize();
    $display("Inside pre_randomize of child_item class");
  endfunction
  
  function void post_randomize();
    $display("Inside post_randomize of child_item class");
    $display("val1 = %0d, val2 = %0d", this.val1, this.val2);
  endfunction
endclass

module constraint_example;
  seq_item item;
  child_item c_item;
  
  initial begin
    item = new();
    c_item = new();
    
    item.randomize();
    c_item.randomize();
  end
endmodule

OUTPUT:


# Inside pre_randomize
# Inside post_randomize
# val1 = 104, val2 = 6
# Inside pre_randomize of child_item class
# Inside post_randomize of child_item class
# val1 = 116, val2 = 7
# exit
