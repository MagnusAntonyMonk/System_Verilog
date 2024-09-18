module mailbox;
  mailbox#(string) mbx = new(3);  

  task A();
    string name1 = "Magnus";
    mbx.put(name1);
    $display("name1=%s", name1);
    
    name1 = "Antony";
    mbx.put(name1);
    $display("name2=%s", name1);
  endtask
  
  task B();
    string name1;
    mbx.get(name1);
    $display("name1=%s", name1);
    mbx.get(name1);
    $display("name2=%s", name1);
  endtask
  
  initial begin
    fork
      A();
      B();
    join
  end
endmodule


OUTPUT:

name1=Magnus
name2=Antony
name1=Magnus
name2=Antony
           V C S   S i m u l a t i o n   R e p o r t
