:-dynamic estados/2.
capitais:- loadFile('D:\\programacao\\Prolog\\estados.pdb'),
    format('Banco de capitais ~n'),
    repeat,
    perguntar(E),
    responder(E),
    continua(R),
    R = n,
    !,
    saveFile(capital,'D:\\programacao\\Prolog\\estados.pdb').
loadFile(F):-exists_file(F),consult(F),true.
saveFile(P,F):- tell(F),listing(P),told.
perguntar(E):-format('Qual o estado que deseja sasber a capital ? '),read(E).
responder(E):- capital(E,C),!,format('A capital de ~w eh ~w',[E,C]).
responder(E):-format('nao sei ! qual eh?'),read(C),asserta(capital(E,C)).
continua(R):- format('~n Deseja Continuar ? (s/n)'), read(R).







