// 11 to 4 High priority encoder

module Encoder11to4 (DD0, DD1, DD2, DD3, DD4, DD5, DD6, DD7, DD8, DD9, DD10, D0, D1, D2, D3, V);
input DD0, DD1, DD2, DD3, DD4, DD5, DD6, DD7, DD8, DD9, DD10;
output D0, D1, D2, D3, V;

assign V = DD0 | DD1 | DD2 | DD3 | DD4 | DD5 | DD6 | DD7 | DD8 | DD9 | DD10;

assign D0 = (~DD10&DD9) | (~DD10&~DD8&DD7) | (~DD10&~DD8&~DD6&DD5) | (~DD10&~DD8&~DD6&~DD4&DD3) | (~DD10&~DD8&~DD6&~DD4&~DD2&DD1);
assign D1 = (~DD10&~DD9&DD8) | (~DD10&~DD9&DD7) | (~DD10&~DD9&~DD6&~DD5&DD4) | (~DD10&~DD9&~DD6&~DD5&DD3) | (~DD10&~DD9&~DD6&~DD5&~DD2&~DD1&DD0);
assign D2 = (~DD10&~DD9&~DD8&~DD7&DD6) | (~DD10&~DD9&~DD8&~DD7&DD5) | (~DD10&~DD9&~DD8&~DD7&DD4) | (~DD10&~DD9&~DD8&~DD7&DD3);
assign D3 = (~DD10&~DD9&~DD8&~DD7&~DD6&~DD5&~DD4&~DD3&DD2) | (~DD10&~DD9&~DD8&~DD7&~DD6&~DD5&~DD4&~DD3&DD1) | (~DD10&~DD9&~DD8&~DD7&~DD6&~DD5&~DD4&~DD3&DD0);

endmodule