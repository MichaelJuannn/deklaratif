findLast(X,[X]).
findLast(X,[_|T]) :- findLast(X,T).

find(X,[X]).
find(X,[X|_]):- find(X,_).