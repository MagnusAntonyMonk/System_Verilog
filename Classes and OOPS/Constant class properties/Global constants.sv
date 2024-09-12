class constants;
  bit[7:0]data;
  const int id=1;
  
  function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
  
endclass
module global_const;
  constants ct;
  initial begin
    ct=new();
    ct.data=100;
    ct.display();
  end
endmodule


OUTPUT:


xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
data=100,id=1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
