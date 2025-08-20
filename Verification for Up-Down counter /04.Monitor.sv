class monitor;
    transaction tr;
  virtual int_to vif;
  mailbox mon_to_sco;
  
  function new(virtual int_to vif,
               mailbox mon_to_sco);
    this.vif = vif;
    this.mon_to_sco = mon_to_sco;
  endfunction
  
  task run();
    forever begin
      @(posedge vif.clk);
      tr = new();
      tr.en = vif.en;
      tr.q  = vif.q;
      mon_to_sco.put(tr);
      tr.display("Monitor");
    end
  endtask
endclass
