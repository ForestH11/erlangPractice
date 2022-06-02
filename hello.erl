-module(hello).
-export([do_stuff/1]).


do_stuff(jane) ->
    io:format("hello jane",[]);
do_stuff(bob) ->
    io:format("Hello bob~n",[]);
do_stuff(Thing) ->
    Stuff = Thing + 1,
    io:format("Hello ~p~n",[Stuff]).
