module semaphore_ex;
  semaphore sem=new(3);
  task process_A();
    sem.try_get(3);
    $display("process A started");
    #5ns;
    $display("process A finished");
    sem.put(3);
  endtask
  task process_B();
    sem.try_get(2);
    $display("process B started");
    #4ns;
    $display("process B finished");
    sem.put(2);
  endtask
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
=========================================================================================================================================
NOTE: try_get( ) IS NON-BLOCKING SUCH THAT IT DOES NOT WAIT FOR THE KEYS TO PUT BACK TO THE SEMAPHORE CONTAINER.
=========================================================================================================================================


OUTPPUT:

Top level design units:
		semaphore_ex
Loading snapshot worklib.semaphore_ex:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
process A started
process B started
process B finished
process A finished
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
