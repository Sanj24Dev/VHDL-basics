`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 21:28:18
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;

reg switch = 0;
wire led;

top uut (
    .switch(switch),
    .led(led)
);


integer k = 0;
initial
begin
    switch = 0;
    // infinitely toggle the switch every 10ns
    forever
    begin
        if(switch)
            #10 switch = 0;
        else
            #10 switch = 1;
    end
end

endmodule
