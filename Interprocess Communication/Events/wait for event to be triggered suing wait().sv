module event_example;
  event a1;
  task a();
    #10;
    $display("before triggering an event");
    ->a1;
    $display("after triggering an event");
  endtask
   task b();
    $display("waiting for triggering an event");
     wait(a1.triggered);
     $display("triggering an event is done");
  endtask
  initial begin
    fork
      a();
      b();
    join
  end
endmodule


OUTPUT:

Top level design units:
		event_example
Loading snapshot worklib.event_example:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
waiting for triggering an event
before triggering an event
after triggering an event
triggering an event is done
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
