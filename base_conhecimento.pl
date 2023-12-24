% consult('estados.pdb')
% consult faz com que o prolog leia o arquivo e carregue as regras e fatos nele contidos 

%lista de fatos
%listing(fatos).

% assert/1 - adiciona um fato/regra como ultimo item do predicado
% asserta/1 - adiciona um fato/regra como primeiro item do predicado

% retract/1 - remove da base de conhecimento a primeiro ocorrência do fato/regra que unifica com 
%o termo que é passado como parâmetro remove o primeiro fato que unifica com o termo.
%exemplo: retract(fato(X)) -> vai remover fato(X).

% retractall/1 - remove da base de conhecimento todas as ocorrências do fato/regra que unifica com o termo que é passado como parâmetro;
%exemplo: retractall(genitor(_,bob)) -> vai remover todos os fatos genitor(_,bob).

%abolish/1 - remove da base de conhecimento todas as ocorrências do predicado que unifica com o termo que é passado como parâmetro;

%abolish/2 - semelhante a abolish/1, mas passando o nome da fato/regra e a sua aridade separadamente (são removidos predicados estaticos também).