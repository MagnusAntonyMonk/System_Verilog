module function_example;
  int a, b;
  int out;
  
  function int multiply(int a = 5, b = 6);
    a = a*b; //value of a is updated, it won't update global variables a and b
    return a;
  endfunction
  
  initial begin
    out = multiply(); // Note: No arguments are passed
    $display("argument passed: out = %0d, a = %0d and b = %0d", out, a, b); //a and b values will be 0 since their values are not updated
    
    a = 2;
    b = 3;
    out = multiply(a, b);
    $display("No arguments passed: out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule


OUTPUT:

xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
argument passed: out = 30, a = 0 and b = 0
No arguments passed: out = 6 for a = 2 and b = 3
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jul 31, 2024 at 02:27:49 EDT  (total: 00:00:01)
