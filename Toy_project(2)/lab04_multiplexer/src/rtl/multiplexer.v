module multiplexer (
    mux_in, 
    mux_signal,
    mux_out
);

  input [3:0] mux_in;
  input [1:0] mux_signal;
  output mux_out;
  reg mux_out;

  always @ (mux_in or mux_signal)
  begin
    if (mux_signal == 2'b00)
       mux_out = mux_in[0];
    else if (mux_signal == 2'b01)
        mux_out = mux_in[1];
    else if (mux_signal == 2'b10)
        mux_out = mux_in[2];
    else if (mux_signal == 2'b11) 
        mux_out = mux_in[3];
  end

 // assign X = mux_out[0]||mux_out[1]||mux_out[2]||mux_out[3];
/*
  assign mux_out = (mux_in[0] && ~mux_signal[1] && ~mux_signal[0])
                      ||(mux_in[1] && ~mux_signal[1] && mux_signal[0])
                      ||(mux_in[2] && mux_signal[1] && ~mux_signal[0])
                      ||(mux_in[3] && mux_signal[1] && mux_signal[0]);
  */                    

endmodule
