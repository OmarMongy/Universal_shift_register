module univ_shift_reg_tb ();
parameter N =4;
reg clk, reset_n, MSB, LSB;
reg [N-1:0] I;
reg [1:0] sel;
wire [N-1:0]Q;

univ_shift_reg uut (
        .clk(clk),
        .reset_n(reset_n),
        .I(I),
        .MSB(MSB),
        .LSB(LSB),
        .sel(sel),
        .Q(Q)
);
localparam T =20;
always
begin
       clk = 1'b0;
       #(T/2)
       clk = 1'b1;
       #(T/2);
end
 
 initial
 begin
I = 4'b0101;
reset_n = 1'b0;
#T
reset_n = 1'b1;
sel = 2'b11;
#(2*T)
MSB = 1'b1;
sel = 2'b01;
#(2*T)
LSB = 1'b0;
sel = 2'b10;
#T
LSB = 1'b1;
#T
sel = 2'b00;
#(2*T)
$stop;
 end 
endmodule
