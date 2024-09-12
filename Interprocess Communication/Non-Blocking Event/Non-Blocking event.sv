module event_example;
  event a1;
  task a();
    $display("before triggering an event");
    ->>a1;
    $display("after triggering an event");
  endtask
   task b();
    $display("waiting for triggering an event");
     @(a1.triggered);
     $display("triggering an event is done");
  endtask
  initial begin
    fork
      a();
      b();
    join
  end
endmodule
-----------------------------------------------------------------------------------------------------------------------------------------
NOTE: USING(-->)OPERATOR ENSURES ALL THE BLOCKING ASSIGNMENTS ARE EXECUTED THEN THE NON BLOCKING IS GETS EXECUTED TO AVOID RACE CONDTIONS.
-----------------------------------------------------------------------------------------------------------------------------------------

OUTPUT:

Top level design units:
		event_example
Loading snapshot worklib.event_example:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run

before triggering an event
after triggering an event
waiting for triggering an event
triggering an event is done
  
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
