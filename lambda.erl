-module(lambda).
-export([sum_nums_range/1,guass_sum/1,start/1]).

sum_nums_range(N) ->
    X = lists:seq(1,N),
    Y = lists:foldl(fun(A,B) -> A+B end, 0, X),
    io:fwrite("The sum of ~p is ~p~n",[X,Y]).

guass_sum(N) -> io:fwrite("The sum of all natural numbers up to ~p is: ~p*(~p+1)/2 = ~p~n",[N,N,N,N*(N+1) div 2]).

start(N) ->
    X = sum_nums_range(N),
    Y = guass_sum(N),
    if 
        X == Y -> 
            io:fwrite("It worked!~n");
        true ->
            io:fwrite("Something's off...~n") end.
    
