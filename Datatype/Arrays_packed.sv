module arrays_packed;
  bit [3:0]a;
  reg [15:0]b;
  logic [7:0]c;
  initial begin
    a = 4'b1010;
    b = 16'hffff;
    c = 8'h10;
    
    $display("The assigning of packed arrays as follows:");
    
    foreach (a[i]) begin
      $display("a[%0d] = %0b", i, a[i]);
    end
    foreach (b[i]) begin
      $display("b[%0d] = %0b", i, b[i]);
    end
    foreach (c[i]) begin
      $display("c[%0d] = %0b", i, c[i]);
    end
  end
endmodule



OUTPUT:
[2024-07-18 08:39:17 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: arrays_packed."
SUCCESS "Compile success 0 Errors 0 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2023.04.112.8911 built for Linux64 on May 12, 2023.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2023 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 6 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4665 kB (elbread=427 elab2=4104 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The assigning of packed arrays as follows:
# KERNEL: a[3] = 1
# KERNEL: a[2] = 0
# KERNEL: a[1] = 1
# KERNEL: a[0] = 0
# KERNEL: b[15] = 1
# KERNEL: b[14] = 1
# KERNEL: b[13] = 1
# KERNEL: b[12] = 1
# KERNEL: b[11] = 1
# KERNEL: b[10] = 1
# KERNEL: b[9] = 1
# KERNEL: b[8] = 1
# KERNEL: b[7] = 1
# KERNEL: b[6] = 1
# KERNEL: b[5] = 1
# KERNEL: b[4] = 1
# KERNEL: b[3] = 1
# KERNEL: b[2] = 1
# KERNEL: b[1] = 1
# KERNEL: b[0] = 1
# KERNEL: c[7] = 0
# KERNEL: c[6] = 0
# KERNEL: c[5] = 0
# KERNEL: c[4] = 1
# KERNEL: c[3] = 0
# KERNEL: c[2] = 0
# KERNEL: c[1] = 0
# KERNEL: c[0] = 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
