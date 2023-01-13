module demultiplexer (
    demux_in, 
    demux_signal,
    demux_out
);

  input demux_in;
  input [1:0] demux_signal;
  output [3:0] demux_out;
  reg [3:0] demux_out;

  always @ (demux_in or demux_signal)
  begin
    if (demux_signal == 2'b00) 
        demux_out[0] = demux_in;
    else
        demux_out[0] = 0;
  end

  always @ (demux_in or demux_signal)
  begin
    if (demux_signal == 2'b01) 
        demux_out[1] = demux_in;
    else
        demux_out[1] = 0;
  end

  always @ (demux_in or demux_signal)
  begin
    if (demux_signal == 2'b10) 
        demux_out[2] = demux_in;
    else
        demux_out[2] = 0;
  end

  always @ (demux_in or demux_signal)
  begin
    if (demux_signal == 2'b11) 
        demux_out[3] = demux_in;
    else
        demux_out[3] = 0;
  end

endmodule
