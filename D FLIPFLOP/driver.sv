class driver;
  transaction pkt;
  mailbox mail;
  virtual create vintf;
  
  function new(virtual create vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task driv;
    repeat(4)
      begin
        pkt=new();
        mail.get(pkt);        
        vintf.rst_n=0;
        vintf.d=pkt.d;
        #5;
         vintf.rst_n=1;
        vintf.d=pkt.d;
        #5;
        pkt.q=vintf.q;

      end
  endtask
endclass
      
