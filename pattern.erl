%module must match filename
-module(pattern).
%every function that gets called needs to be in here, along with the number of parameters
-export([pattern_match/1]).

%function declaration with pattern matching, if the function is called with argument 'matchMe'
%it will execute the first declaration.
pattern_match(matchMe) ->
    io:format("You matched with me, yay!~n");
%if function is called with another argument, it will do the following
pattern_match(Foo) ->
    io:format("~p~n", [Foo]).

%FIXME -add more stuff