class transaction;
  static int s_id;
  int id;
  
  static function void incr_sid();
    s_id++;
  endfunction
  
  function void incr_id();
    s_id++;
    id++;
  endfunction
endclass
  module test;
    transaction tr[4];
    initial begin
      foreach(tr[i]) begin
       tr[i]=new();
        tr[i].incr_sid();
        $display("s_id=%0d,id=%0d",tr[i].s_id,tr[i].id);
      end
      tr[0].s_id = 0;// reset to zero
      foreach(tr[i]) begin
        //tr[i]=new(); this result in error because already tr has been already initialized in the 1st loop.
         tr[i].incr_id();
        $display("s_id=%0d,id=%0d",tr[i].s_id,tr[i].id);
      end
    end
  endmodule

OUTPUT:

# s_id=1,id=0
# s_id=2,id=0
# s_id=3,id=0
# s_id=4,id=0
# s_id=1,id=1
# s_id=2,id=1
# s_id=3,id=1
# s_id=4,id=1
# exit


// if reset not given then output 

# s_id=1,id=0
# s_id=2,id=0
# s_id=3,id=0
# s_id=4,id=0
# s_id=5,id=1
# s_id=6,id=1
# s_id=7,id=1
# s_id=8,id=1
# exit
