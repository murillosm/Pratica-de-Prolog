fibonacci(0,0):- !.
fibonacci(1,1):- !.
fibonacci(N, X) :-
        N > 1,
        N1 is N-1,
        N2 is N-2, 
        fibonacci(N1,R1), 
        fibonacci(N2,R2), 
        X is R1 + R2.


pertence(_,[]):- print('No existe').
pertence(X,[X|_]).
pertence(X,[_|Z]) :- pertence(X,Z).


%pertence(a,[a,b,c,f]).