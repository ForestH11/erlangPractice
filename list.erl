%module is same as filename
-module(list).
%export functions and their arities (number of arguments)
-export([display/1,start/0]).

%print out the variable given using ~p and ~w as placeholders to
% see if there is a difference
display(X) ->
    io:fwrite("~p~n",[X]),
    io:fwrite("~w~n",[X]).

%create a list and pass it to the display function
start() ->
    Lst1 = [1,2,3],
    display(Lst1).

%FIXME - Add more Stuff
