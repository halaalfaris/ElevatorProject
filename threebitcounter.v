module threebitcounter (Reset, clk, C0, C1, C2, zero_count);
input Reset, clk;
output C0, C1, C2, zero_count;

Xnorgate (D1,C1,C0);

Orgate2 (W1,C0,C1);
Xnorgate (D2,C2,W1);

dff1 Q2(D2,Reset,clk,C2,C2not);
dff1 Q1(D1,Reset,clk,C1,C1not);
dff1 Q0(C0not,Reset,clk,C0,C0not);

Andgate3 (zero_count,C1not,C2not,C0not);


endmodule
