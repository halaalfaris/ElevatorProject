// 2 to 1 Quad mux 

module quadMux (A0, A1, A2, A3, B0, B1, B2, B3, S, M0, M1, M2, M3);
input A0, A1, A2, A3, B0, B1, B2, B3, S;
output M0, M1, M2, M3;


//mux2to1 (i0, i1, S, out);
mux2to1 (A0, B0, S, M0);
mux2to1 (A1, B1, S, M1);
mux2to1 (A2, B2, S, M2);
mux2to1 (A3, B3, S, M3);

endmodule