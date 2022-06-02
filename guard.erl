-module(guard).
-export([display/1]).

display(N) when N > 10 ->
    io:fwrite("The variable is greater than 10, it is ~p~n",[N]);
display(N) when N =< 10 ->
    io:fwrite("The variable is less than or equal to 10, it is ~p~n",[N]).

%FIXME -add more stuff