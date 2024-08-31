module rand_case;
  integer x; 
  integer cnt_1, cnt_2, cnt_3; 

  initial begin 
    cnt_1 = 0;
    cnt_2 = 0;
    cnt_3 = 0; 
    repeat(100000) begin 
      randcase 
        3 : x = 1; 
        1 : x = 2; 
        4 : x = 3; 
      endcase 
      if(x == 1) begin
        cnt_1++; 
      end
      else if(x == 2) begin
        cnt_2++; 
      end
      else if(x ==3) begin
        cnt_3++; 
      end
    end 
    $display("count_1 = %0d, count_2 = %0d, count_3 = %0d", cnt_1, cnt_2, cnt_3); 
    $display("Probability of count_1 = %0f, count_2 = %0f, count_3 = %0f", (cnt_1/100000.0), (cnt_2/100000.0), (cnt_3/100000.0)); 
  end
endmodule


OUTPUT:


count_1 = 37378, count_2 = 12480, count_3 = 50142
Probability of count_1 = 0.373780, count_2 = 0.124800, count_3 = 0.501420
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sat Aug 31 13:04:25 2024
