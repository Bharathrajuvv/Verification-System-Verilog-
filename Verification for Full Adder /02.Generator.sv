class generator;
  transaction tr;
  mailbox gen_to_drv;

  function new (mailbox gen_to_drv);
    this.gen_to_drv = gen_to_drv;
  endfunction

  task run;
    repeat(6) begin
      tr = new();
      tr.randomize();
      //tr.display("Generator");
      gen_to_drv.put(tr);
      #10;
    end
  endtask
endclass
