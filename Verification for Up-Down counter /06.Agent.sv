class agent;
  generator gen;
  driver drv;
  monitor mon;
  
  mailbox gen_to_drv;
  virtual int_to vif;
  
  function new(virtual int_to vif,mailbox mon_to_sco);
    this.vif=vif;
    gen_to_drv=new();
    gen=new(gen_to_drv);
    drv=new(gen_to_drv,vif);
    mon=new(vif,mon_to_sco);
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
    join_any;
  endtask
endclass
      
    
    
     
