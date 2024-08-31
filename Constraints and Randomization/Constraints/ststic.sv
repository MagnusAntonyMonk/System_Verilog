class unique_cons;
  rand bit[5:0] array[5];
  rand bit[5:0] val1,val2,val3,val4;
  constraint c1{unique {array};}
  constraint c2{unique {val1,val2,val3,val4};}
  
  function void gen_values();
    $display("val1=%0d,val2=%0d,val3=%0d,val4=%0d",val1,val2,val3,val4);
    $display("array=%p",array);
  endfunction
endclass

module tb;
  unique_cons pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    pkt.gen_values();
  end
endmodule


OUTPUT:


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 31 11:05 2024
val1=21,val2=57,val3=13,val4=12
array='{'h3a, 'h3e, 'h1a, 'h10, 'h2c} 
           V C S   S i m u l a t i o n   R e p o r t









