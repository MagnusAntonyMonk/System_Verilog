class solvebefore;
  rand bit[3:0]a,b;
  constraint sab{solve a before b;} // This makes the chances of occuring a==6 more 
  constraint c1{if(a==6)b==10;
                else b==8;}
endclass
module tb;
  solvebefore pkt;
  initial begin
    pkt=new();
    repeat(10) begin 
      pkt.randomize();
      $display("a=%0d,b=%0d",pkt.a,pkt.b);
    end
  end
endmodule
  

OUTPUT:

a=13,b=8
a=6,b=10
a=1,b=8
a=2,b=8
a=4,b=8
a=6,b=10
a=8,b=8
a=12,b=8
a=2,b=8
a=13,b=8
           V C S   S i m u l a t i o n   R e p o r t 


//WITHOUT SOLVE_BEFORE CONSTRAINT:


class solvebefore;
  rand bit[3:0]a,b;
  //constraint sab{solve a before b;}
  constraint c1{if(a==6)b==10;
                else b==8;}
endclass
module tb;
  solvebefore pkt;
  initial begin
    pkt=new();
    repeat(10) begin 
      pkt.randomize();
      $display("a=%0d,b=%0d",pkt.a,pkt.b);
    end
  end
endmodule
  

OUTPUT:

a=14,b=8
a=7,b=8
a=8,b=8
a=4,b=8
a=1,b=8
a=7,b=8
a=2,b=8
a=3,b=8
a=4,b=8
a=14,b=8
           V C S   S i m u l a t i o n   R e p o r t 
