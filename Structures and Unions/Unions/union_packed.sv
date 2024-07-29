typedef union packed {
    bit [7:0] B;
    logic [7:0] C;
} ABC_u; // Union name

module unionpacked;

    ABC_u abc;

    initial begin
        // Initialization of values
        abc.B = 8'hAB; // Assign value to B
        $display("\n abc.B = %0h", abc.B);

        // Assigning a new value to C will change the value of B because both share the same memory
        abc.C = 8'hCD;
        $display("\n abc.C = %0h", abc.C);

        // Display the size of the packed union
      $display("\n size is: %0d", $bits(abc));
    end
endmodule


OUTPUT:


Top level modules:
	unionpacked

Analyzing design...
-- Loading module unionpacked
Optimizing 2 design-units (inlining 0/1 module instances):
-- Optimizing package design_sv_unit(fast)
-- Optimizing module unionpacked(fast)
Optimized design name is qrun_opt
End time: 02:39:39 on Jul 29,2024, Elapsed time: 0:00:00
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do " run -all; exit" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 02:39:39 on Jul 29,2024
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
# Loading work.design_sv_unit(fast)
# Loading work.unionpacked(fast)
# 
# run -all
# 
#  abc.B = ab
# 
#  abc.C = cd
# 
#  size is: 8
# exit
# End time: 02:39:40 on Jul 29,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
