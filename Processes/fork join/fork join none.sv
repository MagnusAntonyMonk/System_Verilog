module fork_join_none;
  initial begin
    fork
      begin
        $display("A started at %0t",$time);
        #10;
        $display("A completed at %0t",$time);
      end
      begin
        $display("B started at %0t",$time);
        #15;
        $display("B completed at %0t",$time);
      end
      begin
        $display("C started at %0t",$time);
        #20;
        $display("C completed at %0t",$time);
      end
    join_none
    $display("fork join none completed at %0t",$time);
  end
endmodule


OUTPUT:

fork join none completed at 0
A started at 0
B started at 0
C started at 0
A completed at 10
B completed at 15
C completed at 20
           V C S   S i m u l a t i o n   R e p o r t 
