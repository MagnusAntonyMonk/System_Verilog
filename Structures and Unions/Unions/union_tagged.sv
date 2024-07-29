module union_tagged;
  logic[31:0]x;
  typedef union tagged{
    int a;
    byte b;
    bit[15:0]c;
  } data;
  
  data d1;
  initial begin 
    d1=tagged a 32'hffff_ffff;
    d1=tagged b 8'h10;
    x=d1.b;
    $display("x=%h",x);
  end
endmodule


OUTPUT:


Top level modules:
	union_tagged

Analyzing design...
-- Loading module union_tagged
Optimizing 1 design-unit (inlining 0/1 module instances):
-- Optimizing module union_tagged(fast)
Optimized design name is qrun_opt
End time: 01:39:02 on Jul 29,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do " run -all; exit" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 01:39:02 on Jul 29,2024
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
# Loading work.union_tagged(fast)
# 
# run -all
# x=00000010
# exit
# End time: 01:39:03 on Jul 29,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
