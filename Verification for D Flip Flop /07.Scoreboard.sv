class scoreboard;
  transaction tr;
  mailbox mon_to_sco;
  function new(mailbox mon_to_sco);
    this.mon_to_sco = mon_to_sco;
  endfunction
  
  task run();
    forever begin
      mon_to_sco.get(tr);
      tr.display("Scoreboard");
      if(tr.q==tr.d)
        $display("++++++++PASS++++++++");
      else
        $display("++++++++FAIL++++++++");
    end
  endtask
endclass
