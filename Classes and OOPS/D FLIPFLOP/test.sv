`include "environment.sv"
class test;
  environment env;
  mailbox mail;
  virtual create vintf;
  
  function new(virtual create vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task memory;
    mail=new();
    env=new(vintf,mail);
  endtask
  
  task run;
    fork
      env.memory;
      env.run;
    join
  endtask
endclass
