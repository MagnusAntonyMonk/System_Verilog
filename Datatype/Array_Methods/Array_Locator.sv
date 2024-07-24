module array_locator;
  string array1[5]={"apple","orange","grape","watermelon","muskmelon"};
  //a=97;o=111;g=103;w=119;m=109
  string result[$];
  string check;
  int a[$];
  
  int array2[6]={1,2,3,4,5,6};
  int result1[$];
  initial begin
 
    //find and find_index
    result=array1.find(check) with (check>="orange");
    $display("result of find operation:%p",result);
    a=array1.find_index(check) with (check>="orange");
    $display("result of find operation:%p",a);
    $display("");
    //find_first and find_first_index
    result=array1.find_first(check) with (check>="grape");
    $display("result of find_first operation:%p",result);
    a=array1.find_first_index(check) with (check>="grape" & check<="muskmelon");
    $display("result of find_first operation:%p",a);
    $display("");
    //find_last and find_last_index
    result=array1.find_last (check) with (check<="muskmelon");
    $display("result of find_last operation:%p",result);
    a=array1.find_last_index(check) with (check<="muskmelon" & check>="apple");
    $display("result of find_last_index operation:%p",a);
    $display("");
    $display("");
    $display("");
    result1=array2.max();//max
    $display("max value in a array:%p",result1);
    result1=array2.min();//min
    $display("min value in a array:%p",result1);
    result1=array2.unique();//unique
    $display("unique value in a array:%p",result1);
    result1=array2.unique_index();//unique index
    $display("unique index value in a array:%p",result1);
  end
endmodule
    
    
  
OUTPUT:


Top Level Modules:
       array_locator
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module array_locator
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .549 seconds to compile + .541 seconds to elab + .507 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 05:33 2024

result of find operation:'{"orange", "watermelon"} 
result of find operation:'{1, 3} 

result of find_first operation:'{"orange"} 
result of find_first operation:'{2} 

result of find_last operation:'{"muskmelon"} 
result of find_last_index operation:'{4} 

max value in a array:'{6} 
min value in a array:'{1} 
  
unique value in a array:'{1, 2, 3, 4, 5, 6} 
unique index value in a array:'{0, 1, 2, 3, 4, 5} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Wed Jul 24 05:33:40 2024
