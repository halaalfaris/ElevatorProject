// Valid bit for control Signal 

module Valid (A, B, C, D, V);
input A, B, C, D;
output V;

assign V = ~A | (~B&~C) | (~B&~D);

endmodule