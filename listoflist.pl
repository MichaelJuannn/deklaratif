% create linear list from list of lists
linearlist([],[]).
linearlist(H,[H]):- \+ is_list(H).
linearlist([H|T],L):- linearlist(H,L1), linearlist(T,L2), append(L1,L2,L).

% create list of lists from linear list with duplicate
pindah(X,[],[],[X]).
pindah(X,[H|T],[H|T],[X]):- \+ X=H.
pindah(X,[H|T],[H|T1],[X|T2]):- X=H, pindah(X,T,T1,T2).
sublist([],[]).
sublist([H|T],[H1|T1]):- pindah(H,T,X,H1), sublist(X,T1).

%ubah ubah
ubah([],[]).
ubah([[X|Xt]|Y],[[N,X]|Z]):- length([X|Xt],N), ubah(Y,Z).
lengthsublist(X1,X2):- sublist(X1,X), ubah(X,X2).

%length to list
lengthToList([],[]).
lengthToList([[X|Xt]|Y],[[X,Xt]|Z]):- lengthToList(Y,Z).
lengthToList([X|Y],[[X,[]]|Z]):- lengthToList(Y,Z).