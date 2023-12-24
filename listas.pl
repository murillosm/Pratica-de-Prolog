pertence(X,Y):- Y=[X|_].
pertence(X,Y):- Y=[_|Z],pertence(X,Z),!.
concat2([X|[]],Y,[X|Y]).
concat2([X|K],Y,[X|W]):- concat2(K,Y,W).
remove2(_,[],[]).
remove2(X,[X|W],Z):- remove2(X,W,Z).
remove2(X,[Y|W],[Y|Z]):- X\=Y,remove2(X,W,Z).

pertence(X,Y):- Y=[X|_].
pertence(X,Y):- Y=[_|Z], pertence(X,Z).

intersecao([], _, []).
intersecao([X|Y], Z, W) :- pertence(X, Z), !, intersecao(Y, Z, V), W = [X|V].
intersecao([_|Y], Z, W) :- intersecao(Y, Z, W).