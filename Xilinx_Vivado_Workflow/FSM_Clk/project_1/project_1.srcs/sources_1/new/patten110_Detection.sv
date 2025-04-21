`timescale 1ns/1ps
module sequence_detection(
    input logic Pclk,
    input logic rst_n,
    input logic data_in,
    output logic found,
    output logic runindicate
);
//localparam int [27:0] COUNTER_1_SEC_MAX = 1250000;
reg [27:0] counter;
reg Clk_out;
typedef enum logic [2:0]{
IDLE    =   3'b000,
GOT1    =   3'b001,
GOT11   =   3'b010,
GOT110  =   3'b011//,
//FOUND   =   3'b100
}state_t;
state_t P_state,N_state;
always_ff @(posedge Pclk or posedge rst_n) begin
    if(rst_n)begin
        counter     <=  0;
        Clk_out     <=  0;
        //runindicate <=  0;
    end
    else if (counter < 125000000)begin
        counter <= counter + 1;
   end
    else begin
        counter <=  '0;
        Clk_out <= ~Clk_out;
    end
       
end

//always_ff @(negedge Clk_out) begin
    assign runindicate = Clk_out;
//end
always_ff @(posedge Clk_out or posedge rst_n) begin
    if(rst_n)
        P_state <=  IDLE;
    else
        P_state <=  N_state;
end

always_comb begin
    //N_state = P_state;
    case(P_state) 
        IDLE:begin
            if(data_in  ==  1'b1)
                N_state = GOT1;
            end
         GOT1:begin
            if(data_in  ==  1'b1)
                N_state =   GOT11;
            else
                N_state =   IDLE;
         end
          GOT11:begin
            if(data_in  ==  1'b0)
                N_state =   GOT110;
            else
                N_state =   GOT11;
         end
          GOT110:begin
            if(data_in  ==  1'b1)
                N_state =   GOT1;
            else
                N_state =   IDLE;
         end
    default: N_state    =   IDLE;
    endcase
    
end


assign found    =   (P_state==GOT110 && data_in==1'b1);
//assign runindicate = ~counter[27];
endmodule