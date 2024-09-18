module mailbox;
  mailbox mbx=new(3);
  
  task A();
    int id;
    repeat(3)begin
      id=$urandom_range(1,20);
      mbx.put(id);
      $display("id=%0d",id);
    end
    $display("--------------------");
  endtask
  
   task B();
    int id;
     mbx.peek(id);
     $display("id=%0d",id);
     mbx.peek(id);
     $display("id=%0d",id);
     $display("-------------------");
     if(mbx.try_peek(id))
       $display("success");
     else
       $display("failed");
     $display("-------------------");
     repeat(3)begin
      //id=$urandom_range(1,20);
      mbx.get(id);
      $display("id=%0d",id);
    end
     $display("-------------------");
     if(mbx.try_peek(id))
       $display("success");
     else
       $display("failed");
   endtask
  
  initial begin
    fork
      A();
      B();
    join
  end
endmodule


OUTPUT:

id=10
id=9
id=20
--------------------
id=10
id=10
-------------------
success
-------------------
id=10
id=9
id=20
-------------------
failed
           V C S   S i m u l a t i o n   R e p o r t 
