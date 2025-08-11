class environment;
  agent agt;
  scoreboard sco;
  mailbox mon_to_sco; 

  function new(virtual add_if vif);
    mon_to_sco = new();       
    agt = new(vif, mon_to_sco);  
    sco = new(mon_to_sco);       
  endfunction

  task run();
    fork
      agt.run();
      sco.run();
    join
  endtask
endclass
