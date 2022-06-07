%module is same as filename
-module(lambda).
%functions and their arities
-export([sum_nums_range/1,guass_sum/1,start/1]).

%creates a sequence (or list) of all the natural numbers less than N 
% and finds the sum using reduce or in this case, foldl
sum_nums_range(N) ->
    X = lists:seq(1,N),

    %Y is the Sum of the sequence X
    % using the syntax foldl(Anonymous function, accumulator, list)
    % we take every value in list X, and sum them up.
    Y = lists:foldl(fun(A,B) -> A+B end, 0, X),
    io:fwrite("The sum of ~p is ~p~n",[X,Y]).

%Here's another way to do what we jsut did, but without having to create a sequence
% we use the guassian sum equation N*(N+1)/2
guass_sum(N) -> io:fwrite("The sum of all natural numbers up to ~p is: ~p*(~p+1)/2 = ~p~n",[N,N,N,N*(N+1) div 2]).

%run both our sum functions, if they match, we did the math, and the programming right.
start(N) ->
    X = sum_nums_range(N),
    Y = guass_sum(N),
    % this could be read as if condition -> dostuff; else (condition) -> do stuff.
    % the code is only run if (condition) is true, therefore, our else statement
    % has to simply be true in order to run it.
    if 
        X == Y -> 
            io:fwrite("It worked!~n");
        true ->
            io:fwrite("Something's off...~n") end.
    
