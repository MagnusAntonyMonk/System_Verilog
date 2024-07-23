module Associative_Arrays;
  typedef enum{TRANS,RECEIVE,REPEATER}tr_type;
  bit[7:0] array_enum[tr_type];
  
  initial begin
    array_enum[TRANS]=10;
    array_enum[RECEIVE]=20;
    array_enum[REPEATER]=30;
    
    foreach(array_enum[i])
      $display("array_enum[%s]=%0d",i.name(),array_enum[i]);

  end
endmodule


OUTPUT:

Top Level Modules:
       Associative_Arrays
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module Associative_Arrays
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .455 seconds to compile + .416 seconds to elab + .423 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 23 03:13 2024
array_enum[TRANS]=10
array_enum[RECEIVE]=20
array_enum[REPEATER]=30
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Tue Jul 23 03:13:13 2024
