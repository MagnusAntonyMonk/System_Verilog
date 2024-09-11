class transaction;
  bit[4:0]data;
  local int id;
  function new();
    data=30;
    id=15;
  endfunction
  
  function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
endclass
module tb;
  transaction tr;
  initial begin
    tr=new();
    tr.display();
  end
endmodule


OUTPUT:


# run -all
# data=30,id=15
# exit
