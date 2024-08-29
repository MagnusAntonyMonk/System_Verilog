`define start 200
`define stop 300

class rand_ex#(parameter int m1=10,m2=20);
  rand bit [7:0] value1;
  rand bit [7:0] value2;
  rand bit [7:0] value3;
  rand bit [7:0] value4;
  rand bit [7:0] value5;
  rand bit [7:0] value6;
  
  constraint c1 {value1 inside{10,20,30};}
  constraint c2 {value2 inside {[10:30]};}
  constraint c3 {value3 inside{[m1:m2]};}
  constraint c4 {value4 inside{[value1:value2]};}
  constraint c5 {!(value5 inside{[100:200]});}     
  constraint c6 {value6 inside{[`start:`stop]};}
endclass
module constraint_ex;
  rand_ex#(100,200) pkt;
  initial begin
    pkt=new();
   
    repeat(4) begin
       pkt.randomize();
      $display("value1 = %0d, value2 = %0d, value3 = %0d, value4 = %0d, value5 = %0d, value6 = %0d", pkt.value1, pkt.value2, pkt.value3, pkt.value4, pkt.value5, pkt.value6);
    end
  end
endmodule


OUTPUT:

xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
value1 = 10, value2 = 17, value3 = 118, value4 = 15, value5 = 47, value6 = 252
value1 = 10, value2 = 30, value3 = 190, value4 = 26, value5 = 68, value6 = 210
value1 = 20, value2 = 28, value3 = 178, value4 = 21, value5 = 86, value6 = 215
value1 = 10, value2 = 28, value3 = 177, value4 = 26, value5 = 219, value6 = 207
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit

                 
                 
  
