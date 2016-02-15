-module(exercise).
-export([sum/1]).

sum_acc(N,Sum) when N < 1 -> Sum;
sum_acc(N,Sum) ->
	sum_acc(N - 1, Sum + N).

sum(N) ->
	sum_acc(N,0).