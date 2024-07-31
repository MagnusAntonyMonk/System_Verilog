module automatic_function;
  function integer factorial(input integer n);
    automatic integer result;
    if(n==0)begin
      result=1;
    end
    
    else begin
      result=n * factorial(n-1);
    end
    return result;
  endfunction
  
  initial begin
    $display("factorial=%0d",factorial(3));
    $display("factorial=%0d",factorial(5));
  end
endmodule


OUTPUT:

xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
factorial=6
factorial=120
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jul 31, 2024 at 01:49:06 EDT  (total: 00:00:01)
