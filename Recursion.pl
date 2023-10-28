affiche :- write("bonjour"). % it is like defining a procedure affiche that prints bnjour

a_pour_successeur(X,Y):- Y is X+1. %pour definir  une fonction il faut definir le predicat comme P(X1,X2,...,Y)


somme(A,B,Y):- Y is A+B.


max2(X,Y,X):- X>=Y.    %max(X,Y) is X imlique que X>=Y
max2(X,Y,Y):- X<Y. %max(X,Y) is Y implique que X<Y


max3(X,Y,Z,M) :- max2(X,Y,MM),max2(MM,Z,M). % you compare the first two numbers , get the max put it in MM and then compare MM to the other variable , the max between MM and Z put it in M


% une maniere recursive pour afficher le message 3bonjour n fois)
ecrit(0):-!. % lorsuqe N =0 rien faire
ecrit(N):- print("Bonjour"),nl, N1 is N-1, ecrit(N1).


% this example will print from 1 to N where each value in a new line
affiche_1_n(0) :-!.
affiche_1_n(N):-N>0, N1 is N-1, affiche_1_n(N1),write(N),nl.

