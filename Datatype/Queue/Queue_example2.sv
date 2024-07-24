module queue_example2;
  int queue1[$];
  initial begin
    queue1={9,8,7,4,5};
    
    $display("queue1=[9,8,7,4,5]");
    $display("");
    queue1.push_back(2);
    $display("the push back operation:%p",queue1);
    $display("");
    queue1.push_front(3);
    $display("the push front operation:%p",queue1);
    $display("");
    queue1.pop_back();
    $display("the pop back operation:%p",queue1);
    $display("");
    queue1.pop_front();
    $display("the pop front operation:%p",queue1);
  end
endmodule
    


OUTPUT:

Top Level Modules:
       queue_example2
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module queue_example2
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .422 seconds to compile + .427 seconds to elab + .377 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 02:22 2024
queue1=[9,8,7,4,5]

the push back operation:'{9, 8, 7, 4, 5, 2} 

the push front operation:'{3, 9, 8, 7, 4, 5, 2} 

the pop back operation:'{3, 9, 8, 7, 4, 5} 

the pop front operation:'{9, 8, 7, 4, 5} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Jul 24 02:22:23 2024
