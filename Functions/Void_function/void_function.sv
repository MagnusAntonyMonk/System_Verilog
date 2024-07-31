// Void function does not return values instead displays the result
module function_example;
  
  function void compare(input int a, b);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  endfunction
  
  initial begin
    compare(10,10);
    compare(5, 9);
    compare(9, 5);
  end
endmodule


OUTPUT:

xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
a is equal to b
a is less than b
a is greater than b
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jul 31, 2024 at 02:00:38 EDT  (total: 00:00:01)
