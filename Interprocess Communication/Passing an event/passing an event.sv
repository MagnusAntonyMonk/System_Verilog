class pass_event;
  event a;
  
  function new(event b);
    a=b;
  endfunction
  task A();
    #10;
    ->a;
    $display("@%0t: A: a is triggered", $time);
  endtask

  task B();
    $display("@%0t: B: waiting for the event a", $time);
    wait(a.triggered);
    $display("@%0t: B: event a is received", $time);
  endtask
endclass

module tb;
  pass_event pkt;
  event c;
  initial begin
    pkt=new(c);
    fork
      pkt.A();
      pkt.B();
    join
  end
endmodule
      

OUTPUT:

Top level design units:
		$unit_0x4ccdf83b
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run

@0: B: waiting for the event a
@10: A: a is triggered
@10: B: event a is received
  
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
