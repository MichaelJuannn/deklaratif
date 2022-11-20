% In a height-balanced binary tree, the following property holds for
% every node: The height of its left subtree and the height of  
% its right subtree are almost equal, which means their
% difference is not greater than one.
% Write a predicate hbal_tree/2 to construct height-balanced
% binary trees for a given height. The predicate should
% generate all solutions via backtracking. Put the letter 'x'
% as information into all nodes of the tree.

% hbal_tree(D,T) :- T is a height-balanced binary tree with depth T

hbal_tree(0,nil) :- !.
hbal_tree(1,t(x,nil,nil)) :- !.
hbal_tree(D,t(x,L,R)) :- 
    D > 1, 
	D1 is D - 1, D2 is D - 2,
	distr(D1,D2,DL,DR),
	hbal_tree(DL,L), hbal_tree(DR,R).

distr(D1,_,D1,D1).
distr(D1,D2,D1,D2).
distr(D1,D2,D2,D1). 



% show(T) :-
%     show(T, 0).

% show(nil, _).
% show(t(Left, Root, Right), Indent) :-
%     Indent1 is Indent + 3,
%     show(Right, Indent1),
%     format('~*c~w\n', [Indent, 32, Root]),
%     show(Left, Indent1).


% cbal_tree(0, nil).
% cbal_tree(N, t(x,L,R)) :-
%     N > 0,
%     N0 is N - 1,    % -1 to account for root node
%     N1 is N0 div 2,
%     N2 is N0 - N1,
%     (N mod 2 =\= 0 -> permutation([N1,N2], [NLeft,NRight]) ;
%                       [N1, N2] = [NLeft, NRight]),
%     cbal_tree(NLeft, L),
%     cbal_tree(NRight, R).