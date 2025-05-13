`timescale 1ns/1ps
module sequence_detection(
    input logic Pclk,
    input logic rst_n,
    input logic data_in,
    output logic found,
    output logic runindicate
);
typedef enum logic [2:0]{
IDLE    =   3'b000,
GOT1    =   3'b001,
GOT11   =   3'b010,
GOT110  =   3'b011,
FOUND   =   3'b100
}state_t;
state_t P_state,N_state;

always_ff @(posedge Pclk or negedge rst_n) begin
    if(!rst_n)
        P_state <=  IDLE;
    else
        P_state <=  N_state;
end

always_comb begin
    N_state = P_state;
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
            if(data_in  ==  1'b1)
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
assign runindicate = (P_state == GOT1);
endmodule