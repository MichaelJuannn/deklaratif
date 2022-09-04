pria(mukti).
pria(samid).
pria(galih).
pria(deri).
pria(agung).
pria(gamma).
pria(yuti).
wanita(jajuk).
wanita(mia).
wanita(luna).
wanita(maya).

orangtua(mukti, samid).
orangtua(samid, galih).
orangtua(galih, mia).
orangtua(samid, deri).
orangtua(samid, luna).
orangtua(samid, agung).
orangtua(deri, gamma).
orangtua(jajuk, deri).
orangtua(jajuk, luna).
orangtua(jajuk, agung).
orangtua(jajuk, maya).
orangtua(maya, yuti).

ayah(A,B):-pria(A),orangtua(A,B).
ibu(X,B):-wanita(X),orangtua(X,B).

saudarakandung(D,F):-
    ayah(A,D), ayah(A,F), ibu(X,D), ibu(X,F).
saudaratiri(G,H):-
    orangtua(B,G), orangtua(B,H), \+saudarakandung(G,H).
pamankeponakan(I,J):-
    pria(I), orangtua(B,J), saudarakandung(B,I).
bibikeponakan(K,L):-
    wanita(K), orangtua(B,L), saudarakandung(B,K).
kakek(M,N):-
    pria(M), orangtua(B,N), orangtua(M,B).
cucu(O,P):-
    orangtua(B,O), orangtua(P,B).







