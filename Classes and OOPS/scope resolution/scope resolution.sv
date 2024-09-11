class parent;
  bit[31:0]data;
  static int id;
  
  static function void display(int id);
    $display("id=%0d",id);
  endfunction
endclass
module tb;
  initial begin
    parent::id=5;
    parent::display(parent::id);
  end
endmodule
  

OUTPUT:

id=5
