% Implement the max function
max(X, Y, M) :-
	X >= Y,
	M = X.
max(X, Y, M) :-
	X < Y,
	M = Y.
