progenitor(joao, jose).
progenitor(joao, ana).
progenitor(maria, jose).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).
maculino(joao).
maculino(jose).
maculino(jorge).
feminino(maria).
feminino(ana).
feminino(julia).
feminino(iris).
sexo(joao, maculino).
sexo(jose, maculino).
sexo(jorge, maculino).
sexo(maria, feminino).
sexo(ana, feminino).
sexo(julia, feminino).
sexo(iris, feminino).

pai(X, Y) :- progenitor(X, Y), maculino(X).
mae(X, Y) :- progenitor(X, Y), feminino(X).

irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), maculino(X).
irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), feminino(X).
irmaos(X, Y) :- progenitor(Z, X), progenitor(Z, Y).

filho(Y, X) :- progenitor(X, Y), maculino(Y).
filha(Y, X) :- progenitor(X, Y), feminino(Y).
tio(X, Y) :- progenitor(Z, Y), irmao(X, Z).
tia(X, Y) :- progenitor(Z, Y), irma(X, Z).

primo(X, Y) :- progenitor(Z, X), progenitor(W, Y), irmao(Z, W), maculino(X).
prima(X, Y) :- progenitor(Z, X), progenitor(W, Y), irmao(Z, W), feminino(X).

avo(X, Y) :- progenitor(X, Z), progenitor(Z, Y), maculino(X).
avoh(X, Y) :- progenitor(X, Z), progenitor(Z, Y), feminino(X).

neto(X, Y) :- progenitor(Y, Z), progenitor(Z, X), maculino(X).
neta(X, Y) :- progenitor(Y, Z), progenitor(Z, X), feminino(X).

%antepassado(X, Y) :- progenitor(X, Y).
antepassado(X, Z) :- 
        progenitor(X, Z).
antepassado(X, Y) :- 
        progenitor(X, Z), 
        antepassado(Z, Y).

%exercicio 1        
descendente(X, Y) :- progenitor(Y, X).
descendente(X, Y) :- progenitor(Z, X), descendente(Z, Y).


%exercicio 2
localizada(pelotas, rio_grande_do_sul).
localizada(paris, franca).
nasceu(joao, pelotas).
nasceu(jean, paris).
gaucho(Pessoa) :-
        nasceu(Pessoa, Cidade),
        localizada(Cidade, rio_grande_do_sul).

%exercicio 3
planeta(mercurio).
planeta(venus).
planeta(terra).
planeta(marte).
planeta(jupiter).
planeta(saturno).
planeta(urano).
planeta(netuno).
planeta(plutao).



estrela(sol).
estrela(sirius).
estrela(vega).

cometa(halley).
cometa(hale_bopp).
cometa(encke).

tem_cauda(X) :- cometa(X), perto_do_sol(X).

perto_do_sol(venus).

corpo_celeste(X):- planeta(X), estrela(X), cometa(X).

e_estrela(X) :- corpo_celeste(X); estrela(X).

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
