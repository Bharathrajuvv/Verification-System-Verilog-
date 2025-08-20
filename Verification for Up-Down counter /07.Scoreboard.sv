class scoreboard;
  mailbox mon_to_sco;
  transaction tr;
  bit [3:0] prev_q = 0;
  bit first = 1;

  function new(mailbox mon_to_sco);
    this.mon_to_sco = mon_to_sco;
  endfunction

  task run();
    forever begin
      tr = new();
      mon_to_sco.get(tr);
      tr.display("Scoreboard");

      if (first) begin
        $display("+++++++++++ First Cycle (No Check) +++++++++++++");
        first = 0;
      end
      else if (tr.en && tr.q == prev_q + 1)
        $display("+++++++++++ PASS (INC) +++++++++++++");
      else if (!tr.en && tr.q == prev_q - 1)
        $display("+++++++++++ PASS (DEC) +++++++++++++");
      else
        $display("+++++++++++ FAIL +++++++++++++");

      prev_q = tr.q;
    end
  endtask
endclass
