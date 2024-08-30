class ABC;
  rand bit[3:0] array [5];
  constraint c1{foreach(array[i])
  {
    array[i]==i;
  }}
    
 endclass
 module constraint_ex;
   ABC abc=new();
   initial begin
     abc.randomize();
     $display("array=%p",abc.array);
   end
 endmodule


OUTPUT:

array='{'h0, 'h1, 'h2, 'h3, 'h4} 
           V C S   S i m u l a t i o n   R e p o r t



//MULTIDIMENSIONAL ARRAY USING FOREACH LOOP


class ABC;
  rand bit[4:0][3:0] array [2][5];
  constraint c1{
    foreach(array[i]){
      foreach (array[i][j]){
        foreach (array[i][j][k]){
          if(k%2==0)
            array[i][j][k]==10;
          else
            array[i][j][k]==5;
        }
      }
    }
  }
          
endclass
 module constraint_ex;
   ABC abc=new();
   initial begin
     abc.randomize();
     $display("array=%p",abc.array);
   end
 endmodule



OUTPUT:


array='{'{'ha5a5a, 'ha5a5a, 'ha5a5a, 'ha5a5a, 'ha5a5a}, '{'ha5a5a, 'ha5a5a, 'ha5a5a, 'ha5a5a, 'ha5a5a}} 
           V C S   S i m u l a t i o n   R e p o r t 
