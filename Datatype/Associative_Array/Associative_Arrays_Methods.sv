module Associative_Arrays_Methods;
  string names[string];
  string variable;
  string val1;

  initial begin
    // Initialize the associative array with key-value pairs
    names = '{"magnus":"antony", "connor":"mcgregor", "nate":"diaz", "nick":"diaz"};
    
    // Display the associative array
    $display("The given string names = %p", names);
    
    // Display the number of elements in the associative array
    $display("Number of elements in array: %0d", names.num());
    $display("Size of array: %0d", names.size());
    
    // Delete an element by key (assuming 'connor' key as an example)
    names.delete("connor");
    $display("Array after deletion: %p", names);
    
    // Check if a specific key exists in the associative array
    if(names.exists("connor"))
      $display("Element 'connor' exists");
    else
      $display("Element 'connor' does not exist");
    
    // Display the first element in the associative array
    if(names.first(variable)) begin
      $display("First element: names[%s] = %s", variable, names[variable]);
    end
    
    // Display the last element in the associative array
    if(names.last(variable)) begin
      $display("Last element: names[%s] = %s", variable, names[variable]);
    end
    
    // Use first and next to iterate through elements
    if (names.first(val1)) begin
      $display("First element: names[%s] = %s", val1, names[val1]);
      while (names.next(val1)) begin
        $display("Next element: names[%s] = %s", val1, names[val1]);
      end
    end

    // Use last and prev to iterate backwards through elements
    if (names.last(val1)) begin
      $display("Last element: names[%s] = %s", val1, names[val1]);
      while (names.prev(val1)) begin
        $display("Previous element: names[%s] = %s", val1, names[val1]);
      end
    end
  end
endmodule



OUTPUT:

Top Level Modules:
       Associative_Arrays_Methods
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module Associative_Arrays_Methods
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .326 seconds to compile + .333 seconds to elab + .343 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 23 02:00 2024
The given string names = '{"connor":"mcgregor", "magnus":"antony", "nate":"diaz", "nick":"diaz"} 
Number of elements in array: 4
Size of array: 4
Array after deletion: '{"magnus":"antony", "nate":"diaz", "nick":"diaz"} 
Element 'connor' does not exist
First element: names[magnus] = antony
Last element: names[nick] = diaz
First element: names[magnus] = antony
Next element: names[nate] = diaz
Next element: names[nick] = diaz
Last element: names[nick] = diaz
Previous element: names[nate] = diaz
Previous element: names[magnus] = antony
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Tue Jul 23 02:00:33 2024
Done
