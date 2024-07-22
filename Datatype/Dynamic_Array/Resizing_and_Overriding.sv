module dynamic_array;
  int array[];
  initial begin
    array=new[5];
    array={1,2,3,4,5};
    foreach(array[i])begin
      $display("array[%0d]=%0d",i,array[i]); 
    end
    $display("size of array:%0d",array.size());
    array=new[10](array);
    $display("size of array after resizing:%0d",array.size());
    foreach(array[i])begin
      $display("array[%0d]=%0d",i,array[i]); 
    end
    array=new[6];
    $display("size of array after overriding:%0d",array.size());
    foreach(array[i])begin
      $display("array[%0d]=%0d",i,array[i]); 
    end
  end
endmodule
    


OUTPUT:

Top Level Modules:
       dynamic_array
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module dynamic_array
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .525 seconds to compile + .586 seconds to elab + .563 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 22 11:16 2024
array[0]=1
array[1]=2
array[2]=3
array[3]=4
array[4]=5
size of array:5
size of array after resizing:10
array[0]=1
array[1]=2
array[2]=3
array[3]=4
array[4]=5
array[5]=0
array[6]=0
array[7]=0
array[8]=0
array[9]=0
size of array after overriding:6
array[0]=0
array[1]=0
array[2]=0
array[3]=0
array[4]=0
array[5]=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Mon Jul 22 11:16:19 2024
