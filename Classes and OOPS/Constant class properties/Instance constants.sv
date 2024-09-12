class constants;
  bit[7:0]data;
  const int id;
  function new();
    data=100;
    id=2;
  endfunction
  
  function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
  
endclass
module instance_const;
  constants ct;
  initial begin
    ct=new();
    ct.display();
  end
endmodule


OUTPUT:

xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
data=100,id=2
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
