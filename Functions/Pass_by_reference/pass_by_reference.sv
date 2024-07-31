module pass_by_reference;
  int a,b;
  int out;
  
  function automatic int multiply(ref int a,b);
    a=a*b;
    return a;
  endfunction
  
  initial begin
    a=5;
    b=6;
    out=multiply(a,b);
    $display("out=%0d,a=%0d,b=%0d",out,a,b);
  end
endmodule



OUTPUT:


Top level design units:
		pass_by_reference
Loading snapshot worklib.pass_by_reference:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
out=30,a=30,b=6
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jul 31, 2024 at 02:45:49 EDT  (total: 00:00:02)
    
