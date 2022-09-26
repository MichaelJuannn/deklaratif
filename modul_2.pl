% Manipulasi List

findLast(X,[X]).
findLast(X,[_|T]) :- findLast(X,T).

%  find first

findFirst(X,[X]).
findFirst(X,[X|_]):- findFirst(X,_).

% find second last

findSecondLast(X,[X,_]).
findSecondLast(X,[_|T]) :- findSecondLast(X,T).

% find at 

findAt(1,X,[X|_]).
findAt(E,X,[_|T]):- K is E-1, findAt(K,X,T).

% find length

countLength(X,[H|T]):- countLength(X,[H|T],0).
countLength(X,[],X).
countLength(X,[_|T],C) :- K is C+1, countLength(X,T,K).

% reverse list
reverseList([],X,X).
reverseList([H|T],X,Temp) :- reverseList(T,X,[H|Temp]).
    
% palindrome 

palindrome(X):- reverse(X, X).

% remove duplicate in sort

remduplicate(X,Y):- sort(Y, X).

% duokucate list
dupli([],[]).
dupli([H|T],[H,H|Tn]):- dupli(T,Tn).

% delete
list_delete(X, [X], []).
list_delete(X,[X|L1], L1).
list_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

