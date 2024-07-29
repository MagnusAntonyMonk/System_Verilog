module union1();
    // Declaration of Union members
    union {
        int x;
        byte y;
    } data;

    initial begin
        // Initialize the union with a value for 'x'
        data.x = 'hABCF10CD;

        // Display values after initializing 'x'
        $display("\n x = %0h", data.x);
        $display("\n y = %0h", data.y);

        // Modify 'y', which will change the value of 'x'
        data.y = 'h56;

        // Display values after modifying 'y'
        $display("\n x = %0h", data.x);
        $display("\n y = %0h", data.y);

        // Display size of the union
        $display("\n size of unpacked union: %0d", $bits(data));
    end
endmodule


OUTPUT:


Top level modules:
	union1

Analyzing design...
-- Loading module union1
Optimizing 1 design-unit (inlining 0/1 module instances):
-- Optimizing module union1(fast)
Optimized design name is qrun_opt
End time: 02:25:34 on Jul 29,2024, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# vsim -batch -voptargs="+acc=npr" -lib qrun.out/work -do " run -all; exit" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log -csession=incr 
# Start time: 02:25:34 on Jul 29,2024
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
# Loading work.union1(fast)
# 
# run -all
# 
#  x = abcf10cd
# 
#  y = cd
# 
#  x = abcf1056
# 
#  y = 56
# 
#  size of unpacked union: 32
# exit
# End time: 02:25:34 on Jul 29,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   0
#     vopt: Errors:   0, Warnings:   1
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   1
