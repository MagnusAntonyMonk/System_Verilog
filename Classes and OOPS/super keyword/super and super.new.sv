class ParentClass;
    bit [31:0] data;

    function new(bit [31:0] init_data);
        this.data = init_data;
        $display("ParentClass: data = %0h", data);
    endfunction

    function display_data();
        $display("ParentClass display_data: data = %0h", data);
    endfunction
endclass

class ChildClass extends ParentClass;
    bit [31:0] data;

    function new(bit [31:0] parent_data, bit [31:0] child_data);
        // Call ParentClass constructor
        super.new(parent_data);
        // Initialize ChildClass data
        this.data = child_data;
        $display("ChildClass: data = %0h", data);
    endfunction

    function display_data();
        // Call ParentClass method
        super.display_data();
        $display("ChildClass display_data: data = %0h", this.data);
    endfunction
endclass

module test;
    initial begin
        ChildClass obj = new(5, 10);
        obj.display_data();
    end
endmodule


OUTPUT:

ParentClass: data = 5
ChildClass: data = a
ParentClass display_data: data = 5
ChildClass display_data: data = a
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Tue Aug  6 03:01:30 2024
