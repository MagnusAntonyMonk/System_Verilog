// Code your design here
module multiplier(mulintf intf);
  
  always@(posedge intf.clk or posedge intf.reset)begin
    if(intf.reset)begin
      intf.out<=0;
      intf.ack<=0;
    end
    else if(intf.en)begin
      intf.out<=intf.a*intf.b;
      intf.ack<=1;
    end
    else begin
      intf.ack<=0;
    end
  end
endmodule


//TESTBENCH

interface mulintf(input logic clk ,reset);
  logic [7:0]a,b;
  logic [15:0]out;
  logic en,ack;
  
  modport TB(output a,b,en,input out,ack);
  modport RTL(input clk,reset,a,b,en,output out,ack);
endinterface

module tb;
  bit clk;
  bit reset;
  
  always #2clk=~clk;
  
  initial begin
    clk=0;
    reset=1;
    #2;
    reset=0;
  end
  mulintf intf(clk,reset);
  multiplier inf(intf);
  
  initial begin
    
    #5;
    intf.TB.a='d4;intf.TB.b='d10;
    intf.TB.en=1;
    #10 intf.TB.en=0;
    wait(intf.TB.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.TB.a,intf.TB.b,intf.TB.out);
    
    #15;
    intf.TB.a='d6;intf.TB.b='d12;
    intf.TB.en=1;
    #20 intf.TB.en=0;
    wait(intf.TB.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.TB.a,intf.TB.b,intf.TB.out);
    
    #25;
    intf.TB.a='d8;intf.TB.b='d16;
    intf.TB.en=1;
    #30 intf.TB.en=0;
    wait(intf.TB.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.TB.a,intf.TB.b,intf.TB.out);
    #10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
    
  
  
//OUTPUT

# run -all
# a=4,b=10,out=40
# a=6,b=12,out=72
# a=8,b=16,out=128
# ** Note: $finish    : testbench.sv(48)
#    Time: 115 ns  Iteration: 0  Instance: /tb
