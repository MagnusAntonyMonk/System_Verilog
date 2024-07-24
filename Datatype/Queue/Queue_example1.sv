module queue_example1;
  int queue1[$];
  initial begin
    queue1={1,2,3,4,5,6,7};
    
    $display("queue={1,2,3,4,5,6,7}");
    
    $display("");
   
    $display("the size of queue is:%p",queue1.size());
    $display("");
    queue1.delete(3);
    $display("the deletion of element in queue is:%p",queue1);
    $display("");
    queue1.insert(2,9);
    $display("the insertion of element in queue is:%p",queue1);
    
  end
endmodule
    
    

OUTPUT:

Top Level Modules:
       queue_example1
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module queue_example1
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .478 seconds to compile + .503 seconds to elab + .585 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 02:02 2024
queue={1,2,3,4,5,6,7}

the size of queue is:          7

the deletion of element in queue is:'{1, 2, 3, 5, 6, 7} 

the insertion of element in queue is:'{1, 2, 9, 3, 5, 6, 7} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.580 seconds;       Data structure size:   0.0Mb
Wed Jul 24 02:02:03 2024
