% FILEPATH: /d:/programação/Prolog/recurcao.pl

fatorial(0, 1).
fatorial(N, Resultado) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, Resultado1),
    Resultado is N * Resultado1.

% uma regra é recursiva se sua condição depende de si mesma
% fatorial(3, Resultado) = 3 * fatorial(2, Resultado1)

fatorial(0, 1).
fatorial(N, Resultado) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, Resultado1),
    Resultado is N * Resultado1.


%exercicio 1
% Descreva uma regra para determinar quais animais pertencem a cadeia alimentar de outro animal.
animal(urso).
animal(peixe).
animal(peixinho).
animal(lince).
animal(raposa).
animal(coelho).
animal(veado).
animal(guaxinim).

plata(alga).
plata(grama).

come(urso, peixe).
come(lince, veado).
come(urso, raposa).
come(urso, veado).
come(raposa, coelho).
come(peixe, peixinho).
come(peixinho, alga).
come(guaxinim, peixe).
come(coelho, grama).
come(veado, grama).
come(urso, guaxinim).

pertence_cadeia(X, Y) :- animal(X), come(X, Y).
pertence_cadeia(X, Y) :- come(Y, Z), pertence_cadeia(X, Z).


%Exercicio 2
% crie um programa prolog para resolver a equação de recorrencia:
recorrencia(N, 2) :- N=1.
recorrencia(N, Resultado) :-
    N >= 2,
    N1 is N - 1,
    recorrencia(N1, Resultado1),
    Resultado is Resultado1 + 3 *(N*N).