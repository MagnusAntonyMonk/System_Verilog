module shuffle_queue;
  int num[$];
  initial begin
    for(int i=0;i<15;i++)
      num.push_back(i);
    $display("Before Shuffle");
    foreach(num[i])begin
      $display("num[%0d]=%0d",i,num[i]);
    end
    $display("After Shuffle");
    num.shuffle();
    foreach(num[i])begin
      $display("num[%0d]=%0d",i,num[i]);
    end
  end
endmodule



OUTPUT:

Top Level Modules:
       shuffle_queue
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module shuffle_queue
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .436 seconds to compile + .417 seconds to elab + .387 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 02:34 2024
Before Shuffle
num[0]=0
num[1]=1
num[2]=2
num[3]=3
num[4]=4
num[5]=5
num[6]=6
num[7]=7
num[8]=8
num[9]=9
num[10]=10
num[11]=11
num[12]=12
num[13]=13
num[14]=14
After Shuffle
num[0]=8
num[1]=11
num[2]=10
num[3]=9
num[4]=3
num[5]=0
num[6]=5
num[7]=14
num[8]=1
num[9]=7
num[10]=6
num[11]=13
num[12]=4
num[13]=12
num[14]=2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Wed Jul 24 02:34:09 2024
