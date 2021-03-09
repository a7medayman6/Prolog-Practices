% delete 1st occurrence 
% sample Goal
% delete(1,[3,1,2,1],L).

del(_, [], []).
del(X, [X|T], T) :- !.
del(X, [H | T], [H | L]) :-
	del(X, T, L).

% ____________________________________-

% delete all occurences
% sample Goal
% delete_all(1,[1,2,1],L).

delall(_, [], []).
delall(X, [X | T], L) :- !,
	delall(X, T, L).
delall(X, [H | T], [H | L]) :- 
	delall(X, T, L).

% ____________________________________-

% concatenate two lists
% sample goal
% append([1,2],[3,4],R).

append([], L2, L2).
append([H | T], L2, [H | T1]) :- 
	append(T, L2, T1).
% ____________________________________-

% find last two elements
% sample Goal
% find_last([1,5,3,6], X1,X2).
findlasttwo(L, X1, X2) :-
	append(L1 [X1, X2], L).

append([], L2, L2).
append([H | T], L2, [H | T1]) :- 
	append(T, L2, T1).
% ____________________________________-

