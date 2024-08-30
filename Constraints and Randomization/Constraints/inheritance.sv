class parent;
  rand bit[5:0] value;
  constraint value_c{value>10;value<20;}
endclass
class child extends parent;
  constraint value_c{value inside{[30:70]};}
endclass
module tb;
  parent p=new();
  child c=new();
  
  initial begin
    
    p.randomize();
    $display("Parent class: value = %0d", p.value);
    c.randomize();
    $display("Child class: value = %0d", c.value);
  end
endmodule


OUTPUT:


# Parent class: value = 14
# Child class: value = 39
# exit

