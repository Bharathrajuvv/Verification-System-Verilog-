class monitor;
  virtual int_to vif;
  mailbox mon_to_sco;
  transaction tr;
  function new(virtual int_to vif, mailbox mon_to_sco);
    this.vif = vif;
    this.mon_to_sco = mon_to_sco;
  endfunction
task run();
  for(int i=0; i<16; i++)begin
    tr = new();
    @(negedge vif.clk);
   // tr.clk = vif.clk;  
    //tr.rst = vif.rst; 
    tr.d   = vif.d;
    tr.q   = vif.q;
    mon_to_sco.put(tr);
    tr.display("Monitor");
  end
endtask

endclass

