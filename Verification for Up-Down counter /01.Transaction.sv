class transaction;
  rand bit en;
  bit clk,rst;
  bit [3:0]q;
  
constraint c_en {
  en inside {0, 1};}

  
   function void display(string name);
    $display("========================%s=====================",name);
     $display("time = %0t,clk=%0d rst=%0d en=%0d => q=%0d",$time,clk,rst,en,q);
  endfunction
endclass
