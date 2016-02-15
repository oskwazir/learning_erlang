-module(db).
-export([
	new/0,
	destroy/1,
	write/3,
	delete/2,
	read/2,
	match/2
	]).


new() -> [].
destroy(_) -> [].

write(Key,Value,DB) ->
	[ {Key, Value} | DB ].

delete(_,_)  -> [].

read(_,[]) -> 
	{error, instance};
read(Search, [ {Key, Value} | _ ])
	when Search == Key ->
	{ok, Value};
read(Search, [ _ | Tail]) ->
	read(Search,Tail).

match(_,_)  -> [].