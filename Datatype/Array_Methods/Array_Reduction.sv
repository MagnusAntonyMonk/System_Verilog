module array_reduction;
  int array[5]={5,3,0,8,9};
  int result;
  initial begin
    $display("{5,3,0,8,9}");
    //sum
    result=array.sum();
    $display("sum of array:%p",result);
    //product
    result=array.product();
    $display("product of array:%p",result);
    //AND
    result=array.and();
    $display("Bitwise and of array:%p",result);
    //OR
    result=array.or();
    $display("Bitwise or of array:%p",result);
    //XOR
    result=array.xor();
    $display("Bitwise xor of array:%p",result);
  end
endmodule



OUTPUT:

Top Level Modules:
       array_reduction
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module array_reduction
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .392 seconds to compile + .406 seconds to elab + .439 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 05:58 2024
{5,3,0,8,9}
sum of array:         25
product of array:      0
Bitwise and of array:  0
Bitwise or of array:  15
Bitwise xor of array:  7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Jul 24 05:58:01 2024
