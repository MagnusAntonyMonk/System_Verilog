module function_example;
  int a, b;
  int out;
  
  function void fn_pass(string name, int val);
    $display("Function: Values passed by name: %s, %0d", name, val);
  endfunction

  initial begin
    fn_pass(.val(1000),.name("Magnus Antony"));
  end
endmodule


OUTPUT:


Function: Values passed by name: Magnus Antony, 1000
# exit
# End time: 03:00:04 on Jul 31,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
