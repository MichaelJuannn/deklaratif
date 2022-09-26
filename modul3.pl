
%kali
kali(X,Y,Z):- X is Y*Z.

%power

pangkat(X,Y,Z):- X is Y**Z.


%fpb

fpb(X,0,X):- !.
fpb(0,Y,Y):- !.
fpb(X,Y,Z):- X>Y, A is mod(X,Y), fpb(A,Y,Z).
fpb(X,Y,Z):- X<Y, A is mod(Y,X), fpb(X,A,Z).


%faktorial

faktorial(1,1):- !.
faktorial(X,Y):- K is X-1, faktorial(K,Y1), Y is Y1*X.


