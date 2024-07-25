module unpacked_structure;
  struct {
    bit[7:0]intr;
    logic[23:0]addr;
  }STR;
  
  initial begin
    STR.intr='hff;
    $display("STR intr:%h",STR.intr);
    $display("STR:%p",STR);
    STR='{'h00,'hffff};
    $display("STR:%p",STR);
  end
  typedef struct{
    int a='hff;
    int b;
    int c[4]='{4{1}};
  }KTM;
  KTM x;
  initial begin
    $display("x.a=%h,x.b=%h,x.c=%p",x.a,x.b,x.c);
    x='{'h1010,'ha0a0a,{1,2,3,4}};
    $display("x.a=%h,x.b=%h,x.c=%p",x.a,x.b,x.c);
  end
endmodule
    
  

OUTPUT:

Top Level Modules:
       unpacked_structure
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module unpacked_structure
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .446 seconds to compile + .401 seconds to elab + .465 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 06:53 2024

STR intr:ff
STR:'{intr:'hff, addr:'hxxxxxx}
STR:'{intr:'h0, addr:'hffff}
x.a=000000ff,x.b=00000000,x.c='{1, 1, 1, 1} 
x.a=00001010,x.b=000a0a0a,x.c='{1, 2, 3, 4} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Jul 25 06:53:42 2024
