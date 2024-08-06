class base_class;
  int age;
  bit[31:0]data;
  virtual function void display();
    $display("data=%0d,age=%0d",data,age);
  endfunction
endclass
class childA extends base_class;
  function void display();
    $display("childA:data=%0d,age=%0d",data,age);
  endfunction
endclass
class childB extends base_class;
  function void display();
    $display("childB:data=%0d,age=%0d",data,age);
  endfunction
  endclass
class childC extends base_class;
  function void display();
    $display("childC:data=%0d,age=%0d",data,age);
  endfunction
  endclass
  
module polymorphism;
  initial begin
    base_class p1,p2,p3;
    childA c1=new();
    childB c2=new();
    childC c3=new();
    c1.data=100;
    c1.age=10;
    c2.data=200;
    c2.age=20;
    c3.data=300;
    c3.age=30;
    p1=c1;
    p2=c2;
    p3=c3;
    p1.display();
    p2.display();
    p3.display();
  end
endmodule
    
    
OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 09:31 2024
childA:data=100,age=10
childB:data=200,age=20
childC:data=300,age=30
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Tue Aug  6 09:31:17 2024
