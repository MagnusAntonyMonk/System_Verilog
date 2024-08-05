class parent;
  int age=50;
  function void disp_a();
    $display("age=%0d",age);
  endfunction
endclass
class child_A extends parent;
  int age_1=45;
   function void disp_b();
     $display("age_1=%0d",age_1);
  endfunction
endclass
class child_B extends parent;
  int age_2=40;
   function void disp_c();
     $display("age_2=%0d",age_2);
  endfunction
endclass
class child_1 extends child_A;
  int age_3=20;
   function void disp_d();
     $display("age_3=%0d",age_3);
  endfunction
endclass
class child_2 extends child_1;
  int age_4=10;
   function void disp_e();
     $display("age_4=%0d",age_4);
  endfunction
endclass
module multilevel;
  initial begin
    child_2 c2;
  c2=new();
  c2.disp_a();
  c2.disp_b();
  //c2.disp_c();
  c2.disp_d();
  c2.disp_e();
  end 
endmodule
    
  
OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 07:25 2024
age=50
age_1=45
age_3=20
age_4=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Aug  5 07:25:21 2024
