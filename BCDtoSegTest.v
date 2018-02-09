// BCDtoSegTest
// Developed By: Thomas Spencer
// Based off of algorithm from "http://verilogcodes.blogspot.com/2015/10/verilog-code-for-bcd-to-7-segment.html"


module BCDtoSegTest ();

// Registers for the inputs.
reg [3:0] BCD = 0;

// Wires for the output.
wire [6:0] Seg;

integer i;

// Create an instance of the "unit under test"
BCDtoSeg uut (
    .BCD(BCD),
    .Seg(Seg)
);

// TEST PROGRAM GOES HERE
    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            BCD = i;
            #10; //wait for 10 ns
        end     
    end

endmodule