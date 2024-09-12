module event_example;
  event a1,a2,a3;
  task a();
    #10;
    ->a1;
    $display("@%0t:after triggering A event",$time);
  endtask
   task b();
     #50;
     ->a2;
     $display("@%0t:after triggering B event",$time);
  endtask
  task c();
    #30;
    ->a3;
    $display("@%0t:after triggering C event",$time);
  endtask
  task start_process();
    $display("@%0t: waiting for the events a1, a2, a3", $time);
    wait_order(a1,a3,a2)
    $display("Events are triggered in order");
    else
      $display("Events are triggered out of order");
  endtask
  initial begin
    fork
      a();
      b();
      c();
      start_process();
    join
  end
endmodule


OUTPUT:

@0: waiting for the events a1, a2, a3
@10:after triggering A event
@30:after triggering C event
@50:after triggering B event
Events are triggered in order
           V C S   S i m u l a t i o n   R e p o r t 
