/**************************************************************/
/*Aritmetica Prolog*/
/**************************************************************/

% maior que: >
% menor que: <
% maior ou igual: >=
% menor ou igual: <=
% igual: =:=
% diferente: =\=

% soma: +
%exemplo: 2 + 1 = 2 + 1, retorna true se a igualdade for verdadeira
%exemplo: 2 + 1 = 1 + 2, retorna false se a igualdade for falsa
%exemplo: 2 + 2 =:= 4, retorna true se a igualdade for verdadeira
%exemplo: 2 + 2 =:= +(2, 2), retorna true se a igualdade for verdadeira

% subtracao: -
% multiplicacao: *
% divisao: /
% resto da divisao: mod
% potencia: **
% raiz quadrada: sqrt
% divisao inteira: //
% atribuicao: is
% exemplo: X is 2 + 2, retorna X = 4

% 1) crie uma regra que um numero inteiro e imprima se o numero e maior que 100 ou nao
maiorQueCem():-
    write('Digite um numero: '),
    read(X),(
        (X > 100 -> write('O numero e maior que 100'));
        (X =< 100 -> write('O numero e menor ou igual a 100'))
    ).
    
% 2) supolha seguintes fatos:
nota(joao, 5.0).
nota(maria, 6.0).
nota(joana, 8.0).
nota(mariana, 9.0).
nota(cleuza, 8.5).
nota(jose, 6.5).
nota(jaoquim, 4.5).
nota(mara, 4.0).
nota(mary, 10.0).

%considerando que: Notas de 7 a 10, aprovado; notas de 5 a 7, recuperação; notas de 0 a 5, reprovado
% crie uma regra que receba o nome de um aluno e retorne sua situacao
situacaoAluno(X):-
    nota(X, Nota),(
        (Nota >= 7.0 -> write('Aprovado'));
        (Nota >= 5.0, Nota < 7.0 -> write('Recuperacao'));
        (Nota >= 0.0, Nota < 5.0 -> write('Reprovado'))
    ).


% exemplo de uso: situacaoAluno(joao).


%exemplo de unificacao:
% X = 2 + 2, retorna X = 2 + 2