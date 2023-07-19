// Left segment driver

module LeftSegDriver (A1, B1, C1, D1, a, b, c, d, e, f, g);
input A1, B1, C1, D1;
output a, b, c, d, e, f, g;

assign a = A1&C1;
assign b = 0;
assign c = 0;
assign d = A1&C1;
assign e = A1&C1;
assign f = A1&C1;
assign g = 1;

endmodule