class monitor;
  virtual add_if vif;
  mailbox mon_to_sco;
  transaction tr;

  function new(virtual add_if vif, mailbox mon_to_sco);
    this.vif = vif;
    this.mon_to_sco = mon_to_sco;
  endfunction

  task run;
    repeat(6) begin
      #10;
      tr = new();
      tr.a = vif.a;
      tr.b = vif.b;
      tr.c = vif.c;
      tr.sum = vif.sum;
      tr.carry = vif.carry;
      mon_to_sco.put(tr);
      tr.display("Monitor");
    end
  endtask
endclass
