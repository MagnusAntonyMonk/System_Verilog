module dynamic_array_methods();
  int a[];
  int b[]={9,5,7,1,4,3};
  
  initial begin
    a=new[10];
    
    foreach(a[i])begin
      $display("a[%0d]=%0d",i,a[i]);
    end
    
    $display("size of b:%0d",b.size());
    
    b.reverse();
    $display("reverse of array b:%p",b);
    b.sort();
    $display("sort of array b:%p",b);
    b.rsort();
    $display("rsort of array b:%p",b);
    b.shuffle();
    $display("shuffle of array b:%p",b);
    b.delete();
    $display("deletion of array b:%p",b);
    
    //Out of Bound access
    $display("Out of Bound access:%0d",b[7]);
  end
endmodule


OUTPUT:

Top Level Modules:
       dynamic_array_methods
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module dynamic_array_methods
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .416 seconds to compile + .408 seconds to elab + .357 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 19 03:02 2024
a[0]=0
a[1]=0
a[2]=0
a[3]=0
a[4]=0
a[5]=0
a[6]=0
a[7]=0
a[8]=0
a[9]=0
size of b:6
reverse of array b:'{3, 4, 1, 7, 5, 9} 
sort of array b:'{1, 3, 4, 5, 7, 9} 
rsort of array b:'{9, 7, 5, 4, 3, 1} 
shuffle of array b:'{5, 7, 4, 9, 1, 3} 
deletion of array b:'{}
Out of Bound access:0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Fri Jul 19 03:02:20 2024
