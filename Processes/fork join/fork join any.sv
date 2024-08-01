module fork_join;
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
    join_any
    $display("fork join completed at %0t",$time);
  end
endmodule

OUTPUT:

A started at 0
B started at 0
C started at 0
A completed at 10
fork join completed at 10
B completed at 15
C completed at 20
           V C S   S i m u l a t i o n   R e p o r t 
