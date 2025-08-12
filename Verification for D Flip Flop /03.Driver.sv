class driver;
  virtual int_to vif;
  mailbox gen_to_drv;
  transaction tr;
  function new(mailbox gen_to_drv, virtual int_to vif);
    this.gen_to_drv = gen_to_drv;
    this.vif = vif;
  endfunction
  task run();
    for(int i=0; i<16; i++)begin
     // @(posedge vif.clk);
      gen_to_drv.get(tr);
      vif.d <= tr.d;
      tr.display("Driver");
    end
  endtask
endclass
