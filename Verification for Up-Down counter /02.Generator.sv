class generator;
  mailbox gen_to_drv;
  transaction tr;
  function new(mailbox gen_to_drv);
    this.gen_to_drv=gen_to_drv;
  endfunction
  task run();
    forever begin
      tr=new();
      tr.randomize();
      gen_to_drv.put(tr);
      //tr.display("Generator");
      #10;
    end
  endtask
endclass

  
