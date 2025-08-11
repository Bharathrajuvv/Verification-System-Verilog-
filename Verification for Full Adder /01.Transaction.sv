// transacion block 

class transaction;
  rand bit  a,b,c;
  bit  sum,carry;

  function void display (string name);
    $display("__________ %s _________", name);
    $display("a = %0b, b = %0b, c = %0b => sum = %0b, carry = %0b", a,b,c,sum,carry);
  endfunction
endclass
