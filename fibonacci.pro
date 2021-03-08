% fibonacci tailer recursion
fib(X, R) :- 
	fibAux(X, R, 0, 1).

% base-cases
fibAux(0, 0, _, _) :- !.
fibAux(1, Second, _, Second) :- !.

% recursive-cases
fibAux(X, R, First, Second) :-
	NewX is X - 1,
	NewFirst is Second,
	NewSecond is First + Second,
	fibAux(NewX, R, NewFirst, NewSecond).
