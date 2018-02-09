// BCD to Seg
// Developed By: Thomas Spencer
// Based off of algorithm from "http://verilogcodes.blogspot.com/2015/10/verilog-code-for-bcd-to-7-segment.html"
//
// Displays decimal number from BCD form
//
module BCDtoSeg (
    input [3:0] BCD,
    output reg [6:0] Seg
);

always @(BCD)
    begin
        case (BCD) //case statement
            0 : Seg = 7'b1000000;
            1 : Seg = 7'b1111001;
            2 : Seg = 7'b0100100;
            3 : Seg = 7'b0110000;
            4 : Seg = 7'b0011001;
            5 : Seg = 7'b0010010;
            6 : Seg = 7'b0000010;
            7 : Seg = 7'b1111000;
            8 : Seg = 7'b0000000;
            9 : Seg = 7'b0010000;
            //Default number is 0
            default : Seg = 7'b1000000;
        endcase
    end


endmodule
        

