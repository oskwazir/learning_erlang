-module(db).
-export([
	new/0,
	destroy/1,
	write/3,
	delete/2,
	read/2,
	match/2
	]).

reverse_acc([], Reversed) -> Reversed;
reverse_acc([ Head | Tail ], Reversed) ->
	reverse_acc(Tail, [ Head | Reversed ]).

reverse(List) ->
	reverse_acc(List,[]).

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

match_acc(_,[],Results) -> Results;
match_acc(Search,[ {Key, Value} | Tail ], Results)
	when Search == Value ->
		match_acc(Search,Tail, [ Key | Results ]);
match_acc(Search,[ _ | Tail ], Results) ->
	match_acc(Search, Tail, Results ).

match(_,[])  -> [];
match(Search,Db) ->
	reverse(match_acc(Search,Db,[])).