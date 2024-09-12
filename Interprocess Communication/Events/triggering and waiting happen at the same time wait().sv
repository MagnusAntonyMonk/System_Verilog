module event_example;
  event a1;
  task a();
    $display("before triggering an event");
    ->a1;
    $display("after triggering an event");
  endtask
   task b();
    $display("waiting for triggering an event");
     wait(a1.triggTop level design units:
		event_example
Loading snapshot worklib.event_example:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
          
before triggering an event
after triggering an event
waiting for triggering an event
triggering an event is done
  
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exitered);
     $display("triggering an event is done");
  endtask
  initial begin
    fork
      a();
      b();
    join
  end
endmodule

-------------------------------------------------------------------------------------------------------------------------------------------
NOTE: ALL STATEMENTS GETS EXECUTED BCOZ wait() CONSTRUCT UNBLOCKS ALL THE WAITING EVENTS.
-------------------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

