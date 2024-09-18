module mailbox;
  mailbox mbx=new(3);
  
  task A();
    int id;
    repeat(5) begin
      id=$urandom_range(1,20);
      if(mbx.try_put(id))
        $display("id in mailbox:%0d",id);
      else
        $display("value failed:%0d",id);
    end
  endtask
  
  task B();
    int id;
    repeat(5) begin
      if(mbx.try_get(id))
        $display("id in mailbox:%0d",id);
      else
        $display("value failed:%0d",id);
    end
  endtask
  
  initial begin
    fork
      A();
      B();
    join
  end
endmodule


OUTPUT:

id in mailbox:10
id in mailbox:9
id in mailbox:20
value failed:8
value failed:17
id in mailbox:10
id in mailbox:9
id in mailbox:20
value failed:20
value failed:20
           V C S   S i m u l a t i o n   R e p o r t 
