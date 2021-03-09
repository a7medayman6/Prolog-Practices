% Calculate the area of a shape
% using compouned objects
% shape = circle(integer); rect(pnt, pnt). 
% Sample goals
% 	?- area(rect(pnt(3,2), pnt(10,20)),A).
% 	?- area(circle(A). 


area(rect(pnt(X1, Y1), pnt(X2, Y2)), A) :-
	A is abs(X1 - X2) * abs(Y1 - Y2).
area(circle(R), A) :-
	A is 22/7 * R * R.

