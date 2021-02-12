:- use_module(library(clpfd)).		% library for CLP {#\=}

% nQueens
% param N : the number of queens and the board dimensions NxN.
% param Queens : the list of queens row position, for example if Queens = [2, 1] it means the queen at column 1 is at row 2 and the queen at column 2 is at row 1.
% solves and verifies the N-Queens problem   

nQueens(N, Queens) :-
    length(Queens, N),		% check if the queens list size is exactly N 
    Queens ins 1..N,		% check if the queens list values are all values between 1 and N
    safe(Queens).			% check if the placement of the queens in a NxN board is safe -> which means no queen is attacking another

safe([]).					% if the queens list is empty so it's safe.
safe([Q | Qs]) :-			% if the queens list is not empty then get the first element 
    notAttacked(Qs, Q, 1),	% check if the first queen is attacked by any other queen 
    safe(Qs).				% recursively call the function again with the rest of the list i.e. without the first element that already got checked

notAttacked([], _, _).				% if the queens list is empty then it doesn't matter where is the Q position and it's not attacked by any-other queen.
notAttacked([Q | Qs], QA, D) :-		% if the queens list is not empty then get the first queens row 
    Q #\= QA,						% check if the current queen Q is not at the same row as the queen we're currently testing QA
    abs(QA - Q) #\= D,				% check if the current queen Q and the testing queen QA are not on the same diagonal
    D1 is D + 1,					% Increase the distance between QA and the next queen 
    notAttacked(Qs, QA, D1).		% recursively call the function again with the rest of the queens to be tested against QA


/* 
EXAMPLE QUERIES

?- nQueens(N, Qs).
	
?- nQueens(N, [2, 4, 1, 3]).		
	N = 4

?- nQueens(N, [2, 4, C, D]).
	C = 1,
	D = 3,
	N = 4

*/