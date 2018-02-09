// Frequency counter
// Developed By: Thomas Spencer
//
// Top module for Frequency counter
//
// I never got this module working, but I've left comments so you can see
// my thought process when I was creating it.
module TopFreq (
    input signal, clk,
    output reg [6:0] Seg, reg [3:0] Dig
);


wire [31:0] freq_bin;
wire [3:0] D0, D1, D2, D3;
wire [6:0] S0, S1, S2, S3;

reg [1:0] i;

//First find the frequency using the clock and signal
freq_counter (
    .clk(clk),
    .signal(signal),
    .freq(freq_bin)
     );

//Turn the frequency into a BCD value
BinToBCD (
    .freq(freq_bin),
    .B0(D0),
    .B1(D1),
    .B2(D2),
    .B3(D3)
);

//Take each BCD value and put it on a segment display
BCDtoSeg (
    .B0(D0),
    .S0(S0)
); 
BCDtoSeg (
    .B1(D1),
    .S1(S1)
); 
BCDtoSeg (
    .B2(D2),
    .S2(S2)
); 
BCDtoSeg (
    .B3(D3),
    .S3(S3)
); 

//2 to 4 decoder and continuously udpating display
always @(clk)
          begin
            i = i + 1;//Repeats through values 00, 01, 10, 11
            if (i == 0)
                Dig = 4'b1110;//Corresponding digit
            if (i == 0)
                Seg = S0;//Corresponding segment display
            if (i == 1)
                Dig = 4'b1101;
            if (i == 1)
                Seg = S1;
            if (i == 2)
                Dig = 4'b1011;
            if (i == 2)
                Seg = S2;
            if (i == 3)
                Dig = 4'b0111;
            if (i == 3)
                Seg = S3;
            
            
          end

endmodule
        

