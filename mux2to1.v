//2-to-1 mux

module mux2to1 (i0, i1, S, out);
input i0, i1, S;
output out;

assign out = ~S & i0 | S & i1;

endmodule