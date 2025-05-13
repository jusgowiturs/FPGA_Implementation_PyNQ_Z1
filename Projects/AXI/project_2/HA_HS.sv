module HA_HS(
input logic clk,

input logic A,
input logic B,
input logic M,
output logic out,
output logic out_extra 
);
always_ff @(posedge clk)
if(M == 0 )
begin
out <=  A ^ B;
out_extra <= A & B;
end
else
begin
out <=  A ^ B;
out_extra <= (~A) & B;

end

endmodule