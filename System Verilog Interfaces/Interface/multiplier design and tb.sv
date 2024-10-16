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

// TESTBENCH

interface mulintf(input logic clk ,reset);
  logic [7:0]a,b;
  logic [15:0]out;
  logic en,ack;
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
    intf.a='d4;intf.b='d10;
    intf.en=1;
    #10 intf.en=0;
    wait(intf.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.a,intf.b,intf.out);
    
    #15;
    intf.a='d6;intf.b='d12;
    intf.en=1;
    #20 intf.en=0;
    wait(intf.ack);
    $display("a=%0d,b=%0d,out=%0d",intf.a,intf.b,intf.out);
    
    #25;
    intf.a='d8;intf.b='d16;
    intf.en=1;
    #30 intf.en=0;
    wait(intf.ack);
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

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 16 05:52 2024
a=4,b=10,out=40
a=6,b=12,out=72
a=8,b=16,out=128
$finish called from file "testbench.sv", line 45.
$finish at simulation time                  115
           V C S   S i m u l a t i o n   R e p o r t 
