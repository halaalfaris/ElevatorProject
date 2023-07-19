module dff1(D,Reset,clk,Q,Qnot);
input D,clk,Reset;
output Q,Qnot;

Invgate (w1,clk);
Invgate (w2,D);
Invgate (w3,w1);

//SR2(S,R,C,Reset,Q,Qnot);
SR2 (D,w2,w1,Reset,w4,w5);
SR2 (w4,w5,clk,Reset,Q,Qnot);

endmodule


module SR2(S,R,C,Reset,Q,Qnot);
input S,R,C,Reset;
output Q,Qnot;
Invgate (notR,Reset);
Nandgate (w1,S,C);
Nandgate (w2,R,C);
Nandgate (w3,w1,Qnot);
Nandgate (Qnot,w2,Q);
Andgate2(Q,notR,w3);

endmodule
