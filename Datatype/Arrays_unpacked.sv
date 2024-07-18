module arrays_unpacked;
  int a[10];
  byte b[8];
  initial begin
    $display("The assigning of unpacked arrays as follows:");
    
    foreach(a[i])begin
      a[i]=$urandom_range(10,30);
      $display("a[%0d]=%0d",i,a[i]);
    end
    
     
    foreach(b[i])begin
      b[i]=$urandom_range(10,30);
      $display("b[%0d]=%0d",i,b[i]);
    end
  end
endmodule
    


OUTPUT:
[2024-07-18 09:08:37 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
MESSAGE "Unit top modules: arrays_unpacked."
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
# SLP: 2 (50.00%) signals in SLP and 2 (50.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4665 kB (elbread=427 elab2=4104 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: The assigning of unpacked arrays as follows:
# KERNEL: a[0]=26
# KERNEL: a[1]=13
# KERNEL: a[2]=20
# KERNEL: a[3]=11
# KERNEL: a[4]=23
# KERNEL: a[5]=18
# KERNEL: a[6]=27
# KERNEL: a[7]=16
# KERNEL: a[8]=15
# KERNEL: a[9]=13
# KERNEL: b[0]=25
# KERNEL: b[1]=13
# KERNEL: b[2]=18
# KERNEL: b[3]=19
# KERNEL: b[4]=13
# KERNEL: b[5]=26
# KERNEL: b[6]=22
# KERNEL: b[7]=16
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
