:- dynamic homem/1.
homem(joao).
mudanome(N):- 
        retract(homem(X)), 
        asserta(homem(N)),
        format('Nome de ~w mudado para ~w', [X, N]).