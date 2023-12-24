% Fatos dinâmicos para armazenar informações sobre professores
:- dynamic professor/2.

% Predicado para inserir dados de professores
inserir_professor :-
    write('Informe o nome do Professor: '),
    read(Nome),
    write('Informe a titulação do Professor: '),
    read(Titulacao),
    assertz(professor(Nome, Titulacao)),
    write('Deseja inserir mais dados ? (s/n): '),
    read(Resposta),
    Resposta = 's',
    inserir_professor().
inserir_professor.

% Predicado para relatórios
relatorios :-
    write('Qual relatório deseja saber (1- Quantidade de Professores, 2-quantidade de Doutores, 3-listagem de professores do curso, 4-listagem de doutores)? '),
    read(Opcao),
    processar_opcao(Opcao),
    write('Deseja consultar mais relatórios ? (s/n): '),
    read(Resposta),
    Resposta = 's',
    relatorios().
relatorios.

% Predicado para processar as opções escolhidas nos relatórios
processar_opcao(1) :-
    findall(_, professor(_, _), Professores),
    length(Professores, Quantidade),
    write('O Campus Anápolis tem '), write(Quantidade), write(' professor(es).'), nl.

processar_opcao(2) :-
    findall(_, (professor(_, 'doutor')), Doutores),
    length(Doutores, Quantidade),
    write('O Campus Anápolis tem '), write(Quantidade), write(' professor(es) doutor(es).'), nl.

processar_opcao(3) :-
    findall(Nome, professor(Nome, _), Professores),
    write('Os professores são '), write(Professores), nl.

processar_opcao(4) :-
    findall(Nome, professor(Nome, 'doutor'), Doutores),
    write('Os professores doutores são '), write(Doutores), nl.

processar_opcao(_) :-
    write('Opção inválida. Tente novamente.'), nl.

% Consulta principal
:- initialization(main).

main :-
    write('Bem-vindo ao Assistente de Consultas sobre Professores do Campus Anápolis do IFG.'), nl,
    inserir_professor,
    relatorios,
    halt.
