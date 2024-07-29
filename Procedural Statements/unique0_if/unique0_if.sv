module unique0_if_example;//ALLOWS ONLY ONE IF CONDITION TO BE TRUE, NO CONDITION TO BE TRUE. IF MORE THAN ONE CONDITION IS TRUE EVALUATES AND OUTPUTS THE FIRST
                            TRUE EXPRESSION.
  bit[3:0] a, b;
  initial begin
    a = 15;
    b = 10;
    unique0 if (a == b) begin
      $display("a is equal to b");
    end
    else if (a < b) begin
      $display("a is less than b");
    end
    else if (a != b) begin
      $display("a is not equal to b");
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

Top Level Modules:
       unique_if_example
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module unique_if_example
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .383 seconds to compile + .380 seconds to elab + .362 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 14:33 2024
  -------------------------------------------------------------------------------------------------------
a is not equal to b
---------------------------------------------------------------------------------------------------------
Warning-[RT-MTOCMU0IF] More than one condition match in statement
design.sv, 6
  Unique0 if statement inside unique_if_example matches more than one 
  condition at time 0ns.
  
  Line number 12 and 15 match.

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Mon Jul 29 14:33:51 2024
