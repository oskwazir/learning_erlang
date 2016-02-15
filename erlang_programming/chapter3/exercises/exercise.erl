-module(exercise).
-export([sum/1,
		 create/1,
		 reverse_create/1]).
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
