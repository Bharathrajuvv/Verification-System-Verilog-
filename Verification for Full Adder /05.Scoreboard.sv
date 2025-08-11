class scoreboard;
  transaction tr;
  mailbox mon_to_sco;
  bit expected_sum, expected_carry;

  function new(mailbox mon_to_sco);
    this.mon_to_sco = mon_to_sco;
  endfunction

  task run;
    repeat(6) begin
      mon_to_sco.get(tr);
      expected_sum   = tr.a ^ tr.b ^ tr.c;
      expected_carry = (tr.a & tr.b) | (tr.b & tr.c) | (tr.c & tr.a);
      tr.display("Scoreboard");
      if ((tr.sum == expected_sum) && (tr.carry == expected_carry))
        $display("+++++ PASS +++++  a=%0b b=%0b c=%0b | sum=%0b carry=%0b", tr.a,tr.b,tr.c,tr.sum,tr.carry);
      else
        $display("+++++ FAIL +++++  a=%0b b=%0b c=%0b | sum=%0b carry=%0b (Expected sum=%0b carry=%0b)", tr.a,tr.b,tr.c,tr.sum,tr.carry,expected_sum,expected_carry);
    end
  endtask
endclass
