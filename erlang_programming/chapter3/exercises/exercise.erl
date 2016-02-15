-module(exercise).
-export([sum/1,
		 create/1,
		 reverse_create/1,
		 between/1,
		 between_even/1]).
-import(lists, [reverse/1]).

sum_acc(N,Sum) when N < 1 -> Sum;
sum_acc(N,Sum) ->
	sum_acc(N - 1, Sum + N).

sum(N) ->
	sum_acc(N,0).

create_acc(N,L) when N < 1 -> L;
create_acc(N,L) ->
	create_acc(N - 1, [ N | L ]).

create(N) -> create_acc(N,[]).
reverse_create(N) -> lists:reverse(create(N)).

between_acc(N, _) when N < 1 -> 
	io:format("");
between_acc(N, Sum) ->
	io:format("Number: ~p~n", [Sum]),
	between_acc(N - 1, Sum + 1).

between(N) ->
	between_acc(N, 1).


between_even_acc(N, _) when N < 1 ->
	io:format("");
between_even_acc(N, Sum) when Sum rem 2 == 0 ->
	io:format("Number: ~p~n", [Sum]),
	between_even_acc(N - 1, Sum + 1);
between_even_acc(N,Sum) ->
	between_even_acc(N - 1, Sum + 1).

between_even(N) ->
	between_even_acc(N, 1).

