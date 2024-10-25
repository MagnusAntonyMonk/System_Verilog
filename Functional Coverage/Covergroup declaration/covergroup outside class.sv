class pack;
  rand bit [1:0]a;
  rand bit [2:0]b;
endclass
pack p =new();
covergroup cgrp ;
  c1: coverpoint p.a; 
  c2: coverpoint p.b ;
endgroup 
module tb;
  cgrp c=new();
initial begin
  repeat (5) begin
    void'(p.randomize());
    c.sample();
$display ("a=%d ; b=%d ; coverage %%=%.2f%%",p.a,p.b,c.get_inst_coverage());
  end
end
endmodule


OUTPUT:

# run -all
# a=3 ; b=2 ; coverage %=18.75%
# a=0 ; b=1 ; coverage %=37.50%
# a=2 ; b=4 ; coverage %=56.25%
# a=1 ; b=2 ; coverage %=68.75%
# a=0 ; b=0 ; coverage %=75.00%
# exit
