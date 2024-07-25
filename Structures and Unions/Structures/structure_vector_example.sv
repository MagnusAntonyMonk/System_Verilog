module Structure_vector_example;
  typedef struct packed{
    logic[3:0] nibble1;
    logic[7:0] byte1;
    logic[3:0] nibble2;
  } my_struct;
  
  //declaring a variable name for the structure
  my_struct mystruct;
  
  initial begin
    //assigning values
    $display("");
    mystruct.nibble1=4'hf;
    mystruct.byte1=8'hAB;
    mystruct.nibble2=4'hE;
    //display the values
    $display("");
    $display("nibble=%h",mystruct.nibble1);
    $display("byte=%h",mystruct.byte1);
    $display("nibble2=%h",mystruct.nibble2);
    //accessing the values using vector
    $display("");
    $display("mystruct[15:8]=%h",mystruct[15:8]);
    $display("mystruct[7:4]=%h",mystruct[7:4]);
    $display("mystruct[3:0]=%h",mystruct[3:0]);
  end
endmodule
    
OUTPUT:


Top Level Modules:
       Structure_vector_example
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module Structure_vector_example
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .466 seconds to compile + .515 seconds to elab + .435 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 06:13 2024


nibble=f
byte=ab
nibble2=e

mystruct[15:8]=fa
mystruct[7:4]=b
mystruct[3:0]=e
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Thu Jul 25 06:13:47 2024
