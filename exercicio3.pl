id(1,poo).
id(2,programacao_web).
id(3,ed1).
id(4,ed2).
id(5,algoritmo).

/*disciplina(poo).
disciplina(programacao_web).
disciplina(ed1).
disciplina(ed2).
disciplina(algoritmo).*/

disciplina([poo,programacao_web,ed1,ed2,algoritmo]).


pre_requisitos(poo,programacao_web).
pre_requisitos(algoritmo,poo).
pre_requisitos(ed1,ed2).

disciplinas_curso:-
    id(_,Y),
    format('Disciplina: ~w ', [Y]).



consultar_pre(X):-
   pre_requisitos(Y,X),
   format('pre-Requisito: ~w ', [Y]);
   format('Nao tem pre-Requisito!').

nao_tem_pre(X):- pre_requisitos(X,_).




