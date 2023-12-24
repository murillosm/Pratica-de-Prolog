:- dynamic capital/2.

capitals:- loadfile('capital.pdb'),
        format('Banco de Capitais ~n'),
        repeat,
        perguntar(E),
        responder(E),
        continua(R),
        R=n,
        !,
        savefile(capital, 'capital.pdb').

gets(S):-
        read_line_to_codes(user_input, X),
        name(S, X).

loadfile(F):- 
        exists_file(F), 
        consult(F), 
        true.

savefile(P, F):- 
        tell(F), 
        listing(P), 
        told.        

perguntar(E):- 
        format('~n Qual o estado que deseja saber a capital?'),
        gets(E).

responder(E):- 
    capital(C, E),
    !,
    format('A capital do estado ~w eh ~w', [E, C]).


responder(E):- 
        format('Nao sei, Qual eh'),
        gets(C),
        asserta(capital(C, E)).

continua(R):-
        format('~n Deseja continuar? (s/n)'),
        gets(R).