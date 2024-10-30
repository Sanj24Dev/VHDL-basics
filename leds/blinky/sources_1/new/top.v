`timescale 1ns / 1ps

module top(
input switch,       // for input
output led          // for output
    );

assign led = switch; 

endmodule
