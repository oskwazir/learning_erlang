-module(functions).
-export([
	head/1,
	second/1,
	same/2,
	greet/2,
	old_enough/1,
	right_age/1,
	wrong_age/1]).

head([H|_]) -> H.
second([_,X|_]) -> X.
same(X,X) -> 
	true;
same(_,_) ->
	false. 

greet(male,Name) ->
io:format("Hello, Mr. ~s!", [Name]);
greet(female,Name) ->
io:format("Hello, Ms. ~s!", [Name]);
greet(_,Name) ->
io:format("Hello, ~s!", [Name]).

old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.

right_age(X) when X >= 16, X =< 104 ->
true;
right_age(_) ->
false.

wrong_age(X) when X < 16; X > 104 ->
true;
wrong_age(_) ->
false.