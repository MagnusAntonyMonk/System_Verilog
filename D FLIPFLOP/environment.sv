`include "transaction.sv"
`include "generator.sv"
`include "driver"
`include "monitor.sv"

class environment;
  
 
  generator gen;
  driver drive;
  mailbox mail;
  monitor mon;
  virtual create vintf;
  
  function new(virtual create vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
   task memory;
    mail = new();
    gen = new(mail);
    drive = new( vintf,mail);
    mon=new(vintf,mail);
   endtask
  
   task run;
   fork
   gen.gene;
   drive.driv;
   mon.moni;
   join
     $display("Packet recieved in environment");
   endtask
endclass
