% power takes base B and power P and returns B^P in R 

% base-case, if the power is 0 return 1
power(B, 0, 1) :- !.

% recursive case, R = B * power(B, P-1)
power(B, P, R) :- 
	NP is P - 1,
	power(B, NP, NR),
	R is NR * B.

	
