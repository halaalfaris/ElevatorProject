//4 Bit Register
//Used for saving location of elevator

module reg4b(P0, P1, P2, P3, reset, clk, S, Q0, Q1, Q2, Q3);
input P0, P1, P2, P3, S, clk, reset;
output Q0, Q1, Q2, Q3;

wire D0, D1, D2, D3;

//mux2to1(i0, i1, S, out);
mux2to1 (Q0, P0, S, D0);
mux2to1 (Q1, P1, S, D1);
mux2to1 (Q2, P2, S, D2);
mux2to1 (Q3, P3, S, D3);

//dff1(D,Reset,clk,Q,Qnot);
dff1 (D3, reset, clk, Q3, Qnot);
dff1 (D2, reset, clk, Q2, Qnot);
dff1 (D1, reset, clk, Q1, Qnot);
dff1 (D0, reset, clk, Q0, Qnot);

endmodule