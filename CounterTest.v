// FreqCounterTest
// Developed By: Thomas Spencer

module FreqCounterTest ();

// Registers for the inputs.
reg signal = 0;
reg clk = 0;

// Wires for the output.
wire [31:0] freq;

// Create an instance of the "unit under test"
freq_counter uut (
    .signal(signal),
    .clk(clk),
    .freq(freq)
);

// TEST PROGRAM GOES HERE
always begin 
clk = ~clk;
#5;
end
initial begin
  signal = 1;
  #10;
  signal = 0;
  #20;
  signal = 1;
  #30;
  signal = 0;
  #40;
  signal = 1;
  #50;
  signal = 0;
  #60;
  signal = 1;
  #100;
  signal = 0;
  #100;
  signal = 1;
  #100;
  signal = 0;
end

endmodule