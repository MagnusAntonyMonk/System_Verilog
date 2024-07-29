module if_else_ladder;
  int a,b,c;  
         initial begin    
         a = 10;      
         b = 12;   
         c = 13;   
         $display ("Assign the value of a = %0d , b= %0d , c =%0d  " ,a,b,c);    
         $display ("------------------------------------------------------");    
         if (a>b)begin
           $display ("Successfully enters into if block ");  
           $display ("Value of a < b");  
           $display ("----------------------------------");    
          end    
         else if (b<c)begin 
           $display ("Successfully enters into else if block ");  
           $display ("value of b<c");  
           $display ("----------------------------------------------------");  
          end    
          else if (c<0) begin 
            $display ("Successfully enters into second elseif block ");  
           $display ("c is a negative number ");    
           $display ("--------------------------------------------");  
         end    
        $display ("Out from ladder block");  
        end  
endmodule


OUTPUT:

Top Level Modules:
       if_else_ladder
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module if_else_ladder
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .523 seconds to compile + .567 seconds to elab + .509 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 13:39 2024

  
Assign the value of a = 10 , b= 12 , c =13  
------------------------------------------------------
Successfully enters into else if block 
value of b<c
----------------------------------------------------
Out from ladder block

  
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.570 seconds;       Data structure size:   0.0Mb
Mon Jul 29 13:39:12 2024
