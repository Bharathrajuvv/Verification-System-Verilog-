class environment;
  agent ag;
  scoreboard sco;
  mailbox mon_to_sco;

  function new(virtual int_to vif);
    mon_to_sco = new();          
    ag = new(vif, mon_to_sco);   
    sco = new(mon_to_sco);       
  endfunction
  
  task run();
    fork
      ag.run();
      sco.run();
    join
  endtask
endclass
