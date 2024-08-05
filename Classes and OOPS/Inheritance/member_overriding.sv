class A;
  int age=10;
  bit [31:0]addr=64'hAB;
  function void display();
    $display("age=%0d",age);
    $display("addr=%0h",addr);
  endfunction
endclass
class B extends A;
  int age=20;
  bit[31:0]addr=64'hCD;
  function void display();
    $display("age=%0d",age);
    $display("addr=%0h",addr);
  endfunction
endclass
module class_member_overriding;
  initial begin
    B b_tr;
    b_tr=new();
    b_tr.display();
  end
endmodule


OUTPUT:
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4745 kB (elbread=455 elab2=4145 kernel=144 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: age=20
# KERNEL: addr=cd
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
