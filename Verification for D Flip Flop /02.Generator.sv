class generator;
  transaction tr;
  mailbox gen_to_drv;
  function new(mailbox gen_to_drv);
    this.gen_to_drv=gen_to_drv;
  endfunction
  
  task run();
    for(int i=0; i<16; i++)begin
      tr=new();
      tr.randomize();
      gen_to_drv.put(tr);
      #10;
      tr.display("Generator");
    end
  endtask
endclass
