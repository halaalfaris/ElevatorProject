// 4 Bit comparator 

module comparator4b (A0, A1, A2, A3, B0, B1, B2, B3, ABigger, ASmaller, equals);
input A0, A1, A2, A3, B0, B1, B2, B3;
output ABigger, ASmaller, equals;

wire A0Bigger, A0Smaller, equals0, A1Bigger, A1Smaller, equals1, A2Bigger, A2Smaller, equals2, A3Bigger, A3Smaller, equals3;
wire and0, and1, and2, and3, and4, and5, and6, and7;

//comparator1b (A, B, ABigger, ASmaller, equals);
comparator1b (A0, B0, A0Bigger, A0Smaller, equals0);
comparator1b (A1, B1, A1Bigger, A1Smaller, equals1);
comparator1b (A2, B2, A2Bigger, A2Smaller, equals2);
comparator1b (A3, B3, A3Bigger, A3Smaller, equals3);

Andgate2 (and0, equals3, A2Smaller);
Andgate2 (and1, equals3, equals2);
Andgate2 (and2, equals3, A2Bigger);
Andgate2 (and3, and1, equals1);
Andgate2 (and4, and1, A1Smaller);
Andgate2 (and5, and1, A1Bigger);
Andgate2 (and6, and3, A0Smaller);
Andgate2 (and7, and3, A0Bigger);

Andgate2 (equals, and3, equals0);

Orgate4 (ABigger, A3Bigger, and2, and5, and7);

Orgate4 (ASmaller, A3Smaller, and0, and4, and6); 

endmodule