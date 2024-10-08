class transaction#(parameter size=2,type dtype = bit[2:0]);
  bit[size-1:0] data;
  dtype id;
  function void display();
    $display("data=%0d, id=%0d",data,id);
  endfunction
endclass
module tb;
  transaction tr1;
  transaction #(3,int)tr2;
  initial begin
    tr1=new();
    tr2=new();
    tr1.data=7;
    tr1.id=15;
    tr2.data=7;
    tr2.id=15;
    tr1.display();
    tr2.display();
  end
endmodule


OUTPUT:

# run -all
# data=3, id=7
# data=7, id=15
# exit
