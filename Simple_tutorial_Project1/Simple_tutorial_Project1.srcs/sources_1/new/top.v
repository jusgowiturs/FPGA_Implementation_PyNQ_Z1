`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2025 02:00:06 PM
// Design Name: Prabhu Ram
// Module Name: top
// Project Name: Switch LED Interface
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
//
/*
Switch FPGA Pin Configurations
D19 = BTN0
D20 = BTN1
L20 = BTN2
L19 = BTN3
M20 = SW0
M19 = SW1

LED FPGA Pin Configuration
R14 =   LD0
P14 =   LD1
N16 =   LD2
M14 =   LD3

Tri Color LED

N15 =   LD4 Red
G17 =   LD4 Green
L15 =   LD4 Blue

M15 =   LD5 Red
L14 =   LD5 Green
G14 =   LD5 Blue



*/
// https://www.youtube.com/watch?time_continue=112&v=TydenYT-b7s&embeds_referring_euri=https%3A%2F%2Fwww.bing.com%2F&embeds_referring_origin=https%3A%2F%2Fwww.bing.com&source_ve_path=Mjg2NjMsMTM3NzIxLDEzOTExNywyODY2Ng
// https://digilent.com/reference/programmable-logic/pynq-z1/reference-manual?srsltid=AfmBOorSYUBtIdGpNMTcDn6SNYoWd85out-9IS2WSCkuUqJf-D2SiVeX
module top(
input wire switch,
output wire led
    );
    assign led = switch;
endmodule
