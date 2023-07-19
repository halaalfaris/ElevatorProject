// Right 7 segment driver

module RightSegDriver (A0, B0, C0, D0, a, b, c, d, e, f, g);
input A0, B0, C0, D0;
output a, b, c, d, e, f, g;

assign a = (B0&~C0&~D0) | (~A0&~B0&~C0&D0);
assign b = (~A0&B0&~C0&D0) | (~A0&B0&C0&~D0);
assign c = ~A0&~B0&C0&~D0;
assign d = (B0&~C0&~D0) | (B0&C0&D0) | (~A0&~B0&~C0&D0);
assign e = D0 | (B0&~C0);
assign f = (C0&D0) | (~A0&~B0&D0) | (~A0&~B0&C0);
assign g = (A0&C0) | (~A0&~B0&~C0) | (B0&C0&D0);

endmodule