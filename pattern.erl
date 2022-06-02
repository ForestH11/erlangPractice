-module(pattern).
-export([pattern_match/1]).


pattern_match(matchMe) ->
    io:format("You matched with me, yay!~n");
pattern_match(Foo) ->
    io:format("~p~n", [Foo]).

%FIXME -add more stuff