% Search for a Value in a List

% check if X is a member of a list L
% sample goal : 
%	?- mamber(5, [1, 2, 5, 7])	
%	output : TRUE
% 	?- member(5, [1, 2, 3, 4])
% 	output : FALSE

member(X, [X | T]).
member(X, [H | T]) :-
	member(X, T).

% ____________________________________________

% List Length

% counts the length of a list L
% sample goal : 
%	?- mamber([1, 2, 5, 7], R)	
%	output : R = 4

% non-tail recursive solution
len([], 0).
len([_|T], R) :-
	len(T, R2),
	R is R2 + 1.

% tail recursive solution
list_length(L, R) :-
	list_length_t(L, R, 0).

list_length_t([], R, Acc) :-
	R is Acc.
list_length_t([_|T], R, Acc) :-
	Nacc is Acc + 1,
	list_length_t(T, R, Nacc).

% ____________________________________________

% List Sum

% Summs all the List L elements


% non-tail recursive solution
listSum([], 0).
listSum([H | T], R) :-
	listSum(T, R2),
	R is R2 + H.

% tail recursive solution
list_Sum(L, S) :-
	list_SumT(L, S, 0).
list_SumT([], S, Acc) :-
	S is Acc.
list_SumT([H | T], S, Acc) :-
	Nacc = Acc + H,
	list_SumT(T, S, Nacc).


% ____________________________________________

% Average of a list using list length and summation

% gets the average value of a list L 

avg(L, A) :-
	list_length(L, C),
	list_Sum(L, S),
	A is S / C.

% ____________________________________________

% Insert First

% Sample goal
% 	?- insertFirst([5,10,7],2,List)
% 	output : List = [2, 5, 10, 2]
insertFirst(L, H, [H|L]).

% ____________________________________________

% Insert Last

insertLast([], X, [X]).
insertLast([H | T], X, List) :-
	insertLast(T, X, List2),
	List is [H | List2].

% ____________________________________________

% Find Last Element 

findLast([H], H) :- !.
findLast([_ | T], R) :-
	findLast(T, R).

% ____________________________________________

% Find Maximum 

max([H | T], M) :-
	findMax(T, M, H).
findMax([], M, M).
findMax([H | T], M, Acc) :-
	H > Acc,
	findMax(T, M, H);
	H <= Acc,
	findMax(T, M, Acc).

