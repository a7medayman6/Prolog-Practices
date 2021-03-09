% Library 

/*
	Write a prolog program that stores information about books in the library. Use compound list structure.
	info has id(integer), author name(symbol) and shelf (character), and books(list of books)
	book_list is a list of type info.
	Lib is predicate that takes book_list
	Write rule that takes book_list, id and search for this id in the list and return its shelf char.
	If Id not found, then return shelf ‘E’.
*/
% Sample Goal 
% 	?- lib(L), findshelf(L, 2, S).
% 	output : S = 'A'

Domains

  book = id(integer); author(symbol); shelf(char); books(books_list).
  books_list = info*.

Predicates

  nondeterm lib(books_list).
  nondeterm findshelf(books_list, integer, char).

Clauses

  lib( [book([id(1), author(ali),  shelf('A')]),  
    book([id(2), author(omar), shelf('A')]),
    book([id(3), author(ahmed),shelf('B')]), 
    book([id(3), shelf('C')])
       ]).
  findshelf([], _, 'E').	% this id doesn't exist.
  findshelf([H | T], ID, SH) :-
    H = book([id(ID), _, shelf(SH2)]), 
    SH is SH2,!.
  findshelf([_ | T], ID, SH) :-
    findshelf(T, ID, SH).
