class transaction;
  bit[4:0]data;
  local int id;
  
  function new();
    data=30;
    id=15;
  endfunction
  
  protected function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
endclass

module tb;
  transaction tr;
  initial begin
    tr=new();
    tr.display();
  end
endmodule


OUTPUT:

tr.display();
             |
xmvlog: *E,CLSNPO (testbench.sv,19|13): Access to protected member 'display' in class 'transaction' is not allowed here.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Sep 11, 2024 at 06:37:17 EDT  (total: 00:00:00)
Exit code expected: 0, received: 1
Done
