class transaction;
  static int s_id;
  int id;
  function new();
    s_id++;
    id++;
  endfunction 
endclass
module class_example;
  transaction tr[5];
  initial begin
    foreach(tr[i])begin
      tr[i]=new();
      $display("value of s_id=%0h,id=%0h",tr[i].s_id,tr[i].id);
    end
  end
endmodule



OUTPUT:

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  2 01:32 2024
value of s_id=1,id=1
value of s_id=2,id=1
value of s_id=3,id=1
value of s_id=4,id=1
value of s_id=5,id=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
