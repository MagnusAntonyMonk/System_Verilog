module datatypes_sv();
  bit single_bit_data;       //default value is 0
  bit [3:0]multi_bit_data;   //default value is 0
  byte byte_data;            //default value is 0
  int int_data;              //default value is 0
  integer integer_data;      //default value is xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  logic[2:0]logic_data_type; //default value is xxx
  longint longint_data;      //default value is 0
  real real_data;            //default value is 0
  shortint shortint_data;    //default value is 0
  time time_data;            //default value is 0
  
  initial begin
    
    $display("\nBefore initialization Default value of single bit data = %0b", single_bit_data);
    $display("Before initialization Default value of 4 bit data = %0b", multi_bit_data);
    $display("\nBefore initialization Default value of byte data = %0b", byte_data);
    $display("\nBefore initialization Default value of int data = %0b", int_data);
    $display("\nBefore initialization Default value of integer data = %0b", integer_data);
    $display("\nDefault value of logic data type =%b",logic_data_type);
    $display("\nBefore initialization Default value of longint = %0b",longint_data);
    $display("\nBefore initialization Default value of real = %0d",real_data);
    $display("\nBefore initialization Default value of shortint = %0b",shortint_data);
    $display("\nBefore initialization initial value of time = %0t",time_data);
  
     single_bit_data =1;  
     multi_bit_data = 4'b1100;
     byte_data=8'b10101101;
     int_data = 32'b110100101010;
     integer_data = 32'b11x0_101x_1xz0_0111;
     logic_data_type=3'b101;
     longint_data = 64'b11x01xz001x01010;
     shortint_data = 16'b1101001010101001;
     #5;
     time_data = $time;
       
    $display("\nAfter initialization value of single bit data = %0b", single_bit_data);
    $display("After initialization value of 4 bit data = %0b", multi_bit_data);
    $display("\nAfter initialization value of byte data in binary format = %0b", byte_data);
    $display("After initialization value of byte data in decimal form signed 2's complement = %0d\n", byte_data);
    $display("\nAfter initialization value of integer = %0b\n", integer_data);
    $display("\nValue of logic data type  after initialization =%b",logic_data_type);
    $display("\nAfter initialization value of longint = %0b\n", longint_data);
    $display("\nAfter initialization value of real = %f\n", real_data);
    $display("\nAfter initialization value of shortint = %0b", shortint_data);
    $display("\nAfter initialization value of time = %0t\n", time_data);
    
 
    multi_bit_data = 4'b11xz;
    int_data = 2147483647;
    shortint_data = 32767;
  
   $display("\nAfter assign x and z, value of 4 bit data = %0b\n", multi_bit_data);
   $display("\nAfter initialization maximum value of int = %0b\n", int_data);
   $display("\nAfter initialization maximum value of shortint = %0b\n", shortint_data);
    
  end
endmodule












SOLUTION BASED ON SIMULATION:





[2024-07-17 10:56:05 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
WARNING VCP7111 "BIT/INTEGER value expected for format specifier %d as parameter real_data<real>." "design.sv" 22  77
MESSAGE "Unit top modules: datatypes_sv."
SUCCESS "Compile success 0 Errors 1 Warnings  Analysis time: 0[s]."
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
# SLP: 10 (100.00%) signals in SLP and 0 interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4670 kB (elbread=427 elab2=4108 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 
# KERNEL: Before initialization Default value of single bit data = 0
# KERNEL: Before initialization Default value of 4 bit data = 0
# KERNEL: 
# KERNEL: Before initialization Default value of byte data = 0
# KERNEL: 
# KERNEL: Before initialization Default value of int data = 0
# KERNEL: 
# KERNEL: Before initialization Default value of integer data = xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# KERNEL: 
# KERNEL: Default value of logic data type =xxx
# KERNEL: 
# KERNEL: Before initialization Default value of longint = 0
# KERNEL: 
# KERNEL: Before initialization Default value of real = 0
# KERNEL: 
# KERNEL: Before initialization Default value of shortint = 0
# KERNEL: 
# KERNEL: Before initialization initial value of time = 0
# KERNEL: 
# KERNEL: After initialization value of single bit data = 1
# KERNEL: After initialization value of 4 bit data = 1100
# KERNEL: 
# KERNEL: After initialization value of byte data in binary format = 10101101
# KERNEL: After initialization value of byte data in decimal form signed 2's complement = -83
# KERNEL: 
# KERNEL: 
# KERNEL: After initialization value of integer = 11x0101x1xz00111
# KERNEL: 
# KERNEL: 
# KERNEL: Value of logic data type  after initialization =101
# KERNEL: 
# KERNEL: After initialization value of longint = 1100100001001010
# KERNEL: 
# KERNEL: 
# KERNEL: After initialization value of real = 0.000000
# KERNEL: 
# KERNEL: 
# KERNEL: After initialization value of shortint = 1101001010101001
# KERNEL: 
# KERNEL: After initialization value of time = 5
# KERNEL: 
# KERNEL: 
# KERNEL: After assign x and z, value of 4 bit data = 1100
# KERNEL: 
# KERNEL: 
# KERNEL: After initialization maximum value of int = 1111111111111111111111111111111
# KERNEL: 
# KERNEL: 
# KERNEL: After initialization maximum value of shortint = 111111111111111
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
    
  
  
