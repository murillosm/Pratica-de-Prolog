:- dynamic pos/2.
:- dynamic hand/1.
comodo(sala).
comodo(quarto).
comodo(cozinha).
comodo(banheiro).
pos(robo,quarto).
pos(tv,sala).
pos(phone,cozinha).
ande(X):-
	not(comodo(X)),
	!,
	format('Nao existe este comodo no mapa!!').
ande(X):-
	comodo(X),
	retract(pos(robo,O)),
	asserta(pos(robo,X)),
	format('robo andando de ~w para ~w',[O,X]).
pegue(X):-
	(hand(X) ; X = robo),
	!,
	format('Ja possuo ~w',[X]).
pegue(X):-
	pos(robo,Y),
	not(pos(X,Y)),
	!,
	format('Nao estou no mesmo comodo que ~w estah',[X]).
pegue(X):-
	pos(robo,Y),
	pos(X,Y),
	retract(pos(X,Y)),
	asserta(hand(X)),
	format('Peguei ~w ',[X]).
solte(X):-
	not(hand(X)),
	!,
	format('Nao tenho nada na mao!!').
solte(X):-
	hand(X),
	pos(robo,Y),
	asserta(pos(X,Y)),
	retract(hand(X)),
	format('Soltei ~w em ~w',[X,Y]).
