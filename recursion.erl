%The base file can be found here. https://www.tutorialspoint.com/erlang/erlang_recursion.htm
-module(recursion). 
-export([fac/1,start/0]). 

fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

start() -> 
    X = rand:uniform(10),
    Y = fac(X), 
    io:fwrite("~w! is ~p~n",[X,Y]).

%FIXME -add more stuff