module array_ordering;
  int array[8]={8,9,7,5,6,1,3,4};
  initial begin
    $display("array[8]={8,9,7,5,6,1,3,4}");
    array.reverse();
    $display("the reversed array is:%p",array);
    $display("");
    array.sort();
    $display("the sorted array is:%p",array);
    $display("");
    array.rsort();
    $display("the rsorted array is:%p",array);
    $display("");
    for(int i=0;i<3;i++) begin
    array.shuffle();
      $display("the shuffled array is:%p",array);
    end
    $display("");
  end
endmodule


OUTPUT:


Top Level Modules:
       array_ordering
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module array_ordering
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .427 seconds to compile + .434 seconds to elab + .473 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 06:06 2024
  
array[8]={8,9,7,5,6,1,3,4}

the reversed array is:'{4, 3, 1, 6, 5, 7, 9, 8} 

the sorted array is:'{1, 3, 4, 5, 6, 7, 8, 9} 

the rsorted array is:'{9, 8, 7, 6, 5, 4, 3, 1} 

the shuffled array is:'{3, 5, 1, 6, 7, 4, 9, 8} 
the shuffled array is:'{8, 7, 3, 5, 9, 1, 4, 6} 
the shuffled array is:'{1, 9, 3, 6, 7, 8, 4, 5} 

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Wed Jul 24 06:06:40 2024
