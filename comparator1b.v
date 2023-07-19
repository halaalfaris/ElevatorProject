// 1 Bit comparator 

module comparator1b (A, B, ABigger, ASmaller, equals);
input A, B;
output ABigger, ASmaller, equals;

wire notA, notB;

Invgate (notA, A);
Invgate (notB, B);

Andgate2 (ASmaller, notA, B);
Andgate2 (ABigger, notB, A);

Norgate (equals, ASmaller, ABigger);

endmodule