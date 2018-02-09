// BinToBCDTest
// Developed By: Thomas Spencer

module BinToBCDTest ();

// Registers for the inputs.
reg [31:0] freq = 0;

// Wires for the output.
wire [3:0] B0;
wire [3:0] B1;
wire [3:0] B2;
wire [3:0] B3;
wire [3:0] B4;
wire [3:0] B5;
wire [3:0] B6;
wire [3:0] B7;
wire [3:0] B8;
wire [3:0] B9;

// Create an instance of the "unit under test"
BinToBCD uut (
      .freq(freq),
      .B0(B0),
      .B1(B1),
      .B2(B2),
      .B3(B3),
      .B4(B4),
      .B5(B5),
      .B6(B6),
      .B7(B7),
      .B8(B8),
      .B9(B9)
);

// TEST PROGRAM GOES HERE
initial begin
  freq[0] = 1;
  #10;
  freq[1] = 1;
  #20;
  freq[2] = 1;
  #30;
  freq[3] = 1;
  #40;
  freq[4] = 1;
  #50;
  freq[5] = 1;
  #60;
  freq[7] = 1;
  #100;
  freq[10] = 1;
  #100;
  freq[15] = 1;
  #100;
  freq[20] = 1;
end

endmodule