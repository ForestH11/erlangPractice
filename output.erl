%every erlang file needs to have this -module(filename).
-module(output).
%every erlang file also needs this -export([function_name/number_of_parameters]) 
% you need to include the function name, and number of parameters for all functions in the file.
-export([say_something/1]).

say_something(Thing) ->
    io:format("Hello ~p~n",[Thing]).

%FIXME -add more stuff