% Base de fatos
disciplina(101, 'Matemática Discreta').
disciplina(102, 'Programação I').
disciplina(103, 'Estruturas de Dados').
disciplina(104, 'Algoritmos Avançados').
disciplina(105, 'Banco de Dados').
disciplina(106, 'Redes de Computadores').

% Pré-requisitos
pre_requisito(102, 101).  % Programação I requer Matemática Discreta
pre_requisito(103, 102).  % Estruturas de Dados requer Programação I
pre_requisito(104, 103).  % Algoritmos Avançados requer Estruturas de Dados
pre_requisito(105, 102).  % Banco de Dados requer Programação I
pre_requisito(106, 105).  % Redes de Computadores requer Banco de Dados


% Regra para obter a lista de todas as disciplinas
todas_disciplinas(ListaDisciplinas) :- 
    findall(Nome, disciplina(_, Nome), ListaDisciplinas).

% Consulta para mostrar todas as disciplinas
%?- todas_disciplinas(ListaDisciplinas), write('Disciplinas do Curso: ').

%?- disciplina(Codigo, Nome).

pre_requisito_consut(AlgoritmosAvancados, PreRequisito) :-
    disciplina(Codigo, AlgoritmosAvancados),
    pre_requisito(Codigo, PreRequisito).

%?- pre_requisito(AlgoritmosAvancados, PreRequisito).

disciplina_sem_pre_requisitos(Disciplina) :-
    disciplina(Codigo, Disciplina),
    \+ pre_requisito(_, Codigo).

%?- disciplina_sem_pre_requisitos(Disciplina).
