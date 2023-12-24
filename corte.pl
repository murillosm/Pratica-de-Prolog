% Predicado para verificar se um número é positivo
positivo(X) :- X > 0, !.

% Predicado para verificar se um número é negativo
negativo(X) :- X < 0, !.

% Predicado para verificar se um número é zero
zero(X) :- X =:= 0, !.

% Predicado para verificar o sinal de um número
sinal(X) :- positivo(X), write('O número é positivo').
sinal(X) :- negativo(X), write('O número é negativo').
sinal(X) :- zero(X), write('O número é zero').
