module pass_by_reference;
  int a,b;
  string out;
  task automatic divide(ref int a,b,output string out);
    if(a%b==0)
      out="EVEN";
    else
      out="ODD";
  endtask
  initial begin
    a=6;
    b=3;
    divide(a,b,out);
    $display("Result=%s",out);
  end
endmodule
    

OUTPUT:

Result=EVEN
# exit
# End time: 00:04:17 on Aug 01,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
