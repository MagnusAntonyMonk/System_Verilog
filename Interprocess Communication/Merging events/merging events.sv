module event_example();
  event e1, e2;
  
  task A();
    e2 = e1;
    #10;
    ->e2;
    $display("@%0t: process_A: event e2 is triggered", $time);
  endtask
  
  task B();
    $display("@%0t: process_B: waiting for the event e1", $time);
    wait(e1.triggered);
    $display("@%0t: process_B: event e1 is received", $time);
  endtask

  initial begin
    fork
      A();
      B();
    join
  end
endmodule

OUTPUT:

Top level design units:
		event_example
Loading snapshot worklib.event_example:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run

@0: process_B: waiting for the event e1
@10: process_A: event e2 is triggered
@10: process_B: event e1 is received
  
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
=========================================================================================================================================
                                                        WITHOUT MERGING AN EVENT
=========================================================================================================================================

  module event_example();
  event e1, e2;
  
  task A();
    //e2 = e1;
    #10;
    ->e2;
    $display("@%0t: process_A: event e2 is triggered", $time);
  endtask
  
  task B();
    $display("@%0t: process_B: waiting for the event e1", $time);
    wait(e1.triggered);
    $display("@%0t: process_B: event e1 is received", $time);
  endtask

  initial begin
    fork
      A();
      B();
    join
  end
endmodule


OUTPUT:

xcelium> run

@0: process_B: waiting for the event e1
@10: process_A: event e2 is triggered

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
