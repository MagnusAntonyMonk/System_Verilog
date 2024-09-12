module semaphore_ex;
  semaphore sem=new(1);
  task process_A();
    sem.get(1);
    $display("process A started");
    #5ns;
    $display("process A finished");
    sem.put(1);
  endtask
  task process_B();
    sem.get(1);
    $display("process B started");
    #4ns;
    $display("process B finished");
    sem.put(1);
  endtask
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule

OUTPUT:

Top level design units:
		semaphore_ex
Loading snapshot worklib.semaphore_ex:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
process A started
process A finished
process B started
process B finished
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
