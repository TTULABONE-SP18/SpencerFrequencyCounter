// Frequency counter
// Developed By: Thomas Spencer
//
// Implement a frequency counter
//
module freq_counter (
    input signal, clk,
    output reg [31:0] freq
);

reg [31:0] counter = 0;
reg [31:0] cycles = 0;
reg [31:0] Startcount = 0;
reg [31:0] Endcount = 0;

// Implement the frequency counter
always@(posedge clk)
begin
    counter = counter + 1;
end
always@(posedge signal)
begin
    Startcount = Endcount;
    Endcount = counter;
    cycles = Endcount - Startcount;
    freq = 100000000 / cycles;
    //freq = cycles;  //Uncomment this line to see # of cycles in the waveform
end


endmodule