% Base de fatos para armazenar informações sobre professores
:- dynamic professor/2. % Declarando que a relação professor/2 pode ser dinâmica (para permitir alterações em tempo de execução).

% Regra para inserir dados sobre professores
cadastrar_professor :-
    write('Informe o nome do Professor: '), read(Nome),
    write('Informe a titulação do Professor: '), read(Titulacao),
    assertz(professor(Nome, Titulacao)),
    write('Deseja inserir mais dados ? (s/n): '), read(Resposta),
    (Resposta == 's' -> cadastrar_professor(); true).

% Regra para contar a quantidade total de professores
quantidade_total_professores(Qtd) :-
    findall(_, professor(_, _), Professores),
    length(Professores, Qtd).

% Regra para contar a quantidade de professores com titulação "doutor"
quantidade_doutores(Qtd) :-
    findall(_, professor(_, 'doutor'), Doutores),
    length(Doutores, Qtd).

% Regra para listar os nomes dos professores
listar_professores(Lista) :-
    findall(Nome, professor(Nome, _), Lista).

% Regra para listar os nomes dos professores com titulação "doutor"
listar_doutores(Lista) :-
    findall(Nome, professor(Nome, 'doutor'), Lista).

% Regra principal para consultar relatórios
consultar_relatorios :-
    write('Qual relatório deseja saber (1- Quantidade de Professores, 2-quantidade de Doutores, 3-listagem de professores, 4-listagem de doutores)? '),
    read(Opcao),
    relatorio(Opcao).

% Regra para exibir relatórios com base na opção escolhida
relatorio(1) :-
    quantidade_total_professores(Qtd),
    format('O Campus Anápolis tem ~d professor(es).~n', [Qtd]),
    continuar_consulta.

relatorio(2) :-
    quantidade_doutores(Qtd),
    format('O Campus Anápolis tem ~d professor(es) com titulação "doutor".~n', [Qtd]),
    continuar_consulta.

relatorio(3) :-
    listar_professores(Professores),
    format('Os professores são ~w~n', [Professores]),
    continuar_consulta.

relatorio(4) :-
    listar_doutores(Doutores),
    format('Os professores com titulação "doutor" são ~w~n', [Doutores]),
    continuar_consulta.

relatorio(_Opcao) :-
    write('Opção inválida. Tente novamente.~n'),
    consultar_relatorios.

% Regra para perguntar se o usuário deseja consultar mais relatórios
continuar_consulta :-
    write('Deseja consultar mais relatórios ? (s/n): '), read(Resposta),
    (Resposta == 's' -> consultar_relatorios(); true).

% Exemplo de uso
:- initialization(main).

main :-
    write('Bem-vindo ao assistente de consultas sobre professores do Campus Anápolis do IFG.~n'),
    cadastrar_professor,
    consultar_relatorios.
