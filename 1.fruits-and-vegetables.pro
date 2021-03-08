/*
  Description : 

	• Banana is a yellow fruit, pineapple is a yellow fruit, orange is an orange fruit and
	tomato is a red fruit.
	• Cucumber is a green vegetable, carrot is an orange vegetable and tomato is a red
	vegetable.
	• Sarah and Amira are girls.
	• Ali and Ahmed are boys.
	• Sarah likes banana.
	• Sarah likes any fruit.
	• Amira likes any fruit that has orange color.
	• Ali likes any green vegetables.
	• Ahmed likes any food that is considered as a fruit and vegetable at the same time
	!!
	GOAL
	1. Who likes banana ?
	2. What does Sarah likes ?
	3. What dose Amira likes ?
	4. What dose Ahmed likes ?
	5. Who likes fruits with orange color ?
	6. Does Ali likes cucumber?
	7. What does Sarah and Amira likes in-common?

*/

fruit(banana, yellow).
fruit(pineapple, yellow).
fruit(orange, orange).
fruit(tomato, red).

vegetable(cucumber, green).
vegetable(carrot, orange).
vegetable(tomato, red).

boy(ali).
boy(ahmed).

girl(sarah).
girl(amira).

likes(sarah, X) :-
					fruit(X, _).
likes(amira, X) :-
					fruit(X, orange).
likes(ali, X) :-
					vegetable(X, green).
likes(ahmed, X) :-
					fruit(X, _), 
					vegetable(X, _).

/*
goal

likes(X, banana).
likes(sarah, X).
likes(amira, X).
likes(ahmed, X).
likes(X, Y), fruit(Y, orange).
likes(ali, cucumber).
likes(sarah, X), likes(amira, X).
*/

