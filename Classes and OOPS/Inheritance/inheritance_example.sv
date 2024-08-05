class parent;
  int age;
  function void disp_a();
    $display("age=%0d",age);
  endfunction
endclass
class child extends parent;
  int price;
  function void disp_b();
    $display("price=%0d",price);
  endfunction
endclass
module inheritance;
  child cr;
  initial begin
    cr=new();
    cr.age=30;
    cr.price=5000;
    cr.disp_a();
    cr.disp_b();
    end
endmodule


OUTPUT:

age=30
price=5000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Mon Aug  5 04:27:22 2024
