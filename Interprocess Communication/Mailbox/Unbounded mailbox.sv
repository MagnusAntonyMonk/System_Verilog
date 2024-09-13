module unbounded_mb;
  mailbox mbx=new();
  
  task A();
    int value;
    repeat(6)begin
      value=$urandom_range(1,10);
      mbx.put(value);
      $display("data=%0d",value);
    end
    $display("------------------------------");
  endtask
  
  task B();
    int value;
    repeat(6)begin
      value=$urandom_range(1,10);
      mbx.get(value);
      $display("data=%0d",value);
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

Top level design units:
		unbounded_mb
Loading snapshot worklib.unbounded_mb:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
data=5
data=10
data=2
data=9
data=9
data=4
------------------------------
data=5
data=10
data=2
data=9
data=9
data=4
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
