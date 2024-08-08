class monitor;
  transaction pkt;
  mailbox mail;
  virtual create vintf;
  
  
  function new(virtual create vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task moni;
    
    repeat(4)
      begin
        
        pkt=new();
        mail.put(pkt);
        pkt.d=vintf.d;  
//         pkt.clk=vintf.clk;
//         pkt.rst_n=vintf.rst_n;
        #5;
       pkt.q=vintf.q;
     
        
        $display("Packet received from DUT");
       
        #5;
      end
  endtask
endclass
        
