class if_else;
  rand bit [7:0] value;
  rand enum {min,max} degree;

  constraint scale_c { value == ((degree == min) ? 20: 90); }
endclass

module constraint_example;
  if_else pkt;
  
  initial begin
    pkt = new();
    
    repeat(5) begin
      pkt.randomize();
      $display("degree = %s, value = %0d", pkt.degree.name(), pkt.value);
    end
  end
endmodule


OUTPUT:


xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
degree = max, value = 90
degree = min, value = 20
degree = max, value = 90
degree = max, value = 90
degree = min, value = 20
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
