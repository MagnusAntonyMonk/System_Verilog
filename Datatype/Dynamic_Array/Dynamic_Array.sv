module dynamic_array;
  int array1[];
  initial begin
    
    array1=new[6];
    array1={1,2,3,4,5,6};
    
    $display("display the array elements:");
    
    foreach(array1[i])begin
      $display("array1[%0d]=%0d",i,array1[i]);
    end
    
    $display("display the size:");
    $display("array size=%0d",array1.size());
    
    array1.delete();
    $display("size of the array:%0d",array1.size());
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
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .352 seconds to compile + .350 seconds to elab + .367 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 19 02:29 2024
display the array elements:
array1[0]=1
array1[1]=2
array1[2]=3
array1[3]=4
array1[4]=5
array1[5]=6
display the size:
array size=6
size of the array:0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Fri Jul 19 02:29:20 2024
