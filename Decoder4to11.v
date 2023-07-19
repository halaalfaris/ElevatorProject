// 11 to 4 Decoder

module Decoder4to11 (I0, I1, I2, I3, QQ0, QQ1, QQ2, QQ3, QQ4, QQ5, QQ6, QQ7, QQ8, QQ9, QQ10);
input I0, I1, I2, I3;
output QQ0, QQ1, QQ2, QQ3, QQ4, QQ5, QQ6, QQ7, QQ8, QQ9, QQ10;

assign QQ0 = ~I3&~I2&~I1&~I0;
assign QQ1 = ~I3&~I2&~I1&I0;
assign QQ2 = ~I3&~I2&I1&~I0;
assign QQ3 = ~I3&~I2&I1&I0;
assign QQ4 = ~I3&I2&~I1&~I0;
assign QQ5 = ~I3&I2&~I1&I0;
assign QQ6 = ~I3&I2&I1&~I0;
assign QQ7 = ~I3&I2&I1&I0;
assign QQ8 = I3&~I2&~I1&~I0;
assign QQ9 = I3&~I2&~I1&I0;
assign QQ10 = I3&~I2&I1&~I0;


endmodule