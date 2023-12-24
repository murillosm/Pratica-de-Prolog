aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).


aluno_professor(X, A):- professor(X, Y), funcionario(X, Z), aluno(A, Y), frequenta(A, Z).

associado(Z,X):- funcionario(X, Z); frequenta(X, Z).