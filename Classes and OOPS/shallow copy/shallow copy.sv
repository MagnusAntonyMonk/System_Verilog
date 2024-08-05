//class 1
class magnus;
  int age;
  string name;
  function new();
    age=20;
    name="Tom";
  endfunction
endclass
//class 2
class antony;
  int age_1;
  string name_1;
  magnus ma;//class handle
  function new();
    age_1=30;
    name_1="Max";
    ma=new();//class object
  endfunction
  function void display();
    $display("age_1=%0d",age_1);
    $display("name_1=%s",name_1);
    $display("age=%0d",ma.age);
    $display("name=%s",ma.name);
    $display("");
  endfunction
endclass
//shallow copy module
module shallow_copy_example;
  antony pkt_1;
  antony pkt_2;
  initial begin
    pkt_1=new();
    $display("pkt_1 display");
    pkt_1.display();
    pkt_2=new pkt_1;
    $display("pkt_2 display");
    pkt_2.display();
    pkt_2.age_1=40;
    pkt_2.name_1="Mia";
    pkt_2.ma.age=19;
    pkt_2.ma.name="Leo";
    $display("pkt_1 display after changing properties");
    pkt_1.display();
    $display("pkt_2 display after changing properties");
    pkt_2.display();
  end
endmodule
  

OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 01:09 2024
pkt_1 display
age_1=30
name_1=Max
age=20
name=Tom

pkt_2 display
age_1=30
name_1=Max
age=20
name=Tom

pkt_1 display after changing properties
age_1=30
name_1=Max
age=19
name=Leo

pkt_2 display after changing properties
age_1=40
name_1=Mia
age=19
name=Leo

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Mon Aug  5 01:09:04 2024
