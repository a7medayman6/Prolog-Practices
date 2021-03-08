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

check('Y').
check('y').

run :-
	write("What is the operation you want to perform ?"), nl,
	write("1- Add"), nl,
	write("2- Subtract"), nl,
	write("3- Multiply"), nl,
	write("4- Divide"), nl,
	write("5- Modulus"), nl,
	write("Please Enter your choice number"), nl,
	read(C),
    write("Please enter the first number"), nl,
    read(X),
	write("Please enter the second number"), nl,
    read(Y),
    calc(C, X, Y, R),
    write("The Result is : "), write(R), nl,
    write("Do you want to perform another calculation ? y/n"), nl,
    read(CH),
    check(CH),
    run.
run.

