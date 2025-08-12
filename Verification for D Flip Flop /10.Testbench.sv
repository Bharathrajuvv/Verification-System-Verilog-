`include "interface.sv"
`include "test.sv"
module tb_top;
  bit clk;
  bit rst;

  int_to vif(clk, rst);

  test tst(vif);
  dff duv(.clk(clk), .rst(rst), .d(vif.d), .q(vif.q));

  initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #200;
    $finish;
  end
  always #5 clk = ~clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
  end
  
endmodule
