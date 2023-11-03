
% concatenate two lists into a new one
list_concat([],L,L).
list_concat([X1|L1],L2,[X1|L3]) :- list_concat(L1,L2,L3).

% return the first element of a list
pre([]).
pre([X|_],X).

% return the last element of a list

der([]).
der([X]):- write(X).
der([_|R]):- der(R).


% return is X is an elment of a list
element(X,[X|_]).
element(X,[_|R]) :-  element(X,R).


% return if the sum of a list is equal to N
sum([],0).
sum([X|Y],N):- sum(Y,N1), N is N1+X.

