%module matches filename
-module(guard).
%functions that we will call, along with their arity (number of parameters
-export([display/1]).

%here we have Guards. Guards are kind of like if statements, but you can 
% implement them in the function declaration, instead of using an if statement
% to call the function inside of another function. This works great, especially
% at the terminal where we don't always have an if statement prewritten

%when this is run in the shell, it will run the first declaration if N is
% greater than 10, or it will run the second declaration if N is less than
% or equal to 10.
display(N) when N > 10 ->
    io:fwrite("The variable is greater than 10, it is ~p~n",[N]);
display(N) when N =< 10 ->
    io:fwrite("The variable is less than or equal to 10, it is ~p~n",[N]).

%FIXME -add more stuff