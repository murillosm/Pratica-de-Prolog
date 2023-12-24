%cls:-write('\33\[2J').

%Para sair do Prolog: halt.
%Para iniciar o Prolog: swipl.
%pwd.
%Para limpar a tela no linux: cls.
%Para limpar a tela no windows: write('\33\[2J').
%Para limpar a tela no mac: write('\33\[2J').
%Para limpar a tela no linux: write('\33\[2J').
%Para carregar um arquivo: consult('nome_do_arquivo.pl').
%Para recarregar um arquivo: reconsult('nome_do_arquivo.pl').
%Para listar os predicados: listing.
%Para listar um predicado: listing(nome_do_predicado).
%Para listar os predicados que começam com uma letra: listing('letra*').
%Para listar os predicados que começam com uma letra e terminam com outra: listing('letra*outra').
%Para listar os predicados que contém uma letra: listing('*letra*').
%Para listar os predicados que contém uma letra e terminam com outra: listing('*letra*outra').
%Para iniciar o Prolog com um arquivo: swipl -s nome_do_arquivo.pl.


/***********************************************************/
/*escrever em prolog write(+termo): */
/***********************************************************/
%para escrever em prolog write(+termo):
%write('Texto.'). <- correto
%write(Texto.). <- errado
%write(X). <- correto
%write(joao). <- correto

/***********************************************************/
/*ler em prolog read(+var): */
/***********************************************************/
%para ler em prolog read(+var):
%read(X). <- correto
%read(x). <- errado
%read(joao). <- errado
%read('joao'). <- errado
%read(Joao). <- correto

/***********************************************************/
/*caracteres especiais: */
/***********************************************************/
%caracteres especiais:
%quebra de linha: \n nl \|
%tabulação: \t
%aspas simples: \'
%aspas duplas: \"
%barra invertida: \\
%backspace: \b
%retorna ao início da linha: \r
%imprime o simbolo de porcentagem: \%



/***********************************************************/
/*consultas */
/***********************************************************/
% A clásula proximo(Brasil, Japão). é uma consulta prolog, pois "Brasil" e "Japão" são variáveis.
%Para responder a consulta, o prolog utiliza:
    %matchings: checa se determinado padrão esta presente, para saber quais fatos e regras podem ser utilizados.
    %unificações: substitui o valor de uma variável para determinado se a consulta é satisfeita pelos fatos e regras da base(programa).
    %resolução: verifica se a consulta é consequência lógica dos fatos e regras da base(programa).
    %recursão: utiliza a regras que chamam a si mesma para realizar demonstrações.
    %backtracking: para checar todas as possibilidades de resolução de uma consulta.


/***********************************************************/
/*Regras*/
/***********************************************************/
%Regras facilitam a execução de consultas e tornam o programa mais expressivo.

%uma cláusula Prolog é equivalente a uma formula lógica de primeira ordem, então, em prolog existem os conectivos lógicos:
    %conjunção: , (e)
    %disjunção: ; (ou)
    %negação: not (não)
    %implicação: :- (se...então)
    %equivalência: :- (se e somente se)

    %> Exemplo de regra:
    %A formula lógica: "A(x) -> B(x) v (C(x) ^ D(x))", pode ser escrita em prolog como: "A(X) :- B(X) ; (C(X), D(X))."



/*************************************************************/
/*Fail e Repeat*/
/*************************************************************/
%fail: falha propositalmente, para que o prolog tente outras possibilidades de resolução da consulta.*
%Exemplo: consulta que falha propositalmente.
    %?- write('Digite um número: '), read(X), X < 10, write('Número menor que 10.'), fail.
    %Digite um número: 11.
    %false.

%repeat: repete a consulta até que ela falhe.
% Exemplo:
/*adinhe_um_numero:- N is ramdom(5)+1,
                   repeat,
                        lerDados(X),
                        processarDados(X, N),*/

repete :- repeat,
            write('Digite um número: '), read(X),
            ( (x == fim -> !;
                        processar(X),fail
            )).

