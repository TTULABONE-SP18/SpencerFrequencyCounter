// Top Module Test
// Developed By: Thomas Spencer
//
// I never got the Top module working, but this is what I would've
// used for a test bench if I had.

module TopTest ();

// Registers for the inputs.
reg signal = 0;
reg clk = 0;

// Wires for the output.
wire [3:0] Dig;
wire [6:0] Seg;

// Create an instance of the "unit under test"
TopFreq uut (
    .signal(signal),
    .clk(clk),
    .Seg(Seg),
    .Dig(Dig)
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