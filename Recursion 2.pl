% function that calculates factoriel using recursion

fact(0,1):-!.
fact(N,R):- N>0, N1 is N-1, fact(N1,R1), R is N*R1.


% function that returns if a number is even or not

pair(0).
pair(X) :- X>0, X2 is X-2, pair(X2).


% function that caluclates fibonocci in recursion

fibo(1,1).
fibo(2,1).
fibo(N,X) :- N>2, U is N-1,V is N-2, fibo(U,U1), fibo(V,V1),
X is U1+V1.



% a function that calculates combinations of p, n
%
coeff(_,0,1).
coeff(P,P,1).
coeff(N,P,C) :- N>P, P>0, N>0, N1 is N-1, P1 is P-1,coeff(N1,P1,C1), coeff(N1,P,C2),C is C1+C2.
