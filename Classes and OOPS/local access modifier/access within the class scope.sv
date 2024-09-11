class transaction;
  bit[4:0]data;
  local int id;
  function new();
    data=30;
    id=15;
    display();
  endfunction
  
  local function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
endclass
module tb;
  transaction tr;
  initial begin
    tr=new();
  end
endmodule

OUTPUT:

Top level design units:
		$unit_0x4ccdf83b
		tb
Loading snapshot worklib.tb:sv .................... Done
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
data=30,id=15
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
