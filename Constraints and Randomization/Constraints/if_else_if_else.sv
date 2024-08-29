class if_else_if_else;
  rand bit [7:0] value;
  rand enum {min,min_max, max} degree;

  constraint scale_c { if(degree == min) value < 50;
                      else if(degree == min_max) { value >= 30; value <= 70; }
                       else value >= 50;
                     }
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
degree = min_max, value = 40
degree = min, value = 25
degree = min, value = 11
degree = min_max, value = 64
degree = max, value = 50
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
