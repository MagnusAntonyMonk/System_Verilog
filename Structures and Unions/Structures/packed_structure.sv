module SU;
  struct packed{
  bit[7:0]intr;
  logic[23:0]addr;
}SUR;
  initial begin
    SUR.intr='hFF;//initializing value to  individual element
    $display($stime,,,"SUR=%h",SUR);
    $display($stime,,,"SUR intr=%h",SUR.intr);
    $display("");
    SUR={'h00,'hffffff};//assigned to entire structure
    $display($stime,,,"SUR=%h",SUR);
    $display("");
    SUR=0;
    SUR=16'h4324;//value over written for enrire structure
    $display($stime,,,"SUR=%h",SUR);
  end
endmodule

OUTPUT:

Top Level Modules:
       SU
TimeScale is 1 ns / 1 ns

Warning-[CWUC] Concatenations with unsized constants
design.sv, 11
"'b0"
  An unsized constant ''b0' is used in the concatenation. The unsized constant
  will be used as a 32-bit constant.


Warning-[CWUC] Concatenations with unsized constants
design.sv, 11
"'h00ffffff"
  An unsized constant ''h00ffffff' is used in the concatenation. The unsized 
  constant will be used as a 32-bit constant.

Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module SU
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .358 seconds to compile + .397 seconds to elab + .343 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 06:24 2024
         0  SUR=ffxxxxxx
         0  SUR intr=ff

         0  SUR=00ffffff

         0  SUR=00004324
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Thu Jul 25 06:24:37 2024
