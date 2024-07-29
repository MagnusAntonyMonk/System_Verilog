module unique_if_example;// ALLOWS ONLY ONE IF CONDITION TO BE TRUE, NO CONDITION TO BE TRUE. IF MORE THAN ONE CONDITION IS TRUE IT THROWS AN ERROR.
  bit[3:0] a, b;
  initial begin
    a = 15;
    b = 10;
    unique if (a == b) begin
      $display("a is equal to b");
    end
    else if (a < b) begin
      $display("a is less than b");
    end
    else if (a > b) begin
      $display("a is greater than b");
    end
    else begin
      $display("Unexpected condition");
    end
  end
endmodule


OUTPUT:

Top level modules:
	unique_if_example

Analyzing design...
-- Loading module unique_if_example
Optimizing 1 design-unit (inlining 0/1 module instances):
-- Optimizing module unique_if_example(fast)
Optimized design name is qrun_opt
End time: 14:27:26 on Jul 29,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do " run -all; exit" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 14:27:27 on Jul 29,2024
# //  Questa Sim-64
# //  Version 2023.1 linux_x86_64 Jan 23 2023
# //
# //  Copyright 1991-2023 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  QuestaSim and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading sv_std.std
# Loading work.unique_if_example(fast)
# 
# run -all
  -----------------------------------------------------------------
# a is greater than b

  -----------------------------------------------------------------
# exit
# End time: 14:27:27 on Jul 29,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
