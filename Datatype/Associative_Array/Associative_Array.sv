module associative_array;
  // Define associative arrays
  int numbers[*];
  string cars[string];

  initial begin
    // Initialize the associative arrays with key-value pairs
    numbers = '{10:20, 30:40, 50:60};
    cars = '{"Toyota":"Corolla", "Ford":"Mustang", "Honda":"Civic", "Chevrolet":"Camaro", "Tesla":"Model S", "BMW":"3 Series", "Mercedes-Benz":"C-Class", "Audi":"A4", "Lexus":"RX", "Porsche":"911"};
    
    // Display the contents of the associative arrays
    $display("Associative array:");
    
    $display("numbers:");
    foreach(numbers[key]) begin
      $display("%0d:%0d", key, numbers[key]);
    end

    $display("cars:");
    foreach(cars[key]) begin
      $display("%s:%s", key, cars[key]);
    end
  end
endmodule




OUTPUT:


Top Level Modules:
       associative_array
TimeScale is 1 ns / 1 ns

Warning-[IUWI] Illegal Use of Wildcard Index
design.sv, 15
"numbers"
  foreach (numbers [key] ) begin
  $display( ...
  Foreach has wildcard indexed Associative Array
  This will be an error in a future release

Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module associative_array
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .311 seconds to compile + .317 seconds to elab + .302 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 23 00:59 2024
Associative array:
numbers:
10:20
30:40
50:60
cars:
Audi:A4
BMW:3 Series
Chevrolet:Camaro
Ford:Mustang
Honda:Civic
Lexus:RX
Mercedes-Benz:C-Class
Porsche:911
Tesla:Model S
Toyota:Corolla
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.320 seconds;       Data structure size:   0.0Mb
Tue Jul 23 00:59:34 2024
