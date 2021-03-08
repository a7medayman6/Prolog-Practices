/*
	Implement this family tree
	Implement grandfather, grandmother, sister, brother, uncle, aunt, son, daugher, cousin, nephew, and niece.
	The Family members:- 
		tony and liza are married.
		elliot is tonys and lisas son.
		neal is tonys and lisas son.
		patrick and terissa are married.
		angela is patricks and terissas daughter.
		elliot and angela are married.
		will is elliots and angelas son.
		margot is elliots and angelas daughter.

*/

male(tony).
male(patrick).
male(elliot).
male(will).
male(neal).

female(liza).
female(terissa).
female(angela).
female(margot).

% parent(chile, parent)
parent(elliot, tony).
parent(elliot, liza).
parent(neal, tony).
parent(neal, liza).
parent(angela, patrick).
parent(angela, terissa).
parent(will, elliot).
parent(will, angela).
parent(margot, elliot).
parent(margot, angela).

grandfather(GrandChild, GrandFather) :-
	male(GrandFather),  
	parent(GrandChild, X),
	parent(X, GrandFather).


grandmother(GrandChild, GrandMother) :-
	female(GrandMother),  
	parent(GrandChild, X),
	parent(X, GrandMother).

sister(Sister, X) :-
	female(Sister),
	parent(Sister, P),
	parent(X, P),
	Sister \= X.

brother(Brother, X) :-
	male(Brother),
	parent(Brother, P),
	parent(X, P),
	Brother \= X.

uncle(Uncle, X) :-
	male(Uncle),
	parent(X, P),
	brother(Uncle, P).

aunt(Aunt, X) :-
	female(Aunt),
	parent(X, P),
	sister(Aunt, P).

son(Boy, P) :-
	male(Boy),
	parent(Boy, P).

daughter(Girl, P) :-
	female(Girl),
	parent(Girl, P).

cousin(X, Y) :-
	uncle(Z, Y),
	parent(X, Z).

cousin(X, Y) :-
	aunt(Z, Y),
	parent(X, Z).

niece(N, B) :-
	female(N),
	parent(N, P),
	(brother(B, P); sister(B, P)).

nephew(N, B) :-
	male(N), 
	parent(N, P),
	(brother(B, P); sister(B, P)).
