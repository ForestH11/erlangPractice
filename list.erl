-module(list).
-export([display/1,start/0]).


display(X) ->
    io:fwrite("~p~n",[X]),
    io:fwrite("~w~n",[X]).

start() ->
    Lst1 = [1,2,3],
    display(Lst1).
