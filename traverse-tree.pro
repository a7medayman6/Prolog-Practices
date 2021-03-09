Domains

	tree = t(tree, symbol, tree) ; nil.

Predicates

	display(tree).

Clauses

	display(nil).
	display(nil, S, nil) :-
		write(S), nl, !.
	display(t(L, S, R)) :-
		write(S), nl,
		display(L),
		display(R).

Goal
	display( t ( t(nil,b,nil) , a , t( t(nil,d,nil), c , nil) ) ).
