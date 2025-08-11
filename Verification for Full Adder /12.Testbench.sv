`include "interface.sv"
`include "package.sv"
module tb;
    add_if vif();
    test tst (vif);
    full_adder duv (.a(vif.a), .b(vif.b), .c(vif.c), .sum(vif.sum), .carry(vif.carry));


  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,tb);
  end

  initial begin
    #200;
    $finish;
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 11 12:14 2025
__________ Monitor _________
a = 1, b = 0, c = 1 => sum = 0, carry = 1
__________ Scoreboard _________
a = 1, b = 0, c = 1 => sum = 0, carry = 1
+++++ PASS +++++  a=1 b=0 c=1 | sum=0 carry=1
__________ Monitor _________
a = 0, b = 1, c = 0 => sum = 1, carry = 0
__________ Scoreboard _________
a = 0, b = 1, c = 0 => sum = 1, carry = 0
+++++ PASS +++++  a=0 b=1 c=0 | sum=1 carry=0
__________ Monitor _________
a = 1, b = 1, c = 0 => sum = 0, carry = 1
__________ Scoreboard _________
a = 1, b = 1, c = 0 => sum = 0, carry = 1
+++++ PASS +++++  a=1 b=1 c=0 | sum=0 carry=1
__________ Monitor _________
a = 1, b = 0, c = 0 => sum = 1, carry = 0
__________ Scoreboard _________
a = 1, b = 0, c = 0 => sum = 1, carry = 0
+++++ PASS +++++  a=1 b=0 c=0 | sum=1 carry=0
__________ Monitor _________
a = 0, b = 0, c = 1 => sum = 1, carry = 0
__________ Scoreboard _________
a = 0, b = 0, c = 1 => sum = 1, carry = 0
+++++ PASS +++++  a=0 b=0 c=1 | sum=1 carry=0
__________ Monitor _________
a = 0, b = 1, c = 1 => sum = 0, carry = 1
__________ Scoreboard _________
a = 0, b = 1, c = 1 => sum = 0, carry = 1
+++++ PASS +++++  a=0 b=1 c=1 | sum=0 carry=1
$finish at simulation time                   60
           V C S   S i m u l a t i o n   R e p o r t 
Time: 60 ns
