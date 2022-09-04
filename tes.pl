
male(mukti).
male(samid).
male(agung).
male(deri).
male(gamma).
male(galih).
male(yuti).
male(damian).

female(mia).
female(luna).
female(jajuk).
female(maya).
female(lina).

% orangtua(parent,child)
orang_tua(mukti,samid).
orang_tua(samid,galih).
orang_tua(samid,deri).
orang_tua(samid,luna).
orang_tua(samid,agung).
orang_tua(jajuk,deri).
orang_tua(jajuk,luna).
orang_tua(jajuk,agung).
orang_tua(jajuk,maya).
orang_tua(galih,mia).
orang_tua(deri,gamma).
orang_tua(maya,yuti).
orang_tua(lina,galih).
orang_tua(damian,maya).


ayah(MALEPARENT,CHILD) :-
    male(MALEPARENT), orang_tua(MALEPARENT,CHILD).

ibu(FEMALEPARENT,CHILD) :-
    female(FEMALEPARENT), orang_tua(FEMALEPARENT,CHILD).

saudara_kandung(SAUDARA1,SAUDARA2) :-
    ayah(MALEPARENT,SAUDARA1), ayah(MALEPARENT,SAUDARA2), 
    ibu(FEMALEPARENT,SAUDARA1), ibu(FEMALEPARENT,SAUDARA2).

saudara_tiri(Saudara1,Saudara2):-
    ayah(Ayah,Saudara2),
    ayah(Ayah,Saudara1),
    ibu(Ibu1,Saudara2),
    ibu(Ibu2,Saudara1),
    Saudara1\=Saudara2,
    Ibu1\=Ibu2;
    ibu(Ibu,Saudara2),
    ibu(Ibu,Saudara1),
    ayah(Ayah1,Saudara2),
    ayah(Ayah2,Saudara1),
    Ayah1\=Ayah2.

paman(Uncle,Nephew):-
    male(Uncle),
    saudara_kandung(Ayah,Uncle),
    ayah(Ayah,Nephew).

bibi(Aunt,Nephew):-
    female(Aunt),
    saudara_kandung(Ayah,Aunt),
    ayah(Ayah,Nephew).

kakek(Grandpa,Grandchild):-
    ayah(Grandpa,Ayah),
    ayah(Ayah,Grandchild).

cucu(Grandchild,Grandpa):-
    ayah(Grandpa,Ayah),
    ayah(Ayah,Grandchild).