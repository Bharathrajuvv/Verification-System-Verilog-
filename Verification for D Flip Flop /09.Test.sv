`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"


program test(int_to vif);
  environment env;
  initial begin
    env = new(vif);
    env.run();
  end
endprogram
