module mixed_arrays;
  logic [2:0][3:0] mixed_array [2:0][3:0]; 
  
  initial begin
    $display("The assigning of mixed multi-dimensional arrays as follows:");
    
    foreach(mixed_array[i]) begin
      foreach(mixed_array[i][j]) begin
        foreach(mixed_array[i][j][k]) begin
          foreach(mixed_array[i][j][k][l]) begin
            mixed_array[i][j][k][l] = $urandom_range(0, 1);
            $display("mixed_array[%0d][%0d][%0d][%0d] = %0b", i, j, k, l, mixed_array[i][j][k][l]);
          end
        end
      end
    end
  end
endmodule


OUTPUT:
[2024-07-18 10:14:22 UTC] vcs -full64 -licqueue '-timescale=1ns/1ns' '+vcs+flush+all' '+warn=all' '-sverilog' design.sv testbench.sv  && ./simv +vcs+lic+wait  
                         Chronologic VCS (TM)
       Version U-2023.03-SP2_Full64 -- Thu Jul 18 06:14:23 2024

                    Copyright (c) 1991 - 2023 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this software is strictly prohibited.  Licensed Products
     communicate with Synopsys servers for the purpose of providing software
    updates, detecting software piracy and verifying that customers are using
    Licensed Products in conformity with the applicable License Key for such
  Licensed Products. Synopsys will use information gathered in connection with
    this process to deliver software updates and pursue software pirates and
                                   infringers.

 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)

Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       mixed_arrays
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module mixed_arrays
rm -f cuarc*.so _csrc*.so pre_vcsobj.so share_vcsobj_.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .452 seconds to compile + .422 seconds to elab + .406 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 18 06:14 2024
The assigning of mixed multi-dimensional arrays as follows:
mixed_array[2][3][2][3] = 0
mixed_array[2][3][2][2] = 0
mixed_array[2][3][2][1] = 1
mixed_array[2][3][2][0] = 0
mixed_array[2][3][1][3] = 1
mixed_array[2][3][1][2] = 1
mixed_array[2][3][1][1] = 0
mixed_array[2][3][1][0] = 1
mixed_array[2][3][0][3] = 0
mixed_array[2][3][0][2] = 1
mixed_array[2][3][0][1] = 1
mixed_array[2][3][0][0] = 0
mixed_array[2][2][2][3] = 0
mixed_array[2][2][2][2] = 1
mixed_array[2][2][2][1] = 1
mixed_array[2][2][2][0] = 0
mixed_array[2][2][1][3] = 0
mixed_array[2][2][1][2] = 1
mixed_array[2][2][1][1] = 0
mixed_array[2][2][1][0] = 0
mixed_array[2][2][0][3] = 0
mixed_array[2][2][0][2] = 1
mixed_array[2][2][0][1] = 1
mixed_array[2][2][0][0] = 0
mixed_array[2][1][2][3] = 1
mixed_array[2][1][2][2] = 0
mixed_array[2][1][2][1] = 1
mixed_array[2][1][2][0] = 0
mixed_array[2][1][1][3] = 0
mixed_array[2][1][1][2] = 1
mixed_array[2][1][1][1] = 1
mixed_array[2][1][1][0] = 0
mixed_array[2][1][0][3] = 0
mixed_array[2][1][0][2] = 1
mixed_array[2][1][0][1] = 0
mixed_array[2][1][0][0] = 1
mixed_array[2][0][2][3] = 0
mixed_array[2][0][2][2] = 0
mixed_array[2][0][2][1] = 0
mixed_array[2][0][2][0] = 1
mixed_array[2][0][1][3] = 0
mixed_array[2][0][1][2] = 1
mixed_array[2][0][1][1] = 1
mixed_array[2][0][1][0] = 0
mixed_array[2][0][0][3] = 0
mixed_array[2][0][0][2] = 1
mixed_array[2][0][0][1] = 1
mixed_array[2][0][0][0] = 1
mixed_array[1][3][2][3] = 0
mixed_array[1][3][2][2] = 0
mixed_array[1][3][2][1] = 1
mixed_array[1][3][2][0] = 1
mixed_array[1][3][1][3] = 1
mixed_array[1][3][1][2] = 0
mixed_array[1][3][1][1] = 0
mixed_array[1][3][1][0] = 1
mixed_array[1][3][0][3] = 1
mixed_array[1][3][0][2] = 0
mixed_array[1][3][0][1] = 1
mixed_array[1][3][0][0] = 0
mixed_array[1][2][2][3] = 0
mixed_array[1][2][2][2] = 1
mixed_array[1][2][2][1] = 1
mixed_array[1][2][2][0] = 1
mixed_array[1][2][1][3] = 0
mixed_array[1][2][1][2] = 0
mixed_array[1][2][1][1] = 1
mixed_array[1][2][1][0] = 1
mixed_array[1][2][0][3] = 0
mixed_array[1][2][0][2] = 1
mixed_array[1][2][0][1] = 0
mixed_array[1][2][0][0] = 1
mixed_array[1][1][2][3] = 0
mixed_array[1][1][2][2] = 1
mixed_array[1][1][2][1] = 1
mixed_array[1][1][2][0] = 0
mixed_array[1][1][1][3] = 1
mixed_array[1][1][1][2] = 1
mixed_array[1][1][1][1] = 1
mixed_array[1][1][1][0] = 1
mixed_array[1][1][0][3] = 1
mixed_array[1][1][0][2] = 0
mixed_array[1][1][0][1] = 0
mixed_array[1][1][0][0] = 1
mixed_array[1][0][2][3] = 0
mixed_array[1][0][2][2] = 0
mixed_array[1][0][2][1] = 0
mixed_array[1][0][2][0] = 0
mixed_array[1][0][1][3] = 0
mixed_array[1][0][1][2] = 0
mixed_array[1][0][1][1] = 1
mixed_array[1][0][1][0] = 1
mixed_array[1][0][0][3] = 1
mixed_array[1][0][0][2] = 1
mixed_array[1][0][0][1] = 0
mixed_array[1][0][0][0] = 1
mixed_array[0][3][2][3] = 1
mixed_array[0][3][2][2] = 0
mixed_array[0][3][2][1] = 0
mixed_array[0][3][2][0] = 0
mixed_array[0][3][1][3] = 1
mixed_array[0][3][1][2] = 1
mixed_array[0][3][1][1] = 1
mixed_array[0][3][1][0] = 0
mixed_array[0][3][0][3] = 0
mixed_array[0][3][0][2] = 1
mixed_array[0][3][0][1] = 0
mixed_array[0][3][0][0] = 1
mixed_array[0][2][2][3] = 1
mixed_array[0][2][2][2] = 0
mixed_array[0][2][2][1] = 0
mixed_array[0][2][2][0] = 0
mixed_array[0][2][1][3] = 1
mixed_array[0][2][1][2] = 1
mixed_array[0][2][1][1] = 0
mixed_array[0][2][1][0] = 1
mixed_array[0][2][0][3] = 1
mixed_array[0][2][0][2] = 0
mixed_array[0][2][0][1] = 0
mixed_array[0][2][0][0] = 1
mixed_array[0][1][2][3] = 1
mixed_array[0][1][2][2] = 0
mixed_array[0][1][2][1] = 1
mixed_array[0][1][2][0] = 1
mixed_array[0][1][1][3] = 0
mixed_array[0][1][1][2] = 0
mixed_array[0][1][1][1] = 1
mixed_array[0][1][1][0] = 1
mixed_array[0][1][0][3] = 0
mixed_array[0][1][0][2] = 0
mixed_array[0][1][0][1] = 1
mixed_array[0][1][0][0] = 0
mixed_array[0][0][2][3] = 0
mixed_array[0][0][2][2] = 1
mixed_array[0][0][2][1] = 1
mixed_array[0][0][2][0] = 0
mixed_array[0][0][1][3] = 1
mixed_array[0][0][1][2] = 0
mixed_array[0][0][1][1] = 0
mixed_array[0][0][1][0] = 0
mixed_array[0][0][0][3] = 1
mixed_array[0][0][0][2] = 1
mixed_array[0][0][0][1] = 0
mixed_array[0][0][0][0] = 0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.530 seconds;       Data structure size:   0.0Mb
Thu Jul 18 06:14:25 2024
Done
