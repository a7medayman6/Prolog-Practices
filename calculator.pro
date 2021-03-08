% Simple calculator 
% 1 => add
% 2 => sub
% 3 => mul
% 4 => div
% 5 => mod
% calc(choice, num1, num2, result_free_variable)

calc(1, X, Y, R):-
	add(X, Y, R), !.
calc(2, X, Y, R):-
	sub(X, Y, R), !.
calc(3, X, Y, R):-
	mul(X, Y, R), !.
calc(4, X, Y, R):-
	div(X, Y, R), !.
calc(5, X, Y, R):-
    modulus(X, Y, R), !.

add(X, Y, R):-
	R is X + Y.
sub(X, Y, R):-
	R is X - Y.
mul(X, Y, R):-
	R is X * Y.
div(X, Y, R):-
	R is X / Y.
modulus(X, Y, R):-
    R is mod(X, Y).


