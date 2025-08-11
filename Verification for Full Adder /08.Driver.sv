class driver;
  virtual add_if vif;
  mailbox gen_to_drv;
  transaction tr;

  function new(mailbox gen_to_drv, virtual add_if vif);
    this.gen_to_drv = gen_to_drv;
    this.vif = vif;
  endfunction

  task run();
    repeat(6) begin
      gen_to_drv.get(tr);
      vif.a <= tr.a;
      vif.b <= tr.b;
      vif.c <= tr.c;
      #10;
    end
  endtask
endclass
