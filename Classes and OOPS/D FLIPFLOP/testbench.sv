`include "interface.sv"
`include "test.sv"

module D_flipflop_tb;
  test testr;
  mailbox mail;
  create intf();
 
  
  D_flipflop inst(
                  .clk(intf.clk),
                  .rst_n(intf.rst_n),
                  .d(intf.d),
                  .q(intf.q));
  initial begin
    mail=new();
    testr=new(intf,mail);
    fork
      testr.memory;
      testr.run;
    join
  end
  
  initial begin
   intf.clk=0;
    
   forever #5 intf.clk=~intf.clk;

  end
    
  
  initial begin
    $monitor("d= %b,clk=%b ,rst_n=%b,q=%b",intf.d,intf.clk,intf.rst_n,intf.q);
    
    #80;
    $finish;
  end
endmodule
