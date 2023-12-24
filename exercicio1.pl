frase(A,C) :- sujeito(A,B), predicado(B,C).
Sujeito(A,C) :- artigo(A,B), substantivo(B,C).
Predicado(A,D) :- verbo(A,B), artigo(B,C), substantivo(C,D).
artigo([o|A],A).
substantivo([katze|A],A).
substantivo([maus|A],A).
verbo([jagte|A],A).




%artigo([die,katze,jagte,die,maus],R).
%sujeito([die,katze,jagte,die,maus],R).
%frase([die,katze,maus,die,jagte],[]).
%frase([die,katze,jagte,die,maus],[]).
%frase([die,maus,jagte,die,katze],[]).
%frase([katze,jagte,maus],[]).


%a) artigo([die,katze, jagte, die,maus],R).
%false.

%b)sujeito([die,katze,jagte,die,maus],R).
%false.

%c)frase([die,katze,maus,die,jagte],[]).
%false.

%d)frase([die,katze,jagte,die,maus],[]).
%false.

%e)frase([die,maus,jagte,die,katze],[]).
%false.

%f)frase([katze,jagte,maus],[]).
%false.