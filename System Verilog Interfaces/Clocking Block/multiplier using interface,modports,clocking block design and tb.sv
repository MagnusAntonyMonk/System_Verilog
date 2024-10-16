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
  
  clocking cb @(posedge clk);
    default input #1 output #2;
    input out,ack;
    output a,b,en;
  endclocking
  
  modport TB(clocking cb,input clk,reset);
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
  
  `define TB_IF intf.TB.cb
  initial begin
    
    #5;
    `TB_IF.a<='d4;`TB_IF.b<='d10;
    `TB_IF.en<=1;
    #10 `TB_IF.en<=0;
    wait(`TB_IF.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.a,intf.b,intf.out);
    
    #15;
    `TB_IF.a<='d6;`TB_IF.b<='d12;
    `TB_IF.en<=1;
    #20 `TB_IF.en<=0;
    wait(`TB_IF.ack);
     $display("a=%0d,b=%0d,out=%0d",intf.a,intf.b,intf.out);
    
    #25;
    `TB_IF.a<='d8;`TB_IF.b<='d16;
    `TB_IF.en<=1;
    #30 `TB_IF.en<=0;
    wait(`TB_IF.ack);
     $display("a=%0d,b=%0d,out=%0d",intf.a,intf.b,intf.out);
    #10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
    
  
  
//OUTPUT


  Top level design units:
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
a=4,b=10,out=40
a=6,b=12,out=72
a=8,b=16,out=128
Simulation complete via $finish(1) at time 115 NS + 0
./testbench.sv:55     $finish;
