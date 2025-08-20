program test(int_to vif);
  environment env;
  initial begin
    env=new(vif);
    env.run();
  end
endprogram
