progenitor(joao,jose).
progenitor(jose,julia).
progenitor(maria,jose).
progenitor(jose,iris).
progenitor(joao,ana).
progenitor(iris,jorge).
masculino(joao).
masculino(jose).
masculino(jorge).
feminino(maria).
feminino(julia).
feminino(ana).
feminino(iris).
filho(X,Y):-progenitor(Y,X),masculino(X).
avoh(X,Y):-feminino(X),progenitor(W,Y),progenitor(X,W).
irm(X,Y):-progenitor(W,X),progenitor(W,Y),X\=Y.
irmao(X,Y):-masculino(X),irm(X,Y).
irma(X,Y):-feminino(X),irm(X,Y).
tio(X,Y):- irmao(X,W), progenitor(W,Y).
tia(X,Y):- irma(X,W), progenitor(W,Y).
antepassado(X,Y):- progenitor(X,Y).
antepassado(X,Y):- progenitor(W,Y),antepassado(X,W).
temfilho(X) :- progenitor(X,_).

