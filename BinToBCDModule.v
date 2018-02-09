// Binary to BCD converter
// Developed By: Thomas Spencer
// Based off of algorithm from "http://www.eng.utah.edu/~nmcdonal/Tutorials/BCDTutorial/BCDConversion.html"
//
// Converts a 32 binary number to BCD
//
module BinToBCD (
    input [31:0] freq,
    output reg [3:0] B0, reg [3:0] B1, reg [3:0] B2, reg [3:0] B3, reg [3:0] B4, reg [3:0] B5, reg [3:0] B6, reg [3:0] B7, reg [3:0] B8, reg [3:0] B9
);
integer i;

always@(freq)
begin
    B9 = 4'd0;
    B8 = 4'd0;
    B7 = 4'd0;
    B6 = 4'd0;
    B5 = 4'd0;
    B4 = 4'd0;
    B3 = 4'd0;
    B2 = 4'd0;
    B1 = 4'd0;
    B0 = 4'd0;

    for (i = 31; i >= 0; i = i - 1)
    begin
        if (B9 >= 5)
            B9 = B9 + 3;
        if (B8 >= 5)
            B8 = B8 + 3;
        if (B7 >= 5)
            B7 = B7 + 3;
        if (B6 >= 5)
            B6 = B6 + 3;
        if (B5 >= 5)
            B5 = B5 + 3;
        if (B4 >= 5)
            B4 = B4 + 3;
        if (B3 >= 5)
            B3 = B3 + 3;
        if (B2 >= 5)
            B2 = B2 + 3;
        if (B1 >= 5)
            B1 = B1 + 3;
        if (B0 >= 5)
            B0 = B0 + 3;

        B9 = B9 << 1;
        B9[0] = B8[3];
        B8 = B8 << 1;
        B8[0] = B7[3];
        B7 = B7 << 1;
        B7[0] = B6[3];
        B6 = B6 << 1;
        B6[0] = B5[3];
        B5 = B5 << 1;
        B5[0] = B4[3];
        B4 = B4 << 1;
        B4[0] = B3[3];
        B3 = B3 << 1;
        B3[0] = B2[3];
        B2 = B2 << 1;
        B2[0] = B1[3];
        B1 = B1 << 1;
        B1[0] = B0[3];
        B0 = B0 << 1;
        B0[0] = freq[i];
    end
end

endmodule
        
