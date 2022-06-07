%The base file can be found here. https://www.tutorialspoint.com/erlang/erlang_recursion.htm

%module matches file name
-module(recursion). 
%functions we use and their arities. (arity means number of parameters)
-export([fac/1,start/0]). 

%a declaration of a factorial function
%When the variable passed to Fac is 0, return 1.
%this is an example of a Guard
fac(N) when N == 0 -> 1; 
% when N is greater than 0, return N * the result of fac(N-1).
%this is where the recursion happens!
fac(N) when N > 0 -> N*fac(N-1). 

%added a start function so I can run the functions without having to call each one.
start() -> 
    %set X to a random number between 1 and 10
    X = rand:uniform(10),
    %find X factorial, store that value as Y
    Y = fac(X), 
    %print out our random number, and its factorial value
    %~w is also a variable placeholder
    io:fwrite("~w! is ~p~n",[X,Y]).

%FIXME -add more stuff