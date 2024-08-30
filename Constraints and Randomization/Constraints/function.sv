class func_ex;
  rand bit[4:0]num;
  rand bit sel;
  constraint c1{num==generate_values(sel);}
  
  function bit[4:0] generate_values(bit sel);
    return(sel?'h10:'hf);
  endfunction
endclass

module constraint_example;
  func_ex pkt=new();
  initial begin
    repeat(5)begin
      pkt.randomize();
      $display("value=%0h",pkt.num);
    end
    $display("value=%0h",pkt.generate_values(1));
  end
endmodule


OUTPUT:

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 30 07:03 2024
value=10
value=f
value=f
value=f
value=10
value=10
           V C S   S i m u l a t i o n   R e p o r t 
