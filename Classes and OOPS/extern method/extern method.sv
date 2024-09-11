class transaction;
  int id;
  bit[7:0]data;
  
  extern function void display();
  extern task delay();
endclass
function void transaction::display();
  $display("data=%0d",data);
endfunction
    
task transaction::delay();
  #50;
  $display("time=%0t,id=%0d",$time,id);
endtask
module tb;
  transaction tr;
  initial begin
    tr=new();
    tr.data=5;
    tr.id=2;
    tr.display();
    tr.delay();
  end
endmodule


OUTPUT:

data=5
time=50,id=2
           V C S   S i m u l a t i o n   R e p o r t 
