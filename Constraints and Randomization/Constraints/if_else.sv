class if_else;
  rand bit [7:0] value;
  rand enum {min, max} degree;

  constraint scale_c { if(degree == min) value < 50;
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
degree = max, value = 143
degree = min, value = 25
degree = max, value = 216
degree = min, value = 19
degree = max, value = 227
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
