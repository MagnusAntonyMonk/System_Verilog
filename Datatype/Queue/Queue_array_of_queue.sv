module array_of_queues;
  int array1[3][$]; // Declare an array of 3 dynamic queues

  initial begin
    // Initialize the array of queues
    array1[0] = {1, 2, 3, 4};
    array1[1] = {5, 6, 7, 8};
    array1[2] = {9, 10, 11, 12};
    
    // Display each element of the array of queues
    foreach(array1[i]) begin
      foreach(array1[i][j]) begin
        $display("array1[%0d][%0d]=%0d", i, j, array1[i][j]);
      end
    end
  end
endmodule


OUTPUT:

Top Level Modules:
       array_of_queues
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module array_of_queues
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .410 seconds to compile + .456 seconds to elab + .418 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 03:06 2024
array1[0][0]=1
array1[0][1]=2
array1[0][2]=3
array1[0][3]=4
array1[1][0]=5
array1[1][1]=6
array1[1][2]=7
array1[1][3]=8
array1[2][0]=9
array1[2][1]=10
array1[2][2]=11
array1[2][3]=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Wed Jul 24 03:06:41 2024
