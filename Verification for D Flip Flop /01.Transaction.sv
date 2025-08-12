class transaction;
  rand bit d;
  bit clk,rst;
  bit q;
   function void display (string name);
     $display("__________ %s _________", name);
     $display("time=%0t clk=%0b rst=%0d d=%0d q=%0d",$time,clk,rst,d,q);
  endfunction
endclass
  
