
import(X):-
    csv_read_file('data.csv', Rows, [arity(3)]),
    maplist(assert, Rows),counta(Rows,X).
    
counta([],0).
counta([row(1,_,1)|T],N) :- counta(T,N1), N is N1 + 1.
counta([X|T],N) :- X \= 1, counta(T,N).
    
countb([],0).
countb([row(0,_,1)|T],N) :- countb(T,N1), N is N1 + 1.
countb([X|T],N) :- X \= 1, countb(T,N).
    
countc([],0).
countc([row(_,1,1)|T],N) :- countc(T,N1), N is N1 + 1.
countc([X|T],N) :- X \= 1, countc(T,N).
    
countd([],0).
countd([row(_,0,1)|T],N) :- countd(T,N1), N is N1 + 1.
countd([X|T],N) :- X \= 1, countd(T,N).
    
counte([],0).
counte([row(1,_,0)|T],N) :- counte(T,N1), N is N1 + 1.
counte([X|T],N) :- X \= 1, counte(T,N).
    
countf([],0).
countf([row(0,_,0)|T],N) :- countf(T,N1), N is N1 + 1.
countf([X|T],N) :- X \= 1, countf(T,N).
    
countg([],0).
countg([row(_,1,0)|T],N) :- countg(T,N1), N is N1 + 1.
countg([X|T],N) :- X \= 1, countg(T,N).
    
counth([],0).
counth([row(_,0,0)|T],N) :- counth(T,N1), N is N1 + 1.
counth([X|T],N) :- X \= 1, counth(T,N).
